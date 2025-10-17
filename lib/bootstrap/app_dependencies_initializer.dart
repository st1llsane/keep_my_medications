import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:keep_my_notes/configs/get_it_config.dart';
import 'package:keep_my_notes/configs/supabase_config.dart';

abstract class AppDependenciesInitializer {
  static Future<void> initialize() async {
    await setupDependencies();
    await dotenv.load();
    await initSupabase();
  }
}
