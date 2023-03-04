// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(fieldName) => "${fieldName} is not a valid email";

  static String m1(fieldName) => "${fieldName} is not a valid number";

  static String m2(fieldName) => "${fieldName} can not be empty";

  static String m3(fieldName, requiredMaxLength) =>
      "${fieldName} length should be less than ${requiredMaxLength}";

  static String m4(fieldName, requiredMinLength) =>
      "${fieldName} length should be greater than ${requiredMinLength}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "defaultMessageSubmitBtnTitle":
            MessageLookupByLibrary.simpleMessage("OK"),
        "errorMessageTitle":
            MessageLookupByLibrary.simpleMessage("Error Message"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgo Password"),
        "infoMessageTitle":
            MessageLookupByLibrary.simpleMessage("Info Message"),
        "landingLogout": MessageLookupByLibrary.simpleMessage("Logout"),
        "primaryMessageTitle":
            MessageLookupByLibrary.simpleMessage("Success Message"),
        "signSignInWithFacebook":
            MessageLookupByLibrary.simpleMessage("Sign In With Facebook"),
        "signin": MessageLookupByLibrary.simpleMessage("Signin"),
        "signinOR": MessageLookupByLibrary.simpleMessage("- OR- "),
        "signinPassword": MessageLookupByLibrary.simpleMessage("Password"),
        "signinSignInToContinue":
            MessageLookupByLibrary.simpleMessage("SignIn To Continue"),
        "signinTestApp": MessageLookupByLibrary.simpleMessage("Test App"),
        "signinUserName": MessageLookupByLibrary.simpleMessage("User Name"),
        "singinTheUsernameOrPasswordIsIncorrect":
            MessageLookupByLibrary.simpleMessage(
                "The username or password is incorrect"),
        "successMessageTitle":
            MessageLookupByLibrary.simpleMessage("Success Message"),
        "validationEmailNotValid":
            MessageLookupByLibrary.simpleMessage("Email is not valid"),
        "validationIsEmail": m0,
        "validationIsNumber": m1,
        "validationIsRequired": m2,
        "validationMaxLengthRequired": m3,
        "validationMinLengthRequired": m4,
        "validationPasswordNotEqualsToConfirmPassword":
            MessageLookupByLibrary.simpleMessage(
                "Password is not matched with confirm password."),
        "validationPhoneNumberNotValid":
            MessageLookupByLibrary.simpleMessage("Phone Number is not valid"),
        "warningMessageTitle":
            MessageLookupByLibrary.simpleMessage("Warning Message")
      };
}
