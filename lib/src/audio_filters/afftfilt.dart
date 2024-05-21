import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply arbitrary expressions to samples in frequency domain.
class Afftfilt extends Filter {
  /// Afftfilt
  Afftfilt({
    this.real,
    this.imag,
    this.winSize,
    this.winFunc,
    this.overlap,
  });

  /// Set frequency domain real expression for each separate channel separated by ’|’. Default is "re". If the number of input channels is greater than the number of expressions, the last specified expression is used for the remaining output channels.
  Object? real;

  /// Set frequency domain imaginary expression for each separate channel separated by ’|’. Default is "im"./// Each expression in real and imag can contain the following constants and functions:
  /// - `sr` sample rate
  /// - `b` current frequency bin number
  /// - `nb` number of available bins
  /// - `ch` channel number of the current expression
  /// - `chs` number of channels
  /// - `pts` current frame pts
  /// - `re` current real part of frequency bin of current channel
  /// - `im` current imaginary part of frequency bin of current channel
  /// - `real(b, ch)` Return the value of real part of frequency bin at location (bin,channel)
  /// - `imag(b, ch)` Return the value of imaginary part of frequency bin at location (bin,channel)
  Object? imag;

  /// Set window size. Allowed range is from 16 to 131072. Default is `4096`
  Object? winSize;

  /// Set window function./// It accepts the following values:
  /// - `rect`
  /// - `bartlett`
  /// - `hann, hanning`
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
  /// Default is `hann`.
  Object? winFunc;

  /// Set window overlap. If set to 1, the recommended overlap for selected window function will be picked. Default is `0.75`.
  Object? overlap;

  @override
  String get name => 'afftfilt';

  @override
  Map<String, dynamic> get options => {
        'real': real,
        'imag': imag,
        'win_size': winSize,
        'win_func': winFunc,
        'overlap': overlap,
      };
}
