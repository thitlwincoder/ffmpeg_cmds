import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Synthesize a voice utterance using the libflite library.
///
/// Note that versions of the flite library prior to 2.0 are not thread-safe.
///
/// The filter accepts the following options:
class Flite extends Filter {
  /// Flite
  Flite({
    this.listVoices,
    this.nbSamples,
    this.n,
    this.textfile,
    this.text,
    this.voice,
    this.v,
  });

  /// If set to 1, list the names of the available voices and exit immediately. Default value is 0.
  Object? listVoices;

  Object? nbSamples, n;

  /// Set the filename containing the text to speak.
  Object? textfile;

  /// Set the text to speak.
  Object? text;

  Object? voice, v;

  @override
  String get name => 'flite';

  @override
  Map<String, dynamic> get options => {
        'list_voices': listVoices,
        'nb_samples': nbSamples,
        'n': n,
        'textfile': textfile,
        'text': text,
        'voice': voice,
        'v': v,
      };
}
