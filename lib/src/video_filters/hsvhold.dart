import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Turns a certain HSV range into gray values.
///
/// This filter measures color difference between set HSV color in options and ones measured in video stream. Depending on options, output colors can be changed to be gray or not.
///
/// The filter accepts the following options:
class Hsvhold extends Filter {
  /// Hsvhold
  Hsvhold({
    this.hue,
    this.sat,
    this.val,
    this.similarity,
    this.blend,
  });

  /// Set the hue value which will be used in color difference calculation. Allowed range is from -360 to 360. Default value is 0.
  Object? hue;

  /// Set the saturation value which will be used in color difference calculation. Allowed range is from -1 to 1. Default value is 0.
  Object? sat;

  /// Set the value which will be used in color difference calculation. Allowed range is from -1 to 1. Default value is 0.
  Object? val;

  /// Set similarity percentage with the key color. Allowed range is from 0 to 1. Default value is 0.01./// 0.00001 matches only the exact key color, while 1.0 matches everything.
  Object? similarity;

  /// Blend percentage. Allowed range is from 0 to 1. Default value is 0./// 0.0 makes pixels either fully gray, or not gray at all./// Higher values result in more gray pixels, with a higher gray pixel the more similar the pixels color is to the key color.
  Object? blend;

  @override
  String get name => 'hsvhold';

  @override
  Map<String, dynamic> get options => {
        'hue': hue,
        'sat': sat,
        'val': val,
        'similarity': similarity,
        'blend': blend,
      };
}
