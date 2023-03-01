import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_galaxy/flutter_galaxy.dart';
import 'package:flutter_galaxy/flutter_galaxy_platform_interface.dart';
import 'package:flutter_galaxy/flutter_galaxy_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterGalaxyPlatform
    with MockPlatformInterfaceMixin
    implements FlutterGalaxyPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterGalaxyPlatform initialPlatform = FlutterGalaxyPlatform.instance;

  test('$MethodChannelFlutterGalaxy is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterGalaxy>());
  });

  test('getPlatformVersion', () async {
    FlutterGalaxy flutterGalaxyPlugin = FlutterGalaxy();
    MockFlutterGalaxyPlatform fakePlatform = MockFlutterGalaxyPlatform();
    FlutterGalaxyPlatform.instance = fakePlatform;

    expect(await flutterGalaxyPlugin.getPlatformVersion(), '42');
  });
}
