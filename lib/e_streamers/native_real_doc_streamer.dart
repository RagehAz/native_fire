part of super_fire;

class NativeRealDocStreamer extends StatelessWidget {
  /// --------------------------------------------------------------------------
  const NativeRealDocStreamer({
    required this.coll,
    required this.doc,
    required this.builder,
    super.key
  });
  /// --------------------------------------------------------------------------
  final String coll;
  final String doc;
  final Widget Function(bool loading, Map<String, dynamic>? map) builder;
  /// --------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {

    return StreamBuilder<f_d.Event>(
        stream: NativeFirebase.getReal()?.reference().child(coll).child(doc).onValue,
        builder: (_, snapshot){

          final f_d.Event? _event = snapshot.data;
          final f_d.DataSnapshot? _snap = _event?.snapshot;
          final Map<String, dynamic>? _map = _NativeFireMapper.getMapFromDataSnapshot(
            snapshot: _snap,
            addDocID: true,
          );

          return builder(snapshot.connectionState == ConnectionState.waiting, _map);

        }
    );

  }
/// --------------------------------------------------------------------------
}

class NativeRealPathStreamer extends StatelessWidget {
  /// --------------------------------------------------------------------------
  const NativeRealPathStreamer({
    required this.path,
    required this.builder,
    super.key
  });
  /// --------------------------------------------------------------------------
  final String path;
  final Widget Function(bool loading, Map<String, dynamic>? map) builder;
  /// --------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {

    return StreamBuilder<f_d.Event>(
        stream: NativeFirebase.getReal()?.reference().child(path).onValue,
        builder: (_, snapshot){

          final f_d.Event? _event = snapshot.data;
          final f_d.DataSnapshot? _snap = _event?.snapshot;
          final Map<String, dynamic>? _map = _NativeFireMapper.getMapFromDataSnapshot(
            snapshot: _snap,
            addDocID: true,
          );

          return builder(snapshot.connectionState == ConnectionState.waiting, _map);

        }
    );

  }
  /// --------------------------------------------------------------------------
}
