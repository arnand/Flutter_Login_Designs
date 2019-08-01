import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_login_desgin/repository/user_repository.dart';
import 'package:flutter_login_desgin/utils/validator.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {

  UserRepository userRepository;
  LoginBloc({@required this.userRepository});
  @override
  LoginState get initialState => LoginState.empty();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if(event is ChangeEmailEvent) {
      yield* _mapChangeEmailEventToState(event.email);
    }    if(event is ChangePasswordEvent) {
      yield* _mapChangePasswordEventToState(event.password);
    }
    // TODO: Add Logic
  }

  Stream<LoginState> _mapChangeEmailEventToState(String email) async* {
    yield currentState.update(isEmailvalid: Validators.isValidEmail(email));
  }

  Stream<LoginState> _mapChangePasswordEventToState(String password) async* {
    yield currentState.update(isPasswordValid: Validators.isValidEmail(password));
  }

  Stream<LoginState> _mapSubmittedEventToState(String email, String password) async* {
    yield LoginState.isSubmitted();
    bool result = await userRepository.loginWithCredentials();
    if(result) {
      yield LoginState.isSuccess();
    }else {
      yield LoginState.isFailer();
    }

  }
}
