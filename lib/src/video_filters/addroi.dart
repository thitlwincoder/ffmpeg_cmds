import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Mark a region of interest in a video frame.
///
/// The parameters [x], [y], [w] and [h] are expressions, and may contain the following variables:
///
/// `iw` Width of the input frame.
///
/// `ih` Height of the input frame.
class Addroi extends Filter {
  /// Addroi
  Addroi({
    this.x,
    this.y,
    this.w,
    this.h,
    this.qoffset,
    this.clear,
  });

  /// Region distance in pixels from the left edge of the frame.
  Object? x;

  /// Region distance in pixels from the top edge of the frame.
  Object? y;

  /// Region width in pixels.
  Object? w;

  /// Region height in pixels.
  Object? h;

  /// Quantisation offset to apply within the region.
  int? qoffset;

  /// If set to true, remove any existing regions of interest marked on the frame before adding the new one.
  bool? clear;

  @override
  String get name => 'addroi';

  @override
  Map<String, dynamic> get options => {
        'x': x,
        'y': y,
        'w': w,
        'h': h,
        'qoffset': qoffset,
        'clear': clear,
      };
}
