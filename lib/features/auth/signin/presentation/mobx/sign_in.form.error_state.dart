import 'package:mobx/mobx.dart';

part 'sign_in.form.error_state.g.dart';

class SignInFormErrorState = _SignInFormErrorState with _$SignInFormErrorState;

abstract class _SignInFormErrorState with Store {
  @observable
  String? mobileNumber;

  @observable
  String? password;
}
