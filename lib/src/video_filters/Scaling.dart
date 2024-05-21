import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Scaling extends Filter {
  /// Scaling
  Scaling({
    this.upscaler,
    this.downscaler,
    this.frameMixer,
    this.lutEntries,
    this.antiringing,
    this.sigmoid,
  });

  /// Configure the filter kernel used for upscaling and downscaling. The respective defaults are `spline36` and `mitchell`. For a full list of possible values, pass `help` to these options. The most important values are:
  /// - `none` Forces the use of built-in GPU texture sampling (typically bilinear). Extremely fast but poor quality, especially when downscaling.
  /// - `bilinear` Bilinear interpolation. Can generally be done for free on GPUs, except when doing so would lead to aliasing. Fast and low quality.
  /// - `nearest` Nearest-neighbour interpolation. Sharp but highly aliasing.
  /// - `oversample` Algorithm that looks visually similar to nearest-neighbour interpolation but tries to preserve pixel aspect ratio. Good for pixel art, since it results in minimal distortion of the artistic appearance.
  /// - `lanczos` Standard sinc-sinc interpolation kernel.
  /// - `spline36` Cubic spline approximation of lanczos. No difference in performance, but has very slightly less ringing.
  /// - `ewa_lanczos` Elliptically weighted average version of lanczos, based on a jinc-sinc kernel. This is also popularly referred to as just "Jinc scaling". Slow but very high quality.
  /// - `gaussian` Gaussian kernel. Has certain ideal mathematical properties, but subjectively very blurry.
  /// - `mitchell` Cubic BC spline with parameters recommended by Mitchell and Netravali. Very little ringing.
  Object? upscaler;

  /// Controls the kernel used for mixing frames temporally. The default value is `none`, which disables frame mixing. For a full list of possible values, pass `help` to this option. The most important values are:
  /// - `none` Disables frame mixing, giving a result equivalent to "nearest neighbour" semantics.
  /// - `oversample` Oversamples the input video to create a "Smooth Motion"-type effect: if an output frame would exactly fall on the transition between two video frames, it is blended according to the relative overlap. This is the recommended option whenever preserving the original subjective appearance is desired.
  /// - `mitchell_clamp` Larger filter kernel that smoothly interpolates multiple frames in a manner designed to eliminate ringing and other artefacts as much as possible. This is the recommended option wherever maximum visual smoothness is desired.
  /// - `linear` Linear blend/fade between frames. Especially useful for constructing e.g. slideshows.
  Object? downscaler;

  /// Configures the size of scaler LUTs, ranging from `1` to `256`. The default of `0` will pick libplacebo’s internal default, typically `64`.
  Object? frameMixer;

  /// Enables anti-ringing (for non-EWA filters). The value (between `0.0` and `1.0`) configures the strength of the anti-ringing algorithm. May increase aliasing if set too high. Disabled by default.
  Object? lutEntries;

  /// Enable sigmoidal compression during upscaling. Reduces ringing slightly. Enabled by default.
  Object? antiringing;

  Object? sigmoid;

  @override
  String get name => 'Scaling';

  @override
  Map<String, dynamic> get options => {
        'upscaler': upscaler,
        'downscaler': downscaler,
        'frame_mixer': frameMixer,
        'lut_entries': lutEntries,
        'antiringing': antiringing,
        'sigmoid': sigmoid,
      };
}
