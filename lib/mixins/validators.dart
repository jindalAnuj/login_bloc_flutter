import 'dart:async';

class Validator {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(
          handleData: (email, sink) {
    if (email.contains('@'))
      sink.add(email);
    else
      sink.addError('Not A valid Email');
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length > 3) {
      sink.add(password);
    } else {
      sink.add('Length should be atleast 3');
    }
  });
}
