import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Adjust exposure of the video stream.
///
/// The filter accepts the following options:
class Exposure extends Filter {
  /// Exposure
  Exposure({
    this.exposure,
    this.black,
  });

  /// Set the exposure correction in EV. Allowed range is from -3.0 to 3.0 EV Default value is 0 EV.
  Object? exposure;

  /// Set the black level correction. Allowed range is from -1.0 to 1.0. Default value is 0.
  Object? black;

  @override
  String get name => 'exposure';

  @override
  Map<String, dynamic> get options => {'exposure': exposure, 'black': black};
}
