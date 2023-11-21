import 'package:dio/dio.dart';

getData() async {
  Dio dio = Dio();

  Response response = await dio.get('https://f716-185-107-56-40.ngrok.io/',
      options: Options(
        headers: {
          "ngrok-skip-browser-warning": "69420",
        },
      ));
  return response.data;
}
