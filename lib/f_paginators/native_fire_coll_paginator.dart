part of native_fire;

class NativeFireCollPaginator extends StatefulWidget {
  /// --------------------------------------------------------------------------
  const NativeFireCollPaginator({
    required this.paginationQuery,
    required this.builder,
    required this.paginationController,
    this.streamQuery,
    this.child,
    this.onDataChanged,
    this.onError,
    super.key
  });
  /// --------------------------------------------------------------------------
  final FireQueryModel? paginationQuery;
  final FireQueryModel? streamQuery;
  final Widget? child;
  final PaginationController? paginationController;
  final ValueChanged<List<Map<String, dynamic>>>? onDataChanged;
  final Function(String error)? onError;
  final Widget Function(
      BuildContext context,
      List<Map<String, dynamic>> maps,
      bool isLoading,
      Widget? child
      ) builder;
  /// --------------------------------------------------------------------------
  @override
  _NativeFireCollPaginatorState createState() => _NativeFireCollPaginatorState();
  /// --------------------------------------------------------------------------
}

class _NativeFireCollPaginatorState extends State<NativeFireCollPaginator> {
  // -----------------------------------------------------------------------------
  late PaginationController _paginatorController;
  StreamSubscription? _streamSub;
  final ValueNotifier<List<Map<String, dynamic>>> _streamOldMaps = ValueNotifier<List<Map<String, dynamic>>>([]);
  // -----------------------------------------------------------------------------
  /// --- LOADING
  final ValueNotifier<bool> _loading = ValueNotifier(false);
  // --------------------
  Future<void>  _triggerLoading({required bool setTo}) async {
    setNotifier(
      notifier: _loading,
      mounted: mounted,
      value: setTo,
    );
  }
  // -----------------------------------------------------------------------------
  @override
  void initState() {
    super.initState();

    /// PAGINATOR CONTROLLER
    _initializePaginatorController();

    /// THOSE REFRESH THE WIDGET WHEN ITS REBUILT AGAIN ANAD AGAIN
    _paginatorController.clear();
    setNotifier(
      notifier: _paginatorController.canKeepReading,
      mounted: mounted,
      value: true,
    );

    /// REMOVED
    _paginatorController.scrollController.addListener(_scrollListener);

  }
  // --------------------
  bool _isInit = true;
  @override
  void didChangeDependencies() {
    
    if (_isInit && mounted) {
      _isInit = false; // good

      asyncInSync(() async {

        /// INITIAL PAGINATION READ
        await _readMore();

        /// LISTEN TO STREAM CHANGES
        _initializeStreamListener();

      });

    }

    super.didChangeDependencies();
  }
  // --------------------
  @override
  void didUpdateWidget(covariant NativeFireCollPaginator oldWidget) {
    
    asyncInSync(() async {

      final bool _paginationQueryChanged = FireQueryModel.checkQueriesAreIdentical(
        model1: oldWidget.paginationQuery,
        model2: widget.paginationQuery,
      ) == false;

      final bool _streamQueryChanged = FireQueryModel.checkQueriesAreIdentical(
        model1: oldWidget.streamQuery,
        model2: widget.streamQuery,
      ) == false;
      
      if (
          _paginationQueryChanged == true
          ||
          _streamQueryChanged == true
      ){

        await Future.delayed(const Duration(milliseconds: 100));

        _paginatorController.clear();

        setNotifier(
            notifier: _paginatorController.canKeepReading,
            mounted: mounted,
            value: true,
        );
        
        await _readMore();

      }

    });

    super.didUpdateWidget(oldWidget);
  }
  // --------------------
  @override
  void dispose() {

    _paginatorController.scrollController.removeListener(_scrollListener);

    _streamOldMaps.dispose();
    _loading.dispose();

    /// STATE ARE HANDLED INTERNALLY
    if (widget.paginationController == null){
      _paginatorController.dispose();
    }

    if (_streamSub != null){
      _streamSub?.cancel();
    }

    super.dispose();
  }
  // -----------------------------------------------------------------------------

  /// INITIALIZATION

  // --------------------
  /// TESTED : WORKS PERFECT
  void _initializePaginatorController(){

    /// LISTEN TO PAGINATOR CONTROLLER NOTIFIERS (AddMap - replaceMap - deleteMap - onDataChanged)
    _paginatorController = widget.paginationController ?? PaginationController.initialize(
      mounted: mounted,
      addExtraMapsAtEnd: widget.paginationController?.addExtraMapsAtEnd ?? true,
      idFieldName: widget.paginationQuery?.idFieldName ?? 'id',
      onDataChanged: widget.onDataChanged,
    );

  }
  // --------------------
  /// TESTED : WORKS PERFECT
  void _initializeStreamListener(){

    if (widget.streamQuery != null){

      final Stream<List<Map<String, dynamic>>>? _stream = NativeFire.streamColl(
        queryModel: widget.streamQuery!,
      );

      _streamSub = NativeFireCollStreamer.initializeStreamListener(
        stream: _stream,
        mounted: mounted,
        oldMaps: _streamOldMaps,
        onChanged: (List<Map<String, dynamic>> oldMaps, List<Map<String, dynamic>> newMaps){

          // final List<Map<String, dynamic>> _allMaps = [..._paginatorController.paginatorMaps.value];
          // blog(' === > streamMaps : ${streamMaps.length} maps');

          PaginationController.insertMapsToPaginator(
            mapsToAdd: newMaps,
            controller: _paginatorController.copyWith(
              /// to put stream maps in inverse direction
              addExtraMapsAtEnd: !_paginatorController.addExtraMapsAtEnd,
            ),
            mounted: mounted,
          );

        },
      );

    }

  }
  // -----------------------------------------------------------------------------

  /// LISTENERS

  // --------------------
  void _scrollListener(){

    paginationListener(
      canKeepReading: _paginatorController.canKeepReading,
      controller: _paginatorController.scrollController,
      isPaginating: _paginatorController.isPaginating,
      onPaginate: () async {
        await _readMore();
      },
      mounted: mounted,
    );

  }
  // -----------------------------------------------------------------------------

  /// READING

  // --------------------
  /// TESTED : WORKS PERFECT
  Future<void> _readMore() async {
    
    await _triggerLoading(setTo: true);

    await _readMoreNative();

    await _triggerLoading(setTo: false);

  }
  // --------------------
  /// TESTED : WORKS PERFECT
  Future<void> _readMoreNative() async {

    if (widget.paginationQuery?.coll != null){

      /// CAN KEEP READING
      if (_paginatorController.canKeepReading.value  == true){

        final fd.CollectionReference? _collRef = NativeFire.getCollRef(
          coll: widget.paginationQuery!.coll,
          doc: widget.paginationQuery!.doc,
          subColl: widget.paginationQuery!.subColl,
        );

        final fd.Page<fd.Document>? _page = await _collRef!.get(
          pageSize: widget.paginationQuery?.limit ?? 10,
          nextPageToken: _paginatorController.startAfter.value ?? '',
        );

        final List<Map<String, dynamic>>? _nextMaps = _NativeFireMapper.getMapsFromNativePage(
          page: _page,
          addDocsIDs: true,
        );

        if (Lister.checkCanLoop(_nextMaps) == true){

          PaginationController.insertMapsToPaginator(
            mapsToAdd: _nextMaps,
            controller: _paginatorController,
            mounted: mounted,
          );

          setNotifier(
              notifier: _paginatorController.startAfter,
              mounted: mounted,
              value: _page!.nextPageToken,
          );

        }

        else {
          setNotifier(
              notifier: _paginatorController.canKeepReading,
              mounted: mounted,
              value: false
          );
        }

      }

      /// NO MORE MAPS TO READ
      else {
        blog('FireCollPaginator : _readMore : _canKeepReading : ${_paginatorController.canKeepReading.value} '
            'isPaginating : ${_paginatorController.isPaginating}'
        );
      }

    }

  }
  // -----------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    
    return ValueListenableBuilder(
        valueListenable: _loading,
        child: widget.child,
        builder: (_, bool _isLoading, Widget? child){

          return ValueListenableBuilder(
              valueListenable: _paginatorController.paginatorMaps,
              builder: (_, List<Map<String, dynamic>> maps, Widget? xChild){

                // Mapper.blogMaps(maps, invoker: 'FireCollPaginator : builder');
                return widget.builder(context, maps, _isLoading, child);

              });

        }
        );

  }
  // -----------------------------------------------------------------------------
}
