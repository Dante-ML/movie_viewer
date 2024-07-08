//Varibles de entorno estaticas para un uso mas sencillo de las misma
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment{
  static String tmdbKey = dotenv.env['MovieDB_key'] ?? 'No hay api key valida';
}