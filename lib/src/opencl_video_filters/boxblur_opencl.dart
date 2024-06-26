import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply a boxblur algorithm to the input video.
///
/// It accepts the following parameters:
///
/// A description of the accepted options follows.
class BoxblurOpencl extends Filter {
  /// BoxblurOpencl
  BoxblurOpencl({
    this.lumaRadius,
    this.lr,
    this.lumaPower,
    this.lp,
    this.chromaRadius,
    this.cr,
    this.chromaPower,
    this.cp,
    this.alphaRadius,
    this.ar,
    this.alphaPower,
    this.ap,
  });

  /// Set an expression for the box radius in pixels used for blurring the corresponding input plane./// The radius value must be a non-negative number, and must not be greater than the value of the expression `min(w,h)/2` for the luma and alpha planes, and of `min(cw,ch)/2` for the chroma planes./// Default value for /// luma_radius is "2". If not specified, /// chroma_radius and /// alpha_radius default to the corresponding value set for /// luma_radius./// The expressions can contain the following constants:
  /// - `w`
  /// - `h` The input width and height in pixels.
  /// - `cw`
  /// - `ch` The input chroma image width and height in pixels.
  /// - `hsub`
  /// - `vsub` The horizontal and vertical chroma subsample values. For example, for the pixel format "yuv422p", hsub is 2 and vsub is 1.
  Object? lumaRadius, lr;

  /// Specify how many times the boxblur filter is applied to the corresponding plane./// Default value for /// luma_power is 2. If not specified, /// chroma_power and /// alpha_power default to the corresponding value set for /// luma_power./// A value of 0 will disable the effect.
  Object? lumaPower, lp;

  Object? chromaRadius, cr;

  Object? chromaPower, cp;

  Object? alphaRadius, ar;

  Object? alphaPower, ap;

  @override
  String get name => 'boxblur_opencl';

  @override
  Map<String, dynamic> get options => {
        'luma_radius': lumaRadius,
        'lr': lr,
        'luma_power': lumaPower,
        'lp': lp,
        'chroma_radius': chromaRadius,
        'cr': cr,
        'chroma_power': chromaPower,
        'cp': cp,
        'alpha_radius': alphaRadius,
        'ar': ar,
        'alpha_power': alphaPower,
        'ap': ap,
      };
}
