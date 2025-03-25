import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reveria/Models/app_database.dart';

final databaseProvider = Provider<AppDatabase>((ref) => AppDatabase());
