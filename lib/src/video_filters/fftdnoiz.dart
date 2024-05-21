import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Denoise frames using 3D FFT (frequency domain filtering).
///
/// The filter accepts the following options:
class Fftdnoiz extends Filter {
  /// Fftdnoiz
  Fftdnoiz({
    this.sigma,
    this.amount,
    this.block,
    this.overlap,
    this.method,
    this.prev,
    this.next,
    this.planes,
  });

  /// Set the noise sigma constant. This sets denoising strength. Default value is 1. Allowed range is from 0 to 30. Using very high sigma with low overlap may give blocking artifacts.
  Object? sigma;

  /// Set amount of denoising. By default all detected noise is reduced. Default value is 1. Allowed range is from 0 to 1.
  Object? amount;

  /// Set size of block in pixels, Default is 32, can be 8 to 256.
  Object? block;

  /// Set block overlap. Default is 0.5. Allowed range is from 0.2 to 0.8.
  Object? overlap;

  /// Set denoising method. Default is `wiener`, can also be `hard`.
  Object? method;

  /// Set number of previous frames to use for denoising. By default is set to 0.
  Object? prev;

  /// Set number of next frames to to use for denoising. By default is set to 0.
  Object? next;

  /// Set planes which will be filtered, by default are all available filtered except alpha.
  Object? planes;

  @override
  String get name => 'fftdnoiz';

  @override
  Map<String, dynamic> get options => {
        'sigma': sigma,
        'amount': amount,
        'block': block,
        'overlap': overlap,
        'method': method,
        'prev': prev,
        'next': next,
        'planes': planes,
      };
}
