part of native_fire;

class NativeAuthModelMethods {
  // -----------------------------------------------------------------------------

  const NativeAuthModelMethods();

  // --------------------
  ///
  static AuthModel? getAuthModelFromFiredartUser({
    required fd_u.User? user,
    required SignInMethod? signInMethod,
  }){
    AuthModel? _output;

    if (user != null){

      _output = AuthModel(
        id: user.id,
        name: user.displayName,
        email: user.email,
        phone: null,
        imageURL: user.photoUrl,
        signInMethod: signInMethod,
        data: null,
      );

    }

    return _output;
  }
  // -----------------------------------------------------------------------------
}
