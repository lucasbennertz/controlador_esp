import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
class HttpRequest {

  Future<void> ligarLed(int numeroLed) async{
    var urlLigar = Uri.http(dotenv.env['URL_ESP']!, "gpio/$numeroLed/on");
    var response = await http.get(urlLigar);
    print(response.body);
  }
  Future<void> desligarLed(int numeroLed) async{
    var urlDesligar = Uri.http(dotenv.env['URL_ESP']!, "gpio/$numeroLed/off");
    var response = await http.get(urlDesligar);
    print(response.body);
  }

}
