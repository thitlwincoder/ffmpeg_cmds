import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply shear transform to input video.
///
/// This filter supports the following options:
class Shear extends Filter {
  /// Shear
  Shear({
    this.shx,
    this.shy,
    this.fillcolor,
    this.c,
    this.interp,
  });

  /// Shear factor in X-direction. Default value is 0. Allowed range is from -2 to 2.
  Object? shx;

  /// Shear factor in Y-direction. Default value is 0. Allowed range is from -2 to 2.
  Object? shy;

  /// Set the color used to fill the output area not covered by the transformed video. For the general syntax of this option, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#color-syntax). If the special value "none" is selected then no background is printed (useful for example if the background is never shown)./// Default value is "black".
  Object? fillcolor, c;

  /// Set interpolation type. Can be `bilinear` or `nearest`. Default is `bilinear`.
  Object? interp;

  @override
  String get name => 'shear';

  @override
  Map<String, dynamic> get options => {
        'shx': shx,
        'shy': shy,
        'fillcolor': fillcolor,
        'c': c,
        'interp': interp,
      };
}
