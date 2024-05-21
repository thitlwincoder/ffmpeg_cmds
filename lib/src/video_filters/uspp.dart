import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The way this differs from the behavior of spp is that uspp actually encodes & decodes each case with libavcodec Snow, whereas spp uses a simplified intra only 8x8 DCT similar to MJPEG.
///
/// This filter is only available in ffmpeg version 4.4 or earlier.
///
/// The filter accepts the following options:
class Uspp extends Filter {
  /// Uspp
  Uspp({
    this.quality,
    this.qp,
    this.codec,
  });

  /// Set quality. This option defines the number of levels for averaging. It accepts an integer in the range 0-8. If set to `0`, the filter will have no effect. A value of `8` means the higher quality. For each increment of that value the speed drops by a factor of approximately 2. Default value is `3`.
  Object? quality;

  /// Force a constant quantization parameter. If not set, the filter will use the QP from the video stream (if available).
  Object? qp;

  /// Use specified codec instead of snow.
  Object? codec;

  @override
  String get name => 'uspp';

  @override
  Map<String, dynamic> get options =>
      {'quality': quality, 'qp': qp, 'codec': codec};
}
