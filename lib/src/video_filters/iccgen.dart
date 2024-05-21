import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate ICC profiles and attach them to frames.
///
/// This filter accepts the following options:
class Iccgen extends Filter {
  /// Iccgen
  Iccgen({
    this.colorPrimaries,
    this.colorTrc,
    this.force,
  });

  /// Configure the colorspace that the ICC profile will be generated for. The default value of `auto` infers the value from the input frame’s metadata, defaulting to BT.709/sRGB as appropriate./// See the [setparams](file:///D:/Projects/Personal/ffmpeg_cmds/filters.html#setparams) filter for a list of possible values, but note that `unknown` are not valid values for this filter.
  Object? colorPrimaries;

  /// If true, an ICC profile will be generated even if it would overwrite an already existing ICC profile. Disabled by default.
  Object? colorTrc;

  Object? force;

  @override
  String get name => 'iccgen';

  @override
  Map<String, dynamic> get options => {
        'color_primaries': colorPrimaries,
        'color_trc': colorTrc,
        'force': force,
      };
}
