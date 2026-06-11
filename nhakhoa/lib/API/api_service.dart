import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {

  // Đổi IP theo máy chạy API
  static const String baseUrl =
      // "http://192.168.1.10:3000/api";
      "http://10.0.2.2:3000/api";

  // Lấy danh sách bệnh nhân
  static Future<List<dynamic>> getBenhNhan() async {

    final response = await http.get(
      Uri.parse('$baseUrl/benh-nhan'),
    );

    if (response.statusCode == 200) {

      final data = jsonDecode(response.body);

      return data['data'];

    } else {

      throw Exception("Không lấy được dữ liệu");

    }
  }
}