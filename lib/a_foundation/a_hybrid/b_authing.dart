// part of native_fire;
//
// /// => TAMAM
// class Authing {
//   // -----------------------------------------------------------------------------
//
//   const Authing();
//
//   // -----------------------------------------------------------------------------
//
//   /// USER ID
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static String? getUserID() {
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true) {
//       return OfficialAuthing.getUserID();
//     }
//
//     else {
//       return NativeAuthing.getUserID();
//     }
//
//   }
//   // -----------------------------------------------------------------------------
//
//   /// ANONYMOUS AUTH
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<AuthModel?> anonymousSignIn({
//     Function(String? error)? onError,
//   }) async {
//     AuthModel? _output;
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true){
//       _output = await OfficialAuthing.anonymousSignIn(
//         onError: onError,
//       );
//     }
//     else {
//       _output = await NativeAuthing.anonymousSignIn(
//         onError: onError,
//       );
//     }
//
//     return _output;
//   }
//   // -----------------------------------------------------------------------------
//
//   /// SIGN OUT
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<bool> signOut({
//     Function(String? error)? onError,
//   }) async {
//     bool _success;
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true){
//       _success = await OfficialAuthing.signOut(
//         onError: onError,
//       );
//     }
//
//     else {
//       _success = await NativeAuthing.signOut(
//         onError: onError,
//       );
//     }
//
//     return _success;
//   }
//   // -----------------------------------------------------------------------------
//
//   /// DELETE USER
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<bool> deleteUser({
//     Function(String? error)? onError,
//   }) async {
//     bool _success;
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true){
//       _success = await OfficialAuthing.deleteUser(
//         onError: onError,
//       );
//     }
//
//     else {
//       _success = await NativeAuthing.deleteUser(
//         onError: onError,
//       );
//     }
//
//     return _success;
//   }
//   // -----------------------------------------------------------------------------
//
//   /// SIGN IN METHOD
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static bool userHasID() {
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true){
//       return OfficialAuthing.userHasID();
//     }
//
//     else {
//       return NativeAuthing.userHasID();
//     }
//
//   }
//   // --------------------
//   /*
//   /// TESTED : WORKS PERFECT
//   static SignInMethod getCurrentSignInMethod(){
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true){
//       return _OfficialAuthing.getCurrentSignInMethod();
//     }
//
//     else {
//       // COULD NOT GET THIS
//       return _NativeAuthing.getCurrentSignInMethod();
//     }
//
//   }
//    */
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<String?> getAuthEmail() async {
//
//       if (FirebaseInitializer.isUsingOfficialPackages() == true){
//         return OfficialAuthing.getAuthEmail();
//       }
//
//       else {
//         return NativeAuthing.getAuthEmail();
//       }
//
//   }
//   // -----------------------------------------------------------------------------
//
//   /// OTHER
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static DateTime? getLastSignIn(){
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true){
//       return OfficialAuthing.getLastSignIn();
//     }
//
//     else {
//       blog('NativeAuthing : getLastSignIn : no implementation for this here');
//       return null;
//     }
//
//   }
//   // -----------------------------------------------------------------------------
// }
//
// /// => TAMAM
// class EmailAuthing {
//   // -----------------------------------------------------------------------------
//
//   const EmailAuthing();
//
//   // -----------------------------------------------------------------------------
//
//   /// SIGN IN
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<AuthModel?> signIn({
//     required String? email,
//     required String? password,
//     Function(String? error)? onError,
//   }) async {
//     AuthModel? _output;
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true){
//       _output = await OfficialEmailAuthing.signIn(
//         email: email,
//         password: password,
//         onError: onError,
//       );
//     }
//
//     else {
//       _output = await NativeEmailAuthing.signIn(
//         email: email,
//         password: password,
//         onError: onError,
//       );
//     }
//
//     return _output;
//   }
//   // -----------------------------------------------------------------------------
//
//   /// REGISTER
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<AuthModel?> register({
//     required String? email,
//     required String? password,
//     required bool autoSendVerificationEmail,
//     Function(String? error)? onError,
//   }) async {
//     AuthModel? _output;
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true){
//       _output = await OfficialEmailAuthing.register(
//         email: email,
//         password: password,
//         autoSendVerificationEmail: autoSendVerificationEmail,
//         onError: onError,
//       );
//     }
//
//     else {
//       _output = await NativeEmailAuthing.register(
//         email: email,
//         password: password,
//         autoSendVerificationEmail: autoSendVerificationEmail,
//         onError: onError,
//       );
//     }
//
//     return _output;
//   }
//   // -----------------------------------------------------------------------------
//
//   /// CHECKERS
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<bool> checkPasswordIsCorrect({
//     required String password,
//     required String email,
//   }) async {
//     bool _output;
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true){
//       _output = await OfficialEmailAuthing.checkPasswordIsCorrect(
//         password: password,
//         email: email,
//       );
//     }
//
//     else {
//       _output = await NativeEmailAuthing.checkPasswordIsCorrect(
//         password: password,
//         email: email,
//       );
//     }
//
//     return _output;
//   }
//   // -----------------------------------------------------------------------------
//
//   /// UPDATE EMAIL - PASSWORD
//
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<bool> updateUserEmail({
//     required String newEmail,
//     Function(String? error)? onError,
//   }) async {
//     bool _success = false;
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true){
//       _success = await OfficialEmailAuthing.updateUserEmail(
//         newEmail: newEmail,
//         onError: onError,
//       );
//     }
//
//     else {
//       blog('NativeAuth.updateUserEmail : updating user email is not supported');
//     }
//
//     return _success;
//   }
//   // --------------------
//   /// TESTED : WORKS PERFECT
//   static Future<bool> updateUserPassword({
//     required String newPassword,
//     Function(String? error)? onError,
//   }) async {
//     bool _success = false;
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true){
//       _success = await OfficialEmailAuthing.updateUserPassword(
//         newPassword: newPassword,
//         onError: onError,
//       );
//     }
//
//     else {
//       blog('NativeAuth.updateUserPassword : updating user password is not supported');
//     }
//
//     return _success;
//   }
//   // -----------------------------------------------------------------------------
//
//   /// PASSWORDS
//
//   // --------------------
//   /// TASK : TEST ME
//   static Future<bool> sendPasswordResetEmail({
//     required String? email,
//     Function(String? error)? onError,
//   }) async {
//     bool _output = false;
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true){
//       _output = await OfficialEmailAuthing.sendPasswordResetEmail(
//         email: email,
//         onError: onError,
//       );
//     }
//
//     else {
//       _output = await NativeEmailAuthing.sendPasswordResetEmail(
//         email: email,
//         onError: onError,
//       );
//     }
//
//     return _output;
//   }
//   // --------------------
//   /// TASK : TEST ME
//   static Future<bool> sendVerificationEmail({
//     required String? email,
//     Function(String? error)? onError,
//   }) async {
//     bool _output = false;
//
//     if (FirebaseInitializer.isUsingOfficialPackages() == true){
//       _output = await OfficialEmailAuthing.sendVerificationEmail(
//         email: email,
//         onError: onError,
//       );
//     }
//
//     else {
//       _output = await NativeEmailAuthing.sendVerificationEmail(
//         email: email,
//         onError: onError,
//       );
//     }
//
//     return _output;
//   }
//   // -----------------------------------------------------------------------------
// }
