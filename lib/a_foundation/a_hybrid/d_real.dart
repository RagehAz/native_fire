// part of native_fire;
//
// /// => TAMAM
// class Real {
//   // -----------------------------------------------------------------------------
//
//   const Real();
//
//   // -----------------------------------------------------------------------------
//
//   /// STATUS
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<void> goOnline() async {
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true){
//       await OfficialReal.goOnline();
//     }
//     else {
//       await NativeReal.goOnline();
//     }
//
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<void> goOffline() async {
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true){
//       await OfficialReal.goOffline();
//     }
//     else {
//       await NativeReal.goOffline();
//     }
//
//   }
//   // -----------------------------------------------------------------------------
//
//   /// CAN USE REAL
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static bool checkCanUseReal(){
//
//     if (FirebaseInitializer.getRealForceOnlyAuthenticated() == true){
//       return Authing.userHasID();
//     }
//     else {
//       return true;
//     }
//
//   }
//   // -----------------------------------------------------------------------------
//
//   /// CREATE
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<Map<String, dynamic>?> createColl({
//     required String coll,
//     required Map<String, dynamic>? map,
//   }) async {
//     Map<String, dynamic>? _output;
//
//     blog('createColl : wtf : checkCanUseReal() : ${checkCanUseReal()}');
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         _output = await OfficialReal.createColl(
//           coll: coll,
//           map: map,
//         );
//       }
//
//       else {
//         _output = await NativeReal.createColl(
//           coll: coll,
//           map: map,
//         );
//       }
//
//     }
//
//     return _output;
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<Map<String, dynamic>?> createDoc({
//     required String coll,
//     required Map<String, dynamic>? map,
//     String? doc,
//   }) async {
//     Map<String, dynamic>? _output;
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         _output = await OfficialReal.createDoc(
//           coll: coll,
//           map: map,
//           doc: doc,
//         );
//       }
//
//       else {
//         _output = await NativeReal.createDoc(
//           coll: coll,
//           map: map,
//           doc: doc,
//         );
//       }
//
//     }
//
//     return _output;
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<Map<String, dynamic>?> createDocInPath({
//     required String pathWithoutDocName,
//     required Map<String, dynamic>? map,
//     /// random id is assigned as docName if this parameter is not assigned
//     String? doc,
//   }) async {
//     Map<String, dynamic>? _output;
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         _output = await OfficialReal.createDocInPath(
//           pathWithoutDocName: pathWithoutDocName,
//           map: map,
//           doc: doc,
//         );
//       }
//
//       else {
//         _output = await NativeReal.createDocInPath(
//           pathWithoutDocName: pathWithoutDocName,
//           map: map,
//           doc: doc,
//         );
//       }
//
//     }
//
//
//     return _output;
//   }
//   // -----------------------------------------------------------------------------
//
//   /// READ
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<List<Map<String, dynamic>>> readPathMaps({
//     required RealQueryModel? realQueryModel,
//     Map<String, dynamic>? startAfter,
//   }) async {
//     List<Map<String, dynamic>> _output = <Map<String, dynamic>>[];
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         _output = await OfficialReal.readPathMaps(
//           realQueryModel: realQueryModel,
//           startAfter: startAfter,
//         );
//       }
//
//       else {
//         _output = await NativeReal.readPathMaps(
//           realQueryModel: realQueryModel,
//           startAfter: startAfter,
//         );
//       }
//
//     }
//
//     return _output;
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<Map<String, dynamic>?> readPathMap({
//     required String path,
//   }) async {
//     Map<String, dynamic>? _output = {};
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         _output = await OfficialReal.readPathMap(
//           path: path,
//         );
//       }
//
//       else {
//         _output = await NativeReal.readPathMap(
//           path: path,
//         );
//       }
//
//     }
//
//     return _output;
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<dynamic> readPath({
//     /// looks like : 'collName/docName/...'
//     required String path,
//   }) async {
//     dynamic _output;
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         _output = await OfficialReal.readPath(
//           path: path,
//         );
//       }
//
//       else {
//         _output = await NativeReal.readPath(
//           path: path,
//         );
//       }
//
//     }
//
//     return _output;
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<Map<String, dynamic>?> readDoc({
//     required String coll,
//     required String doc,
//   }) async {
//     Map<String, dynamic>? _output;
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         _output = await OfficialReal.readDoc(
//           coll: coll,
//           doc: doc,
//         );
//       }
//
//       else {
//         _output = await NativeReal.readDoc(
//           coll: coll,
//           doc: doc,
//         );
//       }
//
//     }
//
//     return _output;
//   }
//   // -----------------------------------------------------------------------------
//
//   /// UPDATE
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<Map<String, dynamic>?> updateColl({
//     required String coll,
//     required Map<String, dynamic>? map,
//   }) async {
//     Map<String, dynamic>? _output;
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         _output = await OfficialReal.updateColl(
//           coll: coll,
//           map: map,
//         );
//       }
//
//       else {
//         _output = await NativeReal.updateColl(
//           coll: coll,
//           map: map,
//         );
//       }
//
//     }
//
//     return _output;
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<Map<String, dynamic>?> updateDoc({
//     required String coll,
//     required String doc,
//     required Map<String, dynamic>? map,
//   }) async {
//     Map<String, dynamic>? _output;
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         _output = await OfficialReal.updateDoc(
//           coll: coll,
//           doc: doc,
//           map: map,
//         );
//       }
//
//       else {
//         _output = await NativeReal.updateDoc(
//           coll: coll,
//           doc: doc,
//           map: map,
//         );
//       }
//
//     }
//
//     return _output;
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<Map<String, dynamic>?> updateDocInPath({
//     required String path,
//     required Map<String, dynamic>? map,
//   }) async {
//     Map<String, dynamic>? _output;
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         _output = await OfficialReal.updateDocInPath(
//           path: path,
//           map: map,
//         );
//       }
//
//       else {
//         _output = await NativeReal.updateDocInPath(
//           path: path,
//           map: map,
//         );
//       }
//
//     }
//
//     return _output;
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<void> updateDocField({
//     required String coll,
//     required String doc,
//     required String field,
//     required dynamic value,
//   }) async {
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         await OfficialReal.updateDocField(
//           coll: coll,
//           doc: doc,
//           field: field,
//           value: value,
//         );
//       }
//
//       else {
//         await NativeReal.updateDocField(
//           coll: coll,
//           doc: doc,
//           field: field,
//           value: value,
//         );
//       }
//
//     }
//
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<void> incrementDocFields({
//     required String coll,
//     required String doc,
//     required Map<String, int>? incrementationMap,
//     required bool isIncrementing,
//   }) async {
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         await OfficialReal.incrementDocFields(
//           coll: coll,
//           doc: doc,
//           incrementationMap: incrementationMap,
//           isIncrementing: isIncrementing,
//         );
//       }
//
//       else {
//         await NativeReal.incrementDocFields(
//           coll: coll,
//           doc: doc,
//           incrementationMap: incrementationMap,
//           isIncrementing: isIncrementing,
//         );
//       }
//
//     }
//
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<void> incrementPathFields({
//     required String path,
//     required Map<String, int>? incrementationMap,
//     required bool isIncrementing,
//   }) async {
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         await OfficialReal.incrementPathFields(
//           path: path,
//           incrementationMap: incrementationMap,
//           isIncrementing: isIncrementing,
//         );
//       }
//
//       else {
//         await NativeReal.incrementPathFields(
//           path: path,
//           incrementationMap: incrementationMap,
//           isIncrementing: isIncrementing,
//         );
//       }
//
//     }
//
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
//   }) async {
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         await OfficialReal.deleteDoc(
//           coll: coll,
//           doc: doc,
//         );
//       }
//
//       else {
//         await NativeReal.deleteDoc(
//           coll: coll,
//           doc: doc,
//         );
//       }
//
//     }
//
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<void> deleteField({
//     required String coll,
//     required String doc,
//     required String field,
//   }) async {
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         await OfficialReal.deleteField(
//           coll: coll,
//           doc: doc,
//           field: field,
//         );
//       }
//
//       else {
//         await NativeReal.deleteField(
//           coll: coll,
//           doc: doc,
//           field: field,
//         );
//       }
//
//     }
//
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<void> deletePath({
//     required String pathWithDocName,
//   }) async {
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         await OfficialReal.deletePath(
//           pathWithDocName: pathWithDocName,
//         );
//       }
//
//       else {
//         await NativeReal.deletePath(
//           pathWithDocName: pathWithDocName,
//         );
//       }
//
//     }
//
//   }
//   // -----------------------------------------------------------------------------
//
//   /// CLONE
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<void> clonePath({
//     required String oldPath,
//     required String newPath,
//   }) async {
//
//     if (checkCanUseReal() == true){
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         await OfficialReal.clonePath(
//           oldPath: oldPath,
//           newPath: newPath,
//         );
//       }
//
//       else {
//         await NativeReal.clonePath(
//           oldPath: oldPath,
//           newPath: newPath,
//         );
//       }
//
//     }
//
//   }
//   // -----------------------------------------------------------------------------
// }
