part of native_fire;

abstract class NativeStorageMetaModelMethods{
  // -----------------------------------------------------------------------------

  ///

  // --------------------
  /// TESTED : WORKS PERFECT
  static f_d.SettableMetadata? toNativeSettableMetadata({
    required Uint8List bytes,
    required MediaMetaModel? meta,
    Map<String, String>? extraData,
  }){

    /// ASSIGNING NULL TO KEY DELETES PAIR AUTOMATICALLY.
    final Map<String, String?>? _metaDataMap = <String, String?>{
      'name': meta?.name,
      'sizeMB': meta?.sizeMB?.toString(),
      'width': meta?.width?.toString(),
      'height': meta?.height?.toString(),
      'uploadPath':  meta?.uploadPath,
      'fileType': FileMiming.getMimeByType(meta?.fileExt),
    };

    /// ADD OWNERS IDS
    if (Lister.checkCanLoop(meta?.ownersIDs) == true){
      for (final String ownerID in meta!.ownersIDs) {
        _metaDataMap?[ownerID] = 'cool';
      }
    }

    Map<String, String>? _output = MapperSS.cleanNullPairs(
      map: _metaDataMap,
    );

    /// ADD META DATA MAP
    if (meta?.data != null) {
      _output = MapperSS.combineStringStringMap(
        baseMap: _output,
        replaceDuplicateKeys: true,
        insert: meta!.data,
      );
    }

    /// ADD EXTRA DATA MAP
    if (extraData != null) {
      _output = MapperSS.combineStringStringMap(
        baseMap: _output,
        replaceDuplicateKeys: true,
        insert: extraData,
      );
    }

    // blog('meta data are : $_metaDataMap');

    return f_d.SettableMetadata(
      customMetadata: _output,
      // cacheControl: ,
      // contentDisposition: ,
      // contentEncoding: ,
      // contentLanguage: ,
      contentType: FileMiming.getMimeByType(meta?.fileExt),
    );

  }
  // --------------------
  /// TESTED : WORKS PERFECT
  static MediaMetaModel? decipherNativeFullMetaData({
    required f_d.FullMetadata? fullMetadata,
  }){
    MediaMetaModel? _output;

    if (fullMetadata != null){

      _output = MediaMetaModel.decipherMetaMap(
          customMetadata: fullMetadata.customMetadata
      );

    }

    // else {
    //   _output = MediaMetaModel.emptyModel();
    // }

    return _output;
  }
  // -----------------------------------------------------------------------------
}
