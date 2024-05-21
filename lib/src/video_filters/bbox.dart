import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Compute the bounding box for the non-black pixels in the input frame luma plane.
///
/// This filter computes the bounding box containing all the pixels with a luma value greater than the minimum allowed value. The parameters describing the bounding box are printed on the filter log.
///
/// The filter accepts the following option:
class Bbox extends Filter {
  /// Bbox
  Bbox({this.minVal});

  /// Set the minimal luma value. Default is `16`.
  Object? minVal;

  @override
  String get name => 'bbox';

  @override
  Map<String, dynamic> get options => {'min_val': minVal};
}
