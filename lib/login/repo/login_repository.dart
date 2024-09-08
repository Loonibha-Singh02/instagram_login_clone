import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String?> login(String email, String password) async {
  try {
    http.Response response = await http.post(
      Uri.parse("https://reqres.in/api/register"),
      body: {
        'email': email,
        'password': password,
      },
    );

    print("Status Code: ${response.statusCode}"); 
    print("Response Body: ${response.body}"); 

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      return data["token"];
    } else {
      return null;
    }
  } catch (e) {
    print(e.toString());
    return null;
  }
}
