import 'package:http/http.dart' as http;

void CallServer(Map callData, callback) async
{
  var url = 'https://foxlaby.com/api/smslaby/send';
  var response = await http.post(url, headers: {
    'X-hash-fox': callData['token']
  }, body: {
    'lang': callData['lang'],
    'number': callData['phone_number'],
    'body': callData['body'],
    'mode': callData['mode']
  });

  callback(response);
}