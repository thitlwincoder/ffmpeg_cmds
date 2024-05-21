import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// High-order parametric multiband equalizer for each channel.
///
/// It accepts the following parameters:
class Anequalizer extends Filter {
  /// Anequalizer
  Anequalizer({
    this.params,
    this.curves,
    this.size,
    this.mgain,
    this.fscale,
    this.colors,
  });

  /// This option string is in format: "cchn f=cf w=w g=g t=f | ..." Each equalizer band is separated by ’|’.
  /// - `chn` Set channel number to which equalization will be applied. If input doesn’t have that channel the entry is ignored.
  /// - `f` Set central frequency for band. If input doesn’t have that frequency the entry is ignored.
  /// - `w` Set band width in Hertz.
  /// - `g` Set band gain in dB.
  /// - `t` Set filter type for band, optional, can be:‘0’Butterworth, this is default.‘1’Chebyshev type 1.‘2’Chebyshev type 2.
  Object? params;

  /// With this option activated frequency response of anequalizer is displayed in video stream.
  Object? curves;

  /// Set video stream size. Only useful if curves option is activated.
  Object? size;

  /// Set max gain that will be displayed. Only useful if curves option is activated. Setting this to a reasonable value makes it possible to display gain which is derived from neighbour bands which are too close to each other and thus produce higher gain when both are activated.
  Object? mgain;

  /// Set frequency scale used to draw frequency response in video output. Can be linear or logarithmic. Default is logarithmic.
  Object? fscale;

  /// Set color for each channel curve which is going to be displayed in video stream. This is list of color names separated by space or by ’|’. Unrecognised or missing colors will be replaced by white color.
  Object? colors;

  @override
  String get name => 'anequalizer';

  @override
  Map<String, dynamic> get options => {
        'params': params,
        'curves': curves,
        'size': size,
        'mgain': mgain,
        'fscale': fscale,
        'colors': colors,
      };
}
