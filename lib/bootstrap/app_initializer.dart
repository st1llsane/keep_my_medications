import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:keep_my_notes/config/get_it_config.dart';
import 'package:keep_my_notes/config/supabase_config.dart';

abstract class AppInitializer {
  static Future<void> initialize() async {
    await setupDependencies();
    await dotenv.load();
    await initSupabase();
  }
}
