import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Enhance dialogue in stereo audio.
///
/// This filter accepts stereo input and produce surround (3.0) channels output. The newly produced front center channel have enhanced speech dialogue originally available in both stereo channels. This filter outputs front left and front right channels same as available in stereo input.
///
/// The filter accepts the following options:
class Dialoguenhance extends Filter {
  /// Dialoguenhance
  Dialoguenhance({
    this.original,
    this.enhance,
    this.voice,
  });

  /// Set the original center factor to keep in front center channel output. Allowed range is from 0 to 1. Default value is 1.
  Object? original;

  /// Set the dialogue enhance factor to put in front center channel output. Allowed range is from 0 to 3. Default value is 1.
  Object? enhance;

  /// Set the voice detection factor. Allowed range is from 2 to 32. Default value is 2.
  Object? voice;

  @override
  String get name => 'dialoguenhance';

  @override
  Map<String, dynamic> get options =>
      {'original': original, 'enhance': enhance, 'voice': voice};
}
