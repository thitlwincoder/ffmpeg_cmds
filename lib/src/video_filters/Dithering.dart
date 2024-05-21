import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Dithering extends Filter {
  /// Dithering
  Dithering({
    this.dithering,
    this.ditherLutSize,
    this.ditherTemporal,
  });

  /// Dithering method to use. Accepts the following values:
  /// - `none` Disables dithering completely. May result in visible banding.
  /// - `blue` Dither with pseudo-blue noise. This is the default.
  /// - `ordered` Tunable ordered dither pattern.
  /// - `ordered_fixed` Faster ordered dither with a fixed size of 6. Texture-less.
  /// - `white` Dither with white noise. Texture-less.
  Object? dithering;

  /// Dither LUT size, as log base2 between `1` and `8`. Defaults to `6`, corresponding to a LUT size of `64x64`.
  Object? ditherLutSize;

  /// Enables temporal dithering. Disabled by default.
  Object? ditherTemporal;

  @override
  String get name => 'Dithering';

  @override
  Map<String, dynamic> get options => {
        'dithering': dithering,
        'dither_lut_size': ditherLutSize,
        'dither_temporal': ditherTemporal,
      };
}
