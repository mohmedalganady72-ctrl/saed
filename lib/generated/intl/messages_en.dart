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

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "badRequestError": MessageLookupByLibrary.simpleMessage(
            "Unable to process the request. Please check your input."),
        "cacheError":
            MessageLookupByLibrary.simpleMessage("Failed to load saved data."),
        "conflictError": MessageLookupByLibrary.simpleMessage(
            "Data conflict occurred. Please try again."),
        "defaultError": MessageLookupByLibrary.simpleMessage(
            "Something went wrong. Please try again."),
        "forbiddenError": MessageLookupByLibrary.simpleMessage(
            "You do not have permission to access this content."),
        "hintTextFiledNumberAcadyme":
            MessageLookupByLibrary.simpleMessage("Enter academic number"),
        "hintTextFiledPassword":
            MessageLookupByLibrary.simpleMessage("Enter password"),
        "internalServerError": MessageLookupByLibrary.simpleMessage(
            "An unexpected error occurred. We’re working on it."),
        "lableFildNumberAcadyme":
            MessageLookupByLibrary.simpleMessage("Academic number"),
        "lableFildPassword": MessageLookupByLibrary.simpleMessage("Password"),
        "loadingMessage":
            MessageLookupByLibrary.simpleMessage("Please wait..."),
        "loginTextButton": MessageLookupByLibrary.simpleMessage("Login"),
        "loginTitle": MessageLookupByLibrary.simpleMessage("Login"),
        "noContent": MessageLookupByLibrary.simpleMessage(
            "No data available at the moment."),
        "noInternetError": MessageLookupByLibrary.simpleMessage(
            "No internet connection. Please check your network."),
        "notFoundError": MessageLookupByLibrary.simpleMessage(
            "We couldn’t find what you’re looking for."),
        "noteVerificationNumberAcademic": MessageLookupByLibrary.simpleMessage(
            "Verification is done using your academic number"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "retryAgainMessage": MessageLookupByLibrary.simpleMessage("Try again"),
        "sory": MessageLookupByLibrary.simpleMessage("sory"),
        "timeoutError": MessageLookupByLibrary.simpleMessage(
            "The request took too long. Please try again."),
        "unauthorizedError": MessageLookupByLibrary.simpleMessage(
            "Session expired. Please log in again."),
        "unknownError": MessageLookupByLibrary.simpleMessage(
            "Something went wrong. Please try again later."),
        "validatorFiledNumber": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid number from 0 to 9 only"),
        "validatorNullFiled":
            MessageLookupByLibrary.simpleMessage("Please enter data this field")
      };
}
