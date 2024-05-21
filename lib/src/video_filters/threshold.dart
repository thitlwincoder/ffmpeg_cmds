import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply threshold effect to video stream.
///
/// This filter needs four video streams to perform thresholding. First stream is stream we are filtering. Second stream is holding threshold values, third stream is holding min values, and last, fourth stream is holding max values.
///
/// The filter accepts the following option:
///
/// For example if first stream pixel’s component value is less then threshold value of pixel component from 2nd threshold stream, third stream value will picked, otherwise fourth stream pixel component value will be picked.
///
/// Using color source filter one can perform various types of thresholding:
class Threshold extends Filter {
  /// Threshold
  Threshold({this.planes});

  /// Set which planes will be processed, unprocessed planes will be copied. By default value 0xf, all planes will be processed.
  Object? planes;

  @override
  String get name => 'threshold';

  @override
  Map<String, dynamic> get options => {'planes': planes};
}
