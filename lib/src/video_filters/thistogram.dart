import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Compute and draw a color distribution histogram for the input video across time.
///
/// The computed histogram is a representation of the color component distribution in an image.
///
/// The filter accepts the following options:
class Thistogram extends Filter {
  /// Thistogram
  Thistogram({
    this.width,
    this.w,
    this.displayMode,
    this.d,
    this.levelsMode,
    this.m,
    this.components,
    this.c,
    this.bgopacity,
    this.b,
    this.envelope,
    this.e,
    this.ecolor,
    this.ec,
    this.slide,
  });

  /// Set width of single color component output. Default value is `0`. Value of `0` means width will be picked from input video. This also set number of passed histograms to keep. Allowed range is \[0, 8192\].
  Object? width, w;

  /// Set display mode. It accepts the following values:
  /// - `stack` Per color component graphs are placed below each other.
  /// - `parade` Per color component graphs are placed side by side.
  /// - `overlay` Presents information identical to that in the parade, except that the graphs representing color components are superimposed directly over one another.

  /// Default is `stack`.
  Object? displayMode, d;

  /// Set mode. Can be either `linear`, or `logarithmic`. Default is `linear`.
  Object? levelsMode, m;

  /// Set what color components to display. Default is `7`.
  Object? components, c;

  /// Set background opacity. Default is `0.9`.
  Object? bgopacity, b;

  /// Show envelope. Default is disabled.
  Object? envelope, e;

  /// Set envelope color. Default is `gold`.
  Object? ecolor, ec;

  /// Set slide mode./// Available values for slide is:
  /// - `frame` Draw new frame when right border is reached.
  /// - `replace` Replace old columns with new ones.
  /// - `scroll` Scroll from right to left.
  /// - `rscroll` Scroll from left to right.
  /// - `picture` Draw single picture.

  /// Default is `replace`.
  Object? slide;

  @override
  String get name => 'thistogram';

  @override
  Map<String, dynamic> get options => {
        'width': width,
        'w': w,
        'display_mode': displayMode,
        'd': d,
        'levels_mode': levelsMode,
        'm': m,
        'components': components,
        'c': c,
        'bgopacity': bgopacity,
        'b': b,
        'envelope': envelope,
        'e': e,
        'ecolor': ecolor,
        'ec': ec,
        'slide': slide,
      };
}
