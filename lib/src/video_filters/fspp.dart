import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// It splits (I)DCT into horizontal/vertical passes. Unlike the simple post- processing filter, one of them is performed once per block, not per pixel. This allows for much higher speed.
///
/// The filter accepts the following options:
class Fspp extends Filter {
  /// Fspp
  Fspp({
    this.quality,
    this.qp,
    this.strength,
    this.useBframeQp,
  });

  /// Set quality. This option defines the number of levels for averaging. It accepts an integer in the range 4-5. Default value is `4`.
  Object? quality;

  /// Force a constant quantization parameter. It accepts an integer in range 0-63. If not set, the filter will use the QP from the video stream (if available).
  Object? qp;

  /// Set filter strength. It accepts an integer in range -15 to 32. Lower values mean more details but also more artifacts, while higher values make the image smoother but also blurrier. Default value is `0` − PSNR optimal.
  Object? strength;

  /// Enable the use of the QP from the B-Frames if set to `1`. Using this option may cause flicker since the B-Frames have often larger QP. Default is `0` (not enabled).
  Object? useBframeQp;

  @override
  String get name => 'fspp';

  @override
  Map<String, dynamic> get options => {
        'quality': quality,
        'qp': qp,
        'strength': strength,
        'use_bframe_qp': useBframeQp,
      };
}
