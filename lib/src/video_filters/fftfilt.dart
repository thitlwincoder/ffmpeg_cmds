import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply arbitrary expressions to samples in frequency domain
class Fftfilt extends Filter {
  /// Fftfilt
  Fftfilt({
    this.dcY,
    this.dcU,
    this.dcV,
    this.weightY,
    this.weightU,
    this.weightV,
    this.eval,
    this.X,
    this.Y,
    this.W,
    this.H,
    this.N,
    this.ws,
    this.hs,
  });

  /// Adjust the dc value (gain) of the luma plane of the image. The filter accepts an integer value in range `0` to `1000`. The default value is set to `0`.
  Object? dcY;

  /// Adjust the dc value (gain) of the 1st chroma plane of the image. The filter accepts an integer value in range `0` to `1000`. The default value is set to `0`.
  Object? dcU;

  /// Adjust the dc value (gain) of the 2nd chroma plane of the image. The filter accepts an integer value in range `0` to `1000`. The default value is set to `0`.
  Object? dcV;

  /// Set the frequency domain weight expression for the luma plane.
  Object? weightY;

  /// Set the frequency domain weight expression for the 1st chroma plane.
  Object? weightU;

  /// Set the frequency domain weight expression for the 2nd chroma plane.
  Object? weightV;

  /// Set when the expressions are evaluated./// It accepts the following values:
  /// - `init` Only evaluate expressions once during the filter initialization.
  /// - `frame` Evaluate expressions for each incoming frame.

  /// Default value is ‘/// init’./// The filter accepts the following variables:
  Object? eval;

  /// The coordinates of the current sample.
  Object? X;

  /// The width and height of the image.
  Object? Y;

  /// The number of input frame, starting from 0.
  Object? W;

  /// The size of FFT array for horizontal and vertical processing.
  Object? H;

  Object? N;

  Object? ws;

  Object? hs;

  @override
  String get name => 'fftfilt';

  @override
  Map<String, dynamic> get options => {
        'dc_Y': dcY,
        'dc_U': dcU,
        'dc_V': dcV,
        'weight_Y': weightY,
        'weight_U': weightU,
        'weight_V': weightV,
        'eval': eval,
        'X': X,
        'Y': Y,
        'W': W,
        'H': H,
        'N': N,
        'WS': ws,
        'HS': hs,
      };
}
