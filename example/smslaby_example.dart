import 'package:smslaby/smslaby.dart';

void main() {
  var smslaby = SMSLaby();

  smslaby.init('znnfN05XYtXNvhRoFz9oW8bCVNutTzkj16agqZGoeuI5E2tYCcvw4AK33YuYOuw')
    .lang('ar')
    .to('<numberPhone>')
    .message('Test dart SDK')
    // .sandbox(true)
    .send((response){
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
    });

  // print(sms);
  // print('awesome: ${smslaby.isAwesome}');
}
