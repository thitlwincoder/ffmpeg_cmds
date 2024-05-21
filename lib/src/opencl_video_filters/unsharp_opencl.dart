import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Sharpen or blur the input video.
///
/// It accepts the following parameters:
///
/// All parameters are optional and default to the equivalent of the string ’5:5:1.0:5:5:0.0’.
class UnsharpOpencl extends Filter {
  /// UnsharpOpencl
  UnsharpOpencl({
    this.lumaMsizeX,
    this.lx,
    this.lumaMsizeY,
    this.ly,
    this.lumaAmount,
    this.la,
    this.chromaMsizeX,
    this.cx,
    this.chromaMsizeY,
    this.cy,
    this.chromaAmount,
    this.ca,
  });

  /// Set the luma matrix horizontal size. Range is `\[1, 23\]` and default value is `5`.
  Object? lumaMsizeX, lx;

  /// Set the luma matrix vertical size. Range is `\[1, 23\]` and default value is `5`.
  Object? lumaMsizeY, ly;

  /// Set the luma effect strength. Range is `\[-10, 10\]` and default value is `1.0`./// Negative values will blur the input video, while positive values will sharpen it, a value of zero will disable the effect.
  Object? lumaAmount, la;

  /// Set the chroma matrix horizontal size. Range is `\[1, 23\]` and default value is `5`.
  Object? chromaMsizeX, cx;

  /// Set the chroma matrix vertical size. Range is `\[1, 23\]` and default value is `5`.
  Object? chromaMsizeY, cy;

  /// Set the chroma effect strength. Range is `\[-10, 10\]` and default value is `0.0`./// Negative values will blur the input video, while positive values will sharpen it, a value of zero will disable the effect.
  Object? chromaAmount, ca;

  @override
  String get name => 'unsharp_opencl';

  @override
  Map<String, dynamic> get options => {
        'luma_msize_x': lumaMsizeX,
        'lx': lx,
        'luma_msize_y': lumaMsizeY,
        'ly': ly,
        'luma_amount': lumaAmount,
        'la': la,
        'chroma_msize_x': chromaMsizeX,
        'cx': cx,
        'chroma_msize_y': chromaMsizeY,
        'cy': cy,
        'chroma_amount': chromaAmount,
        'ca': ca,
      };
}
