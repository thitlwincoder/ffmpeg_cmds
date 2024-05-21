import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert input audio to video output representing frequency spectrum using Continuous Wavelet Transform and Morlet wavelet.
///
/// The filter accepts the following options:
class Showcwt extends Filter {
  /// Showcwt
  Showcwt({
    this.size,
    this.s,
    this.rate,
    this.r,
    this.scale,
    this.iscale,
    this.min,
    this.max,
    this.imin,
    this.imax,
    this.logb,
    this.deviation,
    this.pps,
    this.mode,
    this.slide,
    this.direction,
    this.bar,
    this.rotation,
  });

  /// Specify the video size for the output. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is `640x512`.
  Object? size, s;

  /// Set the output frame rate. Default value is `25`.
  Object? rate, r;

  /// Set the frequency scale used. Allowed values are:
  /// - `linear`
  /// - `log`
  /// - `bark`
  /// - `mel`
  /// - `erbs`
  /// - `sqrt`
  /// - `cbrt`
  /// - `qdrt`
  /// - `fm`
  /// Default value is `linear`.
  Object? scale;

  /// Set the intensity scale used. Allowed values are:
  /// - `linear`
  /// - `log`
  /// - `sqrt`
  /// - `cbrt`
  /// - `qdrt`
  /// Default value is `log`.
  Object? iscale;

  /// Set the minimum frequency that will be used in output. Default is `20` Hz.
  Object? min;

  /// Set the maximum frequency that will be used in output. Default is `20000` Hz. The real frequency upper limit depends on input audio’s sample rate and such will be enforced on this value when it is set to value greater than Nyquist frequency.
  Object? max;

  /// Set the minimum intensity that will be used in output.
  Object? imin;

  /// Set the maximum intensity that will be used in output.
  Object? imax;

  /// Set the logarithmic basis for brightness strength when mapping calculated magnitude values to pixel values. Allowed range is from `0` to `1`. Default value is `0.0001`.
  Object? logb;

  /// Set the frequency deviation. Lower values than `1` are more frequency oriented, while higher values than `1` are more time oriented. Allowed range is from `0` to `10`. Default value is `1`.
  Object? deviation;

  /// Set the number of pixel output per each second in one row. Allowed range is from `1` to `1024`. Default value is `64`.
  Object? pps;

  /// Set the output visual mode. Allowed values are:
  /// - `magnitude` Show magnitude.
  /// - `phase` Show only phase.
  /// - `magphase` Show combination of magnitude and phase. Magnitude is mapped to brightness and phase to color.
  /// - `channel` Show unique color per channel magnitude.
  /// - `stereo` Show unique color per stereo difference.

  /// Default value is `magnitude`.
  Object? mode;

  /// Set the output slide method. Allowed values are:
  /// - `replace`
  /// - `scroll`
  /// - `frame`
  Object? slide;

  /// Set the direction method for output slide method. Allowed values are:
  /// - `lr` Direction from left to right.
  /// - `rl` Direction from right to left.
  /// - `ud` Direction from up to down.
  /// - `du` Direction from down to up.
  Object? direction;

  /// Set the ratio of bargraph display to display size. Default is 0.
  Object? bar;

  /// Set color rotation, must be in \[-1.0, 1.0\] range. Default value is `0`.
  Object? rotation;

  @override
  String get name => 'showcwt';

  @override
  Map<String, dynamic> get options => {
        'size': size,
        's': s,
        'rate': rate,
        'r': r,
        'scale': scale,
        'iscale': iscale,
        'min': min,
        'max': max,
        'imin': imin,
        'imax': imax,
        'logb': logb,
        'deviation': deviation,
        'pps': pps,
        'mode': mode,
        'slide': slide,
        'direction': direction,
        'bar': bar,
        'rotation': rotation,
      };
}
