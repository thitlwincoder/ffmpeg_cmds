import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply telecine process to the video.
///
/// This filter accepts the following options:
class Telecine extends Filter {
  /// Telecine
  Telecine({
    this.firstField,
    this.pattern,
  });

  /// A string of numbers representing the pulldown pattern you wish to apply. The default value is `23`.
  Object? firstField;

  Object? pattern;

  @override
  String get name => 'telecine';

  @override
  Map<String, dynamic> get options =>
      {'first_field': firstField, 'pattern': pattern};
}
