import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Automatic Speech Recognition
///
/// It accepts the following options:
class Asr extends Filter {
  /// Asr
  Asr({
    this.rate,
    this.hmm,
    this.dict,
    this.lm,
    this.lmctl,
    this.lmname,
    this.logfn,
  });

  /// Set sampling rate of input audio. Defaults is `16000`. This need to match speech models, otherwise one will get poor results.
  Object? rate;

  /// Set dictionary containing acoustic model files.
  Object? hmm;

  /// Set pronunciation dictionary.
  Object? dict;

  /// Set language model file.
  Object? lm;

  /// Set language model set.
  Object? lmctl;

  /// Set which language model to use.
  Object? lmname;

  /// Set output for log messages.
  Object? logfn;

  @override
  String get name => 'asr';

  @override
  Map<String, dynamic> get options => {
        'rate': rate,
        'hmm': hmm,
        'dict': dict,
        'lm': lm,
        'lmctl': lmctl,
        'lmname': lmname,
        'logfn': logfn,
      };
}
