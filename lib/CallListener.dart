
import 'package:flutter/services.dart';


class MyCallListener {

  static const MethodChannel _channel = MethodChannel('call_listener_plugin');

  /// Starts listening for incoming calls.
  static Future<bool> startListening() async {
    final bool result = await _channel.invokeMethod('startListening');
    return result;
  }

  /// Stops listening for incoming calls.
  static Future<bool> stopListening() async {
    final bool result = await _channel.invokeMethod('stopListening');
    return result;
  }

  /// (Optional) Fetch status or data from native side.
  static Future<String?> getStatus() async {
    final String? result = await _channel.invokeMethod('getStatus');
    return result;
  }
}
