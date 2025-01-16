part of native_fire;

abstract class NativeFireFinderMethods {
  // -----------------------------------------------------------------------------

  ///

  // --------------------
  /// TASK : TEST ME
  static fd.QueryReference? createNativeQueryByFinder({
    required fd.QueryReference? query,
    required FireFinder? finder,
  }){

    fd.QueryReference? _output = query;

    if (_output != null && finder != null){

      /// IF EQUAL TO
      if (finder.comparison == FireComparison.equalTo) {
        _output = _output.where(finder.field, isEqualTo: finder.value);
      }

      /// IF GREATER THAN
      if (finder.comparison == FireComparison.greaterThan) {
        _output = _output.where(finder.field, isGreaterThan: finder.value);
      }

      /// IF GREATER THAN OR EQUAL
      if (finder.comparison == FireComparison.greaterOrEqualThan) {
        _output = _output.where(finder.field, isGreaterThanOrEqualTo: finder.value);
      }

      /// IF LESS THAN
      if (finder.comparison == FireComparison.lessThan) {
        _output = _output.where(finder.field, isLessThan: finder.value);
      }

      /// IF LESS THAN OR EQUAL
      if (finder.comparison == FireComparison.lessOrEqualThan) {
        _output = _output.where(finder.field, isLessThanOrEqualTo: finder.value);
      }

      /// IF IS NOT EQUAL TO
      if (finder.comparison == FireComparison.notEqualTo) {
        assert(finder.comparison != FireComparison.notEqualTo,
        'Native Fire Implementation does not support FireComparison.notEqualTo');
      }

      /// IF IS NULL
      if (finder.comparison == FireComparison.nullValue) {
        _output = _output.where(finder.field, isNull: finder.value);
      }

      /// IF whereIn
      if (finder.comparison == FireComparison.whereIn) {
        _output = _output.where(finder.field, whereIn: finder.value);
      }

      /// IF whereNotIn
      if (finder.comparison == FireComparison.whereNotIn) {
        assert(finder.comparison != FireComparison.whereNotIn,
        'Native Fire Implementation does not support FireComparison.whereNotIn');
      }

      /// IF array contains
      if (finder.comparison == FireComparison.arrayContains) {
        _output = _output.where(finder.field, arrayContains: finder.value);
      }

      /// IF array contains any
      if (finder.comparison == FireComparison.arrayContainsAny) {
        return _output.where(finder.field, arrayContainsAny: finder.value);
      }
    }

    return _output;
  }
  // --------------------
  /// TASK : TEST ME
  static fd.QueryReference? createNativeCompositeQueryByFinders({
    required fd.QueryReference? query,
    required List<FireFinder>? finders,
  }){

    fd.QueryReference? _output = query;

    if (Lister.checkCanLoop(finders) == true){

      for (final FireFinder finder in finders!){
        _output = createNativeQueryByFinder(
          query: _output,
          finder: finder,
        );
      }

    }

    return _output;
  }
  // -----------------------------------------------------------------------------
}
