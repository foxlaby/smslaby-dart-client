import 'Modules/CallServer.dart';
// ignore: todo
// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class SMSLaby {

  String getHashKey, getLang, getNumber, getEnvironment, getBody;

  bool get isAwesome => true;

  SMSLaby()
  {
    getEnvironment = 'production';
  }

  SMSLaby init(String setHashKey)
  {
    getHashKey = setHashKey;
    return this;
  }

  SMSLaby lang(String setLang) {
    getLang = setLang;
    return this;
  }

  SMSLaby to(String setNumber) {
    getNumber = setNumber;
    return this;
  }

  SMSLaby sandbox(bool mode) {
    if (mode) {
        getEnvironment = 'sandbox';
    }

    return this;
  }

  SMSLaby message(String setBody) {
    getBody = setBody;
    return this;
  }

  void send(callback)
  {
    CallServer({
      'token': getHashKey,
      'lang': getLang,
      'phone_number': getNumber,
      'body': getBody,
      'mode': getEnvironment,
    }, (response){
      callback(response);
    });
  }

}
