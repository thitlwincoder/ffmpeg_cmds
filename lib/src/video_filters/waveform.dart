import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Video waveform monitor.
///
/// The waveform monitor plots color component intensity. By default luma only. Each column of the waveform corresponds to a column of pixels in the source video.
///
/// It accepts the following options:
class Waveform extends Filter {
  /// Waveform
  Waveform({
    this.mode,
    this.m,
    this.intensity,
    this.i,
    this.mirror,
    this.r,
    this.display,
    this.d,
    this.components,
    this.c,
    this.envelope,
    this.e,
    this.filter,
    this.f,
    this.graticule,
    this.g,
    this.opacity,
    this.o,
    this.flags,
    this.fl,
    this.scale,
    this.s,
    this.bgopacity,
    this.b,
    this.tint0,
    this.t0,
    this.tint1,
    this.t1,
    this.fitmode,
    this.fm,
    this.input,
  });

  /// Can be either `row`, or `column`. Default is `column`. In row mode, the graph on the left side represents color component value 0 and the right side represents value = 255. In column mode, the top side represents color component value = 0 and bottom side represents value = 255.
  Object? mode, m;

  /// Set intensity. Smaller values are useful to find out how many values of the same luminance are distributed across input rows/columns. Default value is `0.04`. Allowed range is \[0, 1\].
  Object? intensity, i;

  /// Set mirroring mode. `0` means unmirrored, `1` means mirrored. In mirrored mode, higher values will be represented on the left side for `row` mode and at the top for `column` mode. Default is `1` (mirrored).
  Object? mirror, r;

  /// Set display mode. It accepts the following values:
  /// - `overlay` Presents information identical to that in the parade, except that the graphs representing color components are superimposed directly over one another.This display mode makes it easier to spot relative differences or similarities in overlapping areas of the color components that are supposed to be identical, such as neutral whites, grays, or blacks.
  /// - `stack` Display separate graph for the color components side by side in row mode or one below the other in column mode.
  /// - `parade` Display separate graph for the color components side by side in column mode or one below the other in row mode.Using this display mode makes it easy to spot color casts in the highlights and shadows of an image, by comparing the contours of the top and the bottom graphs of each waveform. Since whites, grays, and blacks are characterized by exactly equal amounts of red, green, and blue, neutral areas of the picture should display three waveforms of roughly equal width/height. If not, the correction is easy to perform by making level adjustments the three waveforms.

  /// Default is `stack`.
  Object? display, d;

  /// Set which color components to display. Default is 1, which means only luma or red color component if input is in RGB colorspace. If is set for example to 7 it will display all 3 (if) available color components.
  Object? components, c;

  /// Set which graticule to display.
  /// - `none` Do not display graticule.
  /// - `green` Display green graticule showing legal broadcast ranges.
  /// - `orange` Display orange graticule showing legal broadcast ranges.
  /// - `invert` Display invert graticule showing legal broadcast ranges.
  Object? envelope, e;

  /// Set graticule opacity.
  Object? filter, f;

  /// Set graticule flags.
  /// - `numbers` Draw numbers above lines. By default enabled.
  /// - `dots` Draw dots instead of lines.
  Object? graticule, g;

  /// Set scale used for displaying graticule.
  /// - `digital`
  /// - `millivolts`
  /// - `ire`
  /// Default is digital.
  Object? opacity, o;

  /// Set background opacity.
  Object? flags, fl;

  /// Set tint for output. Only used with lowpass filter and when display is not overlay and input pixel formats are not RGB.
  Object? scale, s;

  /// Set sample aspect ratio of video output frames. Can be used to configure waveform so it is not streched too much in one of directions.
  /// - `none` Set sample aspect ration to 1/1.
  /// - `size` Set sample aspect ratio to match input size of video

  /// Default is ‘/// none’.
  Object? bgopacity, b;

  /// Set input formats for filter to pick from. Can be ‘/// all’, for selecting from all available formats, or ‘/// first’, for selecting first available format. Default is ‘/// first’.
  Object? tint0, t0;

  Object? tint1, t1;

  Object? fitmode, fm;

  Object? input;

  @override
  String get name => 'waveform';

  @override
  Map<String, dynamic> get options => {
        'mode': mode,
        'm': m,
        'intensity': intensity,
        'i': i,
        'mirror': mirror,
        'r': r,
        'display': display,
        'd': d,
        'components': components,
        'c': c,
        'envelope': envelope,
        'e': e,
        'filter': filter,
        'f': f,
        'graticule': graticule,
        'g': g,
        'opacity': opacity,
        'o': o,
        'flags': flags,
        'fl': fl,
        'scale': scale,
        's': s,
        'bgopacity': bgopacity,
        'b': b,
        'tint0': tint0,
        't0': t0,
        'tint1': tint1,
        't1': t1,
        'fitmode': fitmode,
        'fm': fm,
        'input': input,
      };
}
