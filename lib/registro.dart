import 'package:device_info_plus/device_info_plus.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<String> obtenerIMEI() async {
  final deviceInfo = DeviceInfoPlugin();
  final androidInfo = await deviceInfo.androidInfo;
  return androidInfo.id;
}

Future<String> registrarDispositivo(String token) async {
  final imei = await obtenerIMEI();
  final supabase = Supabase.instance.client;

  final res = await supabase
      .from('dispositivos')
      .select('estado')
      .eq('imei', imei)
      .eq('token', token)
      .maybeSingle();

  return res?['estado'] ?? 'bloqueado';
}
