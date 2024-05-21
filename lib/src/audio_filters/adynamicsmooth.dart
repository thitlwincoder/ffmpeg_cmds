import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply dynamic smoothing to input audio stream.
///
/// A description of the accepted options follows.
class Adynamicsmooth extends Filter {
  /// Adynamicsmooth
  Adynamicsmooth({
    this.sensitivity,
    this.basefreq,
  });

  /// Set an amount of sensitivity to frequency fluctations. Default is 2. Allowed range is from 0 to 1e+06.
  Object? sensitivity;

  /// Set a base frequency for smoothing. Default value is 22050. Allowed range is from 2 to 1e+06.
  Object? basefreq;

  @override
  String get name => 'adynamicsmooth';

  @override
  Map<String, dynamic> get options =>
      {'sensitivity': sensitivity, 'basefreq': basefreq};
}
