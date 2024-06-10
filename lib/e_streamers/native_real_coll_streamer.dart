part of super_fire;

class NativeRealCollStreamer extends StatelessWidget {
  /// --------------------------------------------------------------------------
  const NativeRealCollStreamer({
    required this.coll,
    required this.builder,
    this.limit = 10,
   super.key
  });
  /// --------------------------------------------------------------------------
  final String coll;
  final Widget Function(bool loading, List<Map<String, dynamic>> maps) builder;
  final int limit;
  /// --------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {

    return StreamBuilder<f_d.Event>(
        stream: NativeFirebase.getReal()?.reference().child(coll).limitToFirst(limit).onValue,
        builder: (_, snapshot){

          final f_d.Event? _event = snapshot.data;
          final f_d.DataSnapshot? _snap = _event?.snapshot;

          final List<Map<String, dynamic>> _maps = _NativeFireMapper.getMapsFromDataSnapshot(
            snapshot: _snap,
          );

          return builder(snapshot.connectionState == ConnectionState.waiting, _maps);

        });

  }
  /// --------------------------------------------------------------------------
}
