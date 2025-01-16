part of native_fire;

abstract class NativeRealQueryMethods {
  // -----------------------------------------------------------------------------

  ///

  // --------------------
  // --------------------
  /// TASK : TEST
  static f_d.Query? createNativeRealQuery({
    required RealQueryModel? queryModel,
    Map<String, dynamic>? lastMap,
    Map<String, dynamic>? endAt,
  }){
    f_d.Query? _query;

    if (queryModel != null){

      _query = NativeReal._getRefByPath(path: queryModel.path);

      /// ORDER BY
      if (queryModel.orderType != null && _query != null){

        /// BY CHILD
        if (queryModel.orderType == RealOrderType.byChild){
          assert(queryModel.fieldNameToOrderBy != null, 'queryModel.fieldNameToOrderBy can not be null');
          // final String _lastNode = ChainPathConverter.getLastPathNode(queryModel.path);
          _query = _query.orderByChild(queryModel.fieldNameToOrderBy!);//queryModel
          // .fieldNameToOrderBy);
        }

        /// BY KEY
        if (queryModel.orderType == RealOrderType.byKey){
          _query = _query.orderByKey();
        }

        /// BY VALUE
        if (queryModel.orderType == RealOrderType.byValue){
          _query = _query.orderByValue();
        }

        /// BY PRIORITY
        if (queryModel.orderType == RealOrderType.byPriority){
          _query = _query.orderByPriority();
        }

      }

      /// QUERY RANGE
      if (queryModel.queryRange != null && lastMap != null && _query != null){

        /// START AFTER
        if (queryModel.queryRange == QueryRange.startAfter){
          _query = _query.startAt(
            lastMap[queryModel.fieldNameToOrderBy],
            key: lastMap[queryModel.idFieldName],
          );
        }

        /// END AT
        if (queryModel.queryRange == QueryRange.endAt){
          _query = _query.endAt(
            lastMap[queryModel.fieldNameToOrderBy],
            key: lastMap[queryModel.idFieldName],
          );
        }

        /// END BEFORE
        if (queryModel.queryRange == QueryRange.endBefore){
          _query = _query.endAt(
            lastMap[queryModel.fieldNameToOrderBy],
            key: lastMap[queryModel.idFieldName],
          );
        }

        /// EQUAL TO
        if (queryModel.queryRange == QueryRange.equalTo){
          _query = _query.equalTo(
            lastMap[queryModel.fieldNameToOrderBy],
            key: lastMap[queryModel.idFieldName],
          );
        }

      }


      /// LIMIT
      if (queryModel.limit != null && _query != null){

        /// GET MAPS FROM BEGINNING OF THE ORDERED LIST
        if (queryModel.readFromBeginningOfOrderedList == true){
          _query = _query.limitToFirst(queryModel.limit!);
        }

        /// GET MAPS FROM THE END OF THE ORDERED LIST
        else {
          _query = _query.limitToLast(queryModel.limit!);
        }

      }

    }

    return _query;
  }
  // -----------------------------------------------------------------------------
}
