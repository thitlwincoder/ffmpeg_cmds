import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert input audio to a single video frame, representing the audio frequency spectrum.
///
/// The filter accepts the following options:
class Showspectrumpic extends Filter {
  /// Showspectrumpic
  Showspectrumpic({
    this.size,
    this.s,
    this.mode,
    this.color,
    this.scale,
    this.fscale,
    this.saturation,
    this.winFunc,
    this.orientation,
    this.gain,
    this.legend,
    this.rotation,
    this.start,
    this.stop,
    this.drange,
    this.limit,
    this.opacity,
  });

  /// Specify the video size for the output. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is `4096x2048`.
  Object? size, s;

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

  /// Default value is ‘/// intensity’.
  Object? color;

  /// Specify scale used for calculating intensity color values./// It accepts the following values:
  /// - `lin` linear
  /// - `sqrt` square root, default
  /// - `cbrt` cubic root
  /// - `log` logarithmic
  /// - `4thrt` 4th root
  /// - `5thrt` 5th root

  /// Default value is ‘/// log’.
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

  /// Set scale gain for calculating intensity color values. Default value is `1`.
  Object? gain;

  /// Draw time and frequency axes and legends. Default is enabled.
  Object? legend;

  /// Set color rotation, must be in \[-1.0, 1.0\] range. Default value is `0`.
  Object? rotation;

  /// Set start frequency from which to display spectrogram. Default is `0`.
  Object? start;

  /// Set stop frequency to which to display spectrogram. Default is `0`.
  Object? stop;

  /// Set dynamic range used to calculate intensity color values. Default is 120 dBFS. Allowed range is from 10 to 200.
  Object? drange;

  /// Set upper limit of input audio samples volume in dBFS. Default is 0 dBFS. Allowed range is from -100 to 100.
  Object? limit;

  /// Set opacity strength when using pixel format output with alpha component.
  Object? opacity;

  @override
  String get name => 'showspectrumpic';

  @override
  Map<String, dynamic> get options => {
        'size': size,
        's': s,
        'mode': mode,
        'color': color,
        'scale': scale,
        'fscale': fscale,
        'saturation': saturation,
        'win_func': winFunc,
        'orientation': orientation,
        'gain': gain,
        'legend': legend,
        'rotation': rotation,
        'start': start,
        'stop': stop,
        'drange': drange,
        'limit': limit,
        'opacity': opacity,
      };
}
