import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert input audio to a video output, representing the audio frequency spectrum.
///
/// The filter accepts the following options:
///
/// The usage is very similar to the showwaves filter; see the examples in that section.
class Showspectrum extends Filter {
  /// Showspectrum
  Showspectrum({
    this.size,
    this.s,
    this.slide,
    this.mode,
    this.color,
    this.scale,
    this.fscale,
    this.saturation,
    this.winFunc,
    this.orientation,
    this.overlap,
    this.gain,
    this.data,
    this.rotation,
    this.start,
    this.stop,
    this.fps,
    this.legend,
    this.drange,
    this.limit,
    this.opacity,
  });

  /// Specify the video size for the output. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is `640x512`.
  Object? size, s;

  /// Specify how the spectrum should slide along the window./// It accepts the following values:
  /// - `replace` the samples start again on the left when they reach the right
  /// - `scroll` the samples scroll from right to left
  /// - `fullframe` frames are only produced when the samples reach the right
  /// - `rscroll` the samples scroll from left to right
  /// - `lreplace` the samples start again on the right when they reach the left

  /// Default value is `replace`.
  Object? slide;

  /// Specify display mode./// It accepts the following values:
  /// - `combined` all channels are displayed in the same row
  /// - `separate` all channels are displayed in separate rows

  /// Default value is ‘/// combined’.
  Object? mode;

  /// Specify display color mode./// It accepts the following values:
  /// - `channel` each channel is displayed in a separate color
  /// - `intensity` each channel is displayed using the same color scheme
  /// - `rainbow` each channel is displayed using the rainbow color scheme
  /// - `moreland` each channel is displayed using the moreland color scheme
  /// - `nebulae` each channel is displayed using the nebulae color scheme
  /// - `fire` each channel is displayed using the fire color scheme
  /// - `fiery` each channel is displayed using the fiery color scheme
  /// - `fruit` each channel is displayed using the fruit color scheme
  /// - `cool` each channel is displayed using the cool color scheme
  /// - `magma` each channel is displayed using the magma color scheme
  /// - `green` each channel is displayed using the green color scheme
  /// - `viridis` each channel is displayed using the viridis color scheme
  /// - `plasma` each channel is displayed using the plasma color scheme
  /// - `cividis` each channel is displayed using the cividis color scheme
  /// - `terrain` each channel is displayed using the terrain color scheme

  /// Default value is ‘/// channel’.
  Object? color;

  /// Specify scale used for calculating intensity color values./// It accepts the following values:
  /// - `lin` linear
  /// - `sqrt` square root, default
  /// - `cbrt` cubic root
  /// - `log` logarithmic
  /// - `4thrt` 4th root
  /// - `5thrt` 5th root

  /// Default value is ‘/// sqrt’.
  Object? scale;

  /// Specify frequency scale./// It accepts the following values:
  /// - `lin` linear
  /// - `log` logarithmic

  /// Default value is ‘/// lin’.
  Object? fscale;

  /// Set saturation modifier for displayed colors. Negative values provide alternative color scheme. `0` is no saturation at all. Saturation must be in \[-10.0, 10.0\] range. Default value is `1`.
  Object? saturation;

  /// Set window function./// It accepts the following values:
  /// - `rect`
  /// - `bartlett`
  /// - `hann`
  /// - `hanning`
  /// - `hamming`
  /// - `blackman`
  /// - `welch`
  /// - `flattop`
  /// - `bharris`
  /// - `bnuttall`
  /// - `bhann`
  /// - `sine`
  /// - `nuttall`
  /// - `lanczos`
  /// - `gauss`
  /// - `tukey`
  /// - `dolph`
  /// - `cauchy`
  /// - `parzen`
  /// - `poisson`
  /// - `bohman`
  /// - `kaiser`
  /// Default value is `hann`.
  Object? winFunc;

  /// Set orientation of time vs frequency axis. Can be `vertical` or `horizontal`. Default is `vertical`.
  Object? orientation;

  /// Set ratio of overlap window. Default value is `0`. When value is `1` overlap is set to recommended size for specific window function currently used.
  Object? overlap;

  /// Set scale gain for calculating intensity color values. Default value is `1`.
  Object? gain;

  /// Set which data to display. Can be `magnitude`, default or `phase`, or unwrapped phase: `uphase`.
  Object? data;

  /// Set color rotation, must be in \[-1.0, 1.0\] range. Default value is `0`.
  Object? rotation;

  /// Set start frequency from which to display spectrogram. Default is `0`.
  Object? start;

  /// Set stop frequency to which to display spectrogram. Default is `0`.
  Object? stop;

  /// Set upper frame rate limit. Default is `auto`, unlimited.
  Object? fps;

  /// Draw time and frequency axes and legends. Default is disabled.
  Object? legend;

  /// Set dynamic range used to calculate intensity color values. Default is 120 dBFS. Allowed range is from 10 to 200.
  Object? drange;

  /// Set upper limit of input audio samples volume in dBFS. Default is 0 dBFS. Allowed range is from -100 to 100.
  Object? limit;

  /// Set opacity strength when using pixel format output with alpha component.
  Object? opacity;

  @override
  String get name => 'showspectrum';

  @override
  Map<String, dynamic> get options => {
        'size': size,
        's': s,
        'slide': slide,
        'mode': mode,
        'color': color,
        'scale': scale,
        'fscale': fscale,
        'saturation': saturation,
        'win_func': winFunc,
        'orientation': orientation,
        'overlap': overlap,
        'gain': gain,
        'data': data,
        'rotation': rotation,
        'start': start,
        'stop': stop,
        'fps': fps,
        'legend': legend,
        'drange': drange,
        'limit': limit,
        'opacity': opacity,
      };
}
