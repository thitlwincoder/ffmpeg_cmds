import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply a boxblur algorithm to the input video.
class BoxBlur extends Filter {
  /// BoxBlur
  BoxBlur({
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

  /// Set an expression for the box radius in pixels used for blurring the corresponding input plane.
  ///
  /// The radius value must be a non-negative number, and must not be greater than the value of the expression `min(w,h)/2` for the luma and alpha planes, and of `min(cw,ch)/2` for the chroma planes.
  ///
  /// Default value for [lumaRadius] is `2`. If not specified, [chromaRadius] and [alphaRadius] default to the corresponding value set for [lumaRadius].
  ///
  /// The expressions can contain the following constants:
  ///
  /// w,h
  /// The input width and height in pixels.
  ///
  /// cw,ch
  /// The input chroma image width and height in pixels.
  ///
  /// hsub,vsub
  /// The horizontal and vertical chroma subsample values. For example, for the pixel format "yuv422p", hsub is 2 and vsub is 1.
  int? lumaRadius, lr, chromaRadius, cr, alphaRadius, ar;

  /// Specify how many times the boxblur filter is applied to the corresponding plane.
  ///
  /// Default value for [lumaPower] is `2`. If not specified, [chromaPower] and [alphaPower] default to the corresponding value set for [lumaPower].
  ///
  /// A value of 0 will disable the effect.
  int? lumaPower, lp, chromaPower, cp, alphaPower, ap;

  @override
  String get name => 'boxblur';

  @override
  Map<String, dynamic> get options => {
        'luma_radius': lumaRadius,
        'lr': lr,
        'chromaRadius': chromaRadius,
        'cr': cr,
        'alphaRadius': alphaRadius,
        'ar': ar,
        'lumaPower': lumaPower,
        'lp': lp,
        'chromaPower': chromaPower,
        'cp': cp,
        'alphaPower': alphaPower,
        'ap': ap,
      };
}
