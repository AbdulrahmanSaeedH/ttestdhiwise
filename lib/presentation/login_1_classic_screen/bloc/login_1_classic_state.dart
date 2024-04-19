part of 'login_1_classic_bloc.dart';

/// Represents the state of Login1Classic in the application.

// ignore_for_file: must_be_immutable
class Login1ClassicState extends Equatable {
  Login1ClassicState(
      {this.usernameEditTextController,
      this.codeEditTextController,
      this.passwordEditTextController,
      this.login1ClassicModelObj});

  TextEditingController? usernameEditTextController;

  TextEditingController? codeEditTextController;

  TextEditingController? passwordEditTextController;

  Login1ClassicModel? login1ClassicModelObj;

  @override
  List<Object?> get props => [
        usernameEditTextController,
        codeEditTextController,
        passwordEditTextController,
        login1ClassicModelObj
      ];
  Login1ClassicState copyWith({
    TextEditingController? usernameEditTextController,
    TextEditingController? codeEditTextController,
    TextEditingController? passwordEditTextController,
    Login1ClassicModel? login1ClassicModelObj,
  }) {
    return Login1ClassicState(
      usernameEditTextController:
          usernameEditTextController ?? this.usernameEditTextController,
      codeEditTextController:
          codeEditTextController ?? this.codeEditTextController,
      passwordEditTextController:
          passwordEditTextController ?? this.passwordEditTextController,
      login1ClassicModelObj:
          login1ClassicModelObj ?? this.login1ClassicModelObj,
    );
  }
}
