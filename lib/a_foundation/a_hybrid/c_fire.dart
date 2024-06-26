// part of native_fire;
//
// /// => TAMAM
// class Fire {
//   // -----------------------------------------------------------------------------
//
//   const Fire();
//
//   // -----------------------------------------------------------------------------
//
//   /// CREATE
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<String?> createDoc({
//     required Map<String, dynamic>? input,
//     required String coll,
//     String? doc,
//     String? subColl,
//     String? subDoc,
//   }) async {
//
//     String? _id;
//
//     /// OFFICIAL
//     if (FirebaseInitializer.isUsingOfficialPackages() == true) {
//       _id = await OfficialFire.createDoc(
//         input: input,
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//       );
//     }
//
//     /// NATIVE
//     else {
//       _id = await NativeFire.createDoc(
//         input: input,
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//       );
//     }
//
//     return _id;
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<List<String>> createDocs({
//     required List<Map<String, dynamic>>? inputs,
//     required String coll,
//     String? doc,
//     String? subColl,
//     String? subDoc,
//   }) async {
//     List<String> _output = [];
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true) {
//       _output = await OfficialFire.createDocs(
//         inputs: inputs,
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//       );
//     }
//
//     else {
//
//       _output = await NativeFire.createDocs(
//         inputs: inputs,
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//       );
//     }
//
//     return _output;
//   }
//   // -----------------------------------------------------------------------------
//
//   /// READ
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<Map<String, dynamic>?> readDoc({
//     required String coll,
//     required String doc,
//     String? subColl,
//     String? subDoc,
//   }) async {
//     Map<String, dynamic>? _output;
//
//     /// OFFICIAL
//     if (FirebaseInitializer.isUsingOfficialPackages() == true) {
//       _output = await OfficialFire.readDoc(
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//       );
//     }
//
//     /// NATIVE
//     else {
//       _output = await NativeFire.readDoc(
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//       );
//     }
//
//     return _output;
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<List<Map<String, dynamic>>> readCollDocs({
//     required String coll,
//     required List<String> ids,
//     String? subColl,
//     String? doc,
//   }) async {
//     List<Map<String, dynamic>> _output = [];
//
//     /// OFFICIAL
//     if (FirebaseInitializer.isUsingOfficialPackages() == true) {
//       _output = await OfficialFire.readCollDocs(
//         coll: coll,
//         ids: ids,
//         subColl: subColl,
//         doc: doc,
//       );
//     }
//
//     /// NATIVE
//     else {
//       _output = await NativeFire.readCollDocs(
//         coll: coll,
//         ids: ids,
//         subColl: subColl,
//         doc: doc,
//       );
//     }
//
//     return _output;
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<List<Map<String, dynamic>>> readColl({
//     required FireQueryModel? queryModel,
//     dynamic startAfter,
//     bool addDocSnapshotToEachMap = false,
//     void Function(String)? onError,
//   }) async {
//
//     List<Map<String, dynamic>> _output;
//
//     /// OFFICIAL
//     if (FirebaseInitializer.isUsingOfficialPackages() == true) {
//       _output = await OfficialFire.readColl(
//         queryModel: queryModel,
//         startAfter: startAfter,
//         addDocSnapshotToEachMap: addDocSnapshotToEachMap,
//         onError: onError,
//       );
//     }
//
//     /// NATIVE
//     else {
//       _output = await NativeFire.readColl(
//         queryModel: queryModel,
//         startAfter: startAfter,
//         onError: onError,
//       );
//     }
//
//     return _output;
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<List<Map<String, dynamic>>> readAllColl({
//     required String coll,
//     String? doc,
//     String? subColl,
//   }) async {
//     List<Map<String, dynamic>> _output = [];
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true) {
//       _output = await OfficialFire.readAllColl(
//         coll: coll,
//         doc: doc,
//         subColl: subColl,
//       );
//     }
//
//     else {
//       _output = await NativeFire.readAllColl(
//         coll: coll,
//         doc: doc,
//         subColl: subColl,
//       );
//     }
//
//     return _output;
//   }
//   // -----------------------------------------------------------------------------
//
//   /// STREAMING
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Stream<List<Map<String, dynamic>>>? streamColl({
//     required FireQueryModel queryModel,
//   }) {
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true) {
//       return OfficialFire.streamColl(queryModel: queryModel);
//     }
//
//     else {
//       /// NOTE / CAUTION : DOES NOT LISTEN TO DELETED DOCS
//       return NativeFire.streamColl(queryModel: queryModel);
//     }
//
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Stream<Map<String, dynamic>?>? streamDoc({
//     required String coll,
//     required String doc,
//     String? subColl,
//     String? subDoc,
//   }) {
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true) {
//       return OfficialFire.streamDoc(
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//       );
//     }
//
//     else {
//       return NativeFire.streamDoc(
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//       );
//     }
//
//
//   }
//   // -----------------------------------------------------------------------------
//
//   /// UPDATE
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<void> updateDoc({
//     required Map<String, dynamic>? input,
//     required String coll,
//     required String doc,
//     String? subColl,
//     String? subDoc,
//   }) async {
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true) {
//       await OfficialFire.updateDoc(
//         input: input,
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//       );
//     }
//
//     else {
//       await NativeFire.updateDoc(
//         input: input,
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//       );
//     }
//
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<bool> updateDocField({
//     required dynamic input,
//     required String field,
//     required String coll,
//     required String doc,
//     String? subColl,
//     String? subDoc,
//   }) async {
//     bool _success = false;
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true) {
//       _success = await OfficialFire.updateDocField(
//         input: input,
//         field: field,
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//       );
//     }
//
//     else {
//       _success = await NativeFire.updateDocField(
//         input: input,
//         field: field,
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//       );
//     }
//
//     return _success;
//   }
//   // -----------------------------------------------------------------------------
//
//   /// DELETE
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<void> deleteDoc({
//     required String coll,
//     required String doc,
//     String? subColl,
//     String? subDoc,
//   }) async {
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true) {
//       await OfficialFire.deleteDoc(
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//       );
//     }
//
//     else {
//       await NativeFire.deleteDoc(
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//       );
//     }
//
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<void> deleteDocField({
//     required String coll,
//     required String doc,
//     required String field,
//     String? subColl,
//     String? subDoc,
//   }) async {
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true) {
//       await OfficialFire.deleteDocField(
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//         field: field,
//       );
//     }
//
//     else {
//       await NativeFire.deleteDocField(
//         coll: coll,
//         subColl: subColl,
//         subDoc: subDoc,
//         doc: doc,
//         field: field,
//       );
//     }
//
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<void> deleteColl({
//     required String coll,
//     String? doc,
//     String? subColl,
//     Function(String? docID)? onDeleteDoc,
//     int numberOfIterations = 1000,
//     int numberOfReadsPerIteration = 5,
//   }) async {
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true) {
//       await OfficialFire.deleteColl(
//         coll: coll,
//         doc: doc,
//         subColl: subColl,
//         onDeleteDoc: onDeleteDoc,
//         numberOfIterations: numberOfIterations,
//         numberOfReadsPerIteration: numberOfReadsPerIteration,
//       );
//     }
//
//     else {
//       await NativeFire.deleteColl(
//         coll: coll,
//         doc: doc,
//         subColl: subColl,
//         onDeleteDoc: onDeleteDoc,
//         numberOfIterations: numberOfIterations,
//         numberOfReadsPerIteration: numberOfReadsPerIteration,
//       );
//     }
//
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<void> deleteDocs({
//     required String coll,
//     required List<String> docsIDs,
//     String? doc,
//     String? subColl,
//     Function(String? subDocID)? onDeleteDoc
//   }) async {
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true) {
//       await OfficialFire.deleteDocs(
//         coll: coll,
//         docsIDs: docsIDs,
//         doc: doc,
//         subColl: subColl,
//         onDeleteDoc: onDeleteDoc,
//       );
//     }
//
//     else {
//       await NativeFire.deleteDocs(
//         coll: coll,
//         docsIDs: docsIDs,
//         doc: doc,
//         subColl: subColl,
//         onDeleteDoc: onDeleteDoc,
//       );
//     }
//
//   }
//   // -----------------------------------------------------------------------------
// }
