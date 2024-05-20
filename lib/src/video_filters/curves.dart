import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply color adjustments using curves.
///
/// This filter is similar to the Adobe Photoshop and GIMP curves tools. Each component (red, green and blue) has its values defined by N key points tied from each other using a smooth curve. The x-axis represents the pixel values from the input frame, and the y-axis the new pixel values to be set for the output frame.
///
/// By default, a component curve is defined by the two points (0;0) and (1;1). This creates a straight line where each original pixel value is "adjusted" to its own value, which means no change to the image.
///
/// The filter allows you to redefine these two points and add some more. A new curve will be define to pass smoothly through all these new coordinates. The new defined points needs to be strictly increasing over the x-axis, and their x and y values must be in the [0;1] interval. The curve is formed by using a natural or monotonic cubic spline interpolation, depending on the interp option (default: `natural`). The `natural` spline produces a smoother curve in general while the monotonic (`pchip`) spline guarantees the transitions between the specified points to be monotonic. If the computed curves happened to go outside the vector spaces, the values will be clipped accordingly.
class Curves extends Filter {
  /// Curves
  Curves({
    this.preset,
    this.master,
    this.m,
    this.red,
    this.r,
    this.green,
    this.g,
    this.blue,
    this.b,
    this.all,
    this.psfile,
    this.plot,
    this.interp,
  });

  /// Select one of the available color presets. This option can be used in addition to the r, g, b parameters; in this case, the later options takes priority on the preset values. Available presets are:
  ///
  /// - none
  /// - color_negative
  /// - cross_process
  /// - darker
  /// - increase_contrast
  /// - lighter
  /// - linear_contrast
  /// - medium_contrast
  /// - negative
  /// - strong_contrast
  /// - vintage
  ///
  /// Default is `none`.
  String? preset;

  /// Set the master key points. These points will define a second pass mapping. It is sometimes called a "luminance" or "value" mapping. It can be used with r, g, b or all since it acts like a post-processing LUT.
  String? master, m;

  /// Set the key points for the red component.
  String? red, r;

  /// Set the key points for the green component.
  String? green, g;

  /// Set the key points for the blue component.
  String? blue, b;

  /// Set the key points for all components (not including master). Can be used in addition to the other key points component options. In this case, the unset component(s) will fallback on this all setting.
  int? all;

  /// Specify a Photoshop curves file (`.acv`) to import the settings from.
  String? psfile;

  /// Save Gnuplot script of the curves in specified file.
  String? plot;

  /// Specify the kind of interpolation. Available algorithms are:
  ///
  /// `natural` Natural cubic spline using a piece-wise cubic polynomial that is twice continuously differentiable.
  ///
  /// `pchip` Monotonic cubic spline using a piecewise cubic Hermite interpolating polynomial (PCHIP).
  String? interp;

  @override
  String get name => 'curves';

  @override
  Map<String, dynamic> get options => {
        'preset': preset,
        'master': master,
        'm': m,
        'red': red,
        'r': r,
        'green': green,
        'g': g,
        'blue': blue,
        'b': b,
        'all': all,
        'psfile': psfile,
        'plot': plot,
        'interp': interp,
      };
}
