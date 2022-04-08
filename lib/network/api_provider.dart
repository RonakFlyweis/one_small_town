import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:training_app/models/sign_up.dart';
import 'package:training_app/ui/login_screen.dart';

class User {
  final String bearerToken;
  User(this.bearerToken);
}

class ApiProvider {
  String baseUrl = 'https://onesmalltowen1999.herokuapp.com/';

  createAccount(SignUp info) async {
    var request = http.MultipartRequest('POST',
        Uri.parse('https://onesmalltowen1999.herokuapp.com/api/user/signup'));
    request.fields.addAll({
      'title': info.title,
      'firstName': info.firstName,
      'secondName': info.secondName,
      'lastName': info.lastname,
      'dob': info.dob,
      'gender': info.gender,
      'physicalAddress': info.physicalAddress,
      'zipCode': info.zipcode,
      'city': info.city,
      'number': info.number,
      'email': info.email,
      'education': info.education,
      'bankName': info.bankName,
      'account_name': info.accountName,
      'sort_code': info.sortCode,
      'account_number': info.accountNumber,
      'skills': info.skills.join(", "),
      'skill': info.performingOrLearningSkills.join(", "),
      'capibleSkills': info.capableSkills.join(", "),
      'state': info.state,
      'password': info.password
    });
    request.files
        .add(await http.MultipartFile.fromPath('idProof', info.idProof));
    request.files.add(
        await http.MultipartFile.fromPath('addressProof', info.addressProof));
    request.files.add(await http.MultipartFile.fromPath('resume', info.resume));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  postMethodUnauthorized(var body, String restUrl) async {
    var url = baseUrl + restUrl;
    body = jsonEncode(body);
    try {
      final http.Response r = await http.post(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json',
          },
          body: body);
      print(r.statusCode);
      return r;
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  getMethod(String restUrl) async {
    var url = baseUrl + restUrl;

    try {
      http.Response r = await http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      print(r.request);
      var body = jsonDecode(r.body);
      return body;
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  postMethodAuthorized(var body, String restUrl) async {
    var url = baseUrl + restUrl;
    body = jsonEncode(body);
    try {
      final http.Response r = await http.post(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer ${user.bearerToken}'
          },
          body: body);
      print(r.statusCode);
      return r;
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
