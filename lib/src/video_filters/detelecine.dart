import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply an exact inverse of the telecine operation. It requires a predefined pattern specified using the pattern option which must be the same as that passed to the telecine filter.
///
/// This filter accepts the following options:
class Detelecine extends Filter {
  /// Detelecine
  Detelecine({
    this.firstField,
    this.pattern,
    this.startFrame,
  });

  /// A string of numbers representing the pulldown pattern you wish to apply. The default value is `23`.
  Object? firstField;

  /// A number representing position of the first frame with respect to the telecine pattern. This is to be used if the stream is cut. The default value is `0`.
  Object? pattern;

  Object? startFrame;

  @override
  String get name => 'detelecine';

  @override
  Map<String, dynamic> get options => {
        'first_field': firstField,
        'pattern': pattern,
        'start_frame': startFrame,
      };
}
