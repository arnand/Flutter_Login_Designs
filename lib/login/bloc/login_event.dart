import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class LoginEvent extends Equatable {
  LoginEvent([List props = const []]) : super(props);
}

class ChangeEmailEvent extends LoginEvent {
  String email;


  ChangeEmailEvent(@required this.email);

  @override
  String toString() {
    return 'ChangeEmailEvent ${email}';
  }
}
class ChangePasswordEvent extends LoginEvent {
  String password;


  ChangePasswordEvent(@required this.password);

  @override
  String toString() {
    return 'ChangePasswordEvent ${password}';
  }
}


class LoginClickedEvent extends LoginEvent {}
