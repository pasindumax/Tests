// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in.form.error_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignInFormErrorState on _SignInFormErrorState, Store {
  final _$mobileNumberAtom = Atom(name: '_SignInFormErrorState.mobileNumber');

  @override
  String? get mobileNumber {
    _$mobileNumberAtom.reportRead();
    return super.mobileNumber;
  }

  @override
  set mobileNumber(String? value) {
    _$mobileNumberAtom.reportWrite(value, super.mobileNumber, () {
      super.mobileNumber = value;
    });
  }

  final _$passwordAtom = Atom(name: '_SignInFormErrorState.password');

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  @override
  String toString() {
    return '''
mobileNumber: ${mobileNumber},
password: ${password}
    ''';
  }
}
