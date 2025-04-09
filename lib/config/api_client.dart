import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:keep_my_notes/shared/globals.dart';

abstract class ApiClient {
  static final String _baseUrl = dotenv.env['DB_URL'] ?? '';

  // static Future<http.Response> get() => http.get(Uri.http(_baseUrl));
  static Future<List> get() async => await supabase.from('notes').select();
  static Future<http.Response> post({required Object body}) =>
      http.post(Uri.http(_baseUrl), body: body);
}
