import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Multiband Compress or expand the audio’s dynamic range.
///
/// The input audio is divided into bands using 4th order Linkwitz-Riley IIRs. This is akin to the crossover of a loudspeaker, and results in flat frequency response when absent compander action.
///
/// It accepts the following parameters:
class Mcompand extends Filter {
  /// Mcompand
  Mcompand({this.args});

  /// This option syntax is: attack,decay,\[attack,decay..\] soft-knee points crossover\_frequency \[delay \[initial\_volume \[gain\]\]\] | attack,decay ... For explanation of each item refer to compand filter documentation.
  Object? args;

  @override
  String get name => 'mcompand';

  @override
  Map<String, dynamic> get options => {'args': args};
}
