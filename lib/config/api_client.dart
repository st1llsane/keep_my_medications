import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

abstract class ApiClient {
  static final _apiClient = http.Client();
  static final String _baseUrl = dotenv.env['DB_URL'] ?? '';

  static Future<http.Response> get() => _apiClient.get(Uri.parse(_baseUrl));
}
