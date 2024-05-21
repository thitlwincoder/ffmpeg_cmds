import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Slowly update darker pixels.
///
/// This filter makes short flashes of light appear longer. This filter accepts the following options:
class Lagfun extends Filter {
  /// Lagfun
  Lagfun({
    this.decay,
    this.planes,
  });

  /// Set factor for decaying. Default is .95. Allowed range is from 0 to 1.
  Object? decay;

  /// Set which planes to filter. Default is all. Allowed range is from 0 to 15.
  Object? planes;

  @override
  String get name => 'lagfun';

  @override
  Map<String, dynamic> get options => {'decay': decay, 'planes': planes};
}
