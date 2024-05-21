import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply Contrast Adaptive Sharpen filter to video stream.
///
/// The filter accepts the following options:
class Cas extends Filter {
  /// Cas
  Cas({
    this.strength,
    this.planes,
  });

  /// Set the sharpening strength. Default value is 0.
  Object? strength;

  /// Set planes to filter. Default value is to filter all planes except alpha plane.
  Object? planes;

  @override
  String get name => 'cas';

  @override
  Map<String, dynamic> get options => {'strength': strength, 'planes': planes};
}
