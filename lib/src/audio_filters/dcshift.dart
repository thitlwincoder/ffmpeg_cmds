import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply a DC shift to the audio.
class Dcshift extends Filter {
  /// Dcshift
  Dcshift({
    this.shift,
    this.limitergain,
  });

  /// Set the DC shift, allowed range is \[-1, 1\]. It indicates the amount to shift the audio.
  Object? shift;

  /// Optional. It should have a value much less than 1 (e.g. 0.05 or 0.02) and is used to prevent clipping.
  Object? limitergain;

  @override
  String get name => 'dcshift';

  @override
  Map<String, dynamic> get options =>
      {'shift': shift, 'limitergain': limitergain};
}
