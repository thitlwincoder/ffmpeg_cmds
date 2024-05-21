import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Reduce broadband noise in audio samples using Non-Local Means algorithm.
///
/// The filter accepts the following options:
class Anlmdn extends Filter {
  /// Anlmdn
  Anlmdn({
    this.strength,
    this.s,
    this.patch,
    this.p,
    this.research,
    this.r,
    this.output,
    this.o,
    this.smooth,
    this.m,
  });

  Object? strength, s;

  Object? patch, p;

  Object? research, r;

  Object? output, o;

  Object? smooth, m;

  @override
  String get name => 'anlmdn';

  @override
  Map<String, dynamic> get options => {
        'strength': strength,
        's': s,
        'patch': patch,
        'p': p,
        'research': research,
        'r': r,
        'output': output,
        'o': o,
        'smooth': smooth,
        'm': m,
      };
}
