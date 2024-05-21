import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Fill borders of the input video, without changing video stream dimensions. Sometimes video can have garbage at the four edges and you may not want to crop video input to keep size multiple of some number.
///
/// This filter accepts the following options:
class Fillborders extends Filter {
  /// Fillborders
  Fillborders({
    this.left,
    this.right,
    this.top,
    this.bottom,
    this.mode,
    this.color,
  });

  /// Number of pixels to fill from left border.
  Object? left;

  /// Number of pixels to fill from right border.
  Object? right;

  /// Number of pixels to fill from top border.
  Object? top;

  /// Number of pixels to fill from bottom border.
  Object? bottom;

  /// Set fill mode./// It accepts the following values:
  /// - `smear` fill pixels using outermost pixels
  /// - `mirror` fill pixels using mirroring (half sample symmetric)
  /// - `fixed` fill pixels with constant value
  /// - `reflect` fill pixels using reflecting (whole sample symmetric)
  /// - `wrap` fill pixels using wrapping
  /// - `fade` fade pixels to constant value
  /// - `margins` fill pixels at top and bottom with weighted averages pixels near borders

  /// Default is smear.
  Object? mode;

  /// Set color for pixels in fixed or fade mode. Default is black.
  Object? color;

  @override
  String get name => 'fillborders';

  @override
  Map<String, dynamic> get options => {
        'left': left,
        'right': right,
        'top': top,
        'bottom': bottom,
        'mode': mode,
        'color': color,
      };
}
