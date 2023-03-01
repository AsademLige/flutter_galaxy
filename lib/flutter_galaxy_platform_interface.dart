import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_galaxy_method_channel.dart';

abstract class FlutterGalaxyPlatform extends PlatformInterface {
  /// Constructs a FlutterGalaxyPlatform.
  FlutterGalaxyPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterGalaxyPlatform _instance = MethodChannelFlutterGalaxy();

  /// The default instance of [FlutterGalaxyPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterGalaxy].
  static FlutterGalaxyPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterGalaxyPlatform] when
  /// they register themselves.
  static set instance(FlutterGalaxyPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
