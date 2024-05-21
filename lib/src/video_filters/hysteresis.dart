import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Grow first stream into second stream by connecting components. This makes it possible to build more robust edge masks.
///
/// This filter accepts the following options:
class Hysteresis extends Filter {
  /// Hysteresis
  Hysteresis({
    this.planes,
    this.threshold,
  });

  /// Set which planes will be processed as bitmap, unprocessed planes will be copied from first stream. By default value 0xf, all planes will be processed.
  Object? planes;

  /// Set threshold which is used in filtering. If pixel component value is higher than this value filter algorithm for connecting components is activated. By default value is 0.
  Object? threshold;

  @override
  String get name => 'hysteresis';

  @override
  Map<String, dynamic> get options =>
      {'planes': planes, 'threshold': threshold};
}
