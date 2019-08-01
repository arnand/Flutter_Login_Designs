import 'package:meta/meta.dart';

class LoginState {
  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool isSubmitted = false;
  bool isSuccess = false;
  bool isFailer = false;

  LoginState(
      {@required this.isEmailValid,
      @required this.isPasswordValid,
      @required this.isSubmitted,
      @required this.isSuccess,
      @required this.isFailer});

  factory LoginState.empty() {
    return LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmitted: false,
        isFailer: false,
        isSuccess: false);
  }

  factory LoginState.loading() {
    return LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmitted: true,
        isFailer: false,
        isSuccess: false);
  }

  LoginState update({
    bool isEmailvalid,
    bool isPasswordValid,}
  ) {
    return copyWith(
        isEmailValid: isEmailvalid,
        isPassValid: isPasswordValid,
        isSubmitted: false,
        isFailer: false,
        isSuccess: false);
  }

  factory LoginState.isEmailValid() {
    return LoginState(
        isEmailValid: true,
        isPasswordValid: false,
        isSubmitted: false,
        isFailer: false,
        isSuccess: false);
  }

  factory LoginState.isPasswordValid() {
    return LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmitted: false,
        isFailer: false,
        isSuccess: false);
  }

  factory LoginState.isSubmitted() {
    return LoginState(
        isEmailValid: false,
        isPasswordValid: false,
        isSubmitted: true,
        isFailer: false,
        isSuccess: false);
  }

  factory LoginState.isSuccess() {
    return LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmitted: false,
        isFailer: false,
        isSuccess: true);
  }

  factory LoginState.isFailer() {
    return LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmitted: false,
        isFailer: true,
        isSuccess: false);
  }

  LoginState copyWith({
    bool isEmailValid,
    bool isPassValid,
    bool isSubmitted,
    bool isFailer,
    bool isSuccess,
  }) {
    return LoginState(
      isEmailValid: isEmailValid ?? this.isEmailValid,
      isPasswordValid: isPassValid ?? this.isPasswordValid,
      isSubmitted: isSubmitted ?? this.isSubmitted,
      isFailer: isFailer ?? this.isFailer,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
