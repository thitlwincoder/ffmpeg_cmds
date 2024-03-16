import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Suppress a TV station logo by a simple interpolation of the surrounding pixels. Just set a rectangle covering the logo and watch it disappear (and sometimes something even uglier appear - your mileage may vary).
class Delogo implements Filter {
  /// Delogo
  Delogo({
    this.x,
    this.y,
    this.w,
    this.h,
    this.show,
  });

  /// Specify the top left corner coordinates of the logo. They must be specified.
  int? x, y;

  /// Specify the width and height of the logo to clear. They must be specified.
  int? w, h;

  /// When set to 1, a green rectangle is drawn on the screen to simplify finding the right [x], [y], [w], and [h] parameters. The default value is `0`.
  ///
  /// The rectangle is drawn on the outermost pixels which will be (partly) replaced with interpolated values. The values of the next pixels immediately outside this rectangle in each direction will be used to compute the interpolated pixel values inside the rectangle.
  int? show;

  @override
  String get name => 'delogo';

  @override
  Map<String, dynamic> get options => {
        'x': x,
        'y': y,
        'w': w,
        'h': h,
        'show': show,
      };
}
