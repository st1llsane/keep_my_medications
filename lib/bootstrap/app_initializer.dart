import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:keep_my_notes/config/supabase.dart';

abstract class AppInitializer {
  static Future<void> initialize() async {
    await dotenv.load();
    await initSupabase();
  }
}
