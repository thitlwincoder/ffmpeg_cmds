import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Bauer stereo to binaural transformation, which improves headphone listening of stereo audio records.
///
/// It accepts the following parameters:
class Bs2b extends Filter {
  /// Bs2b
  Bs2b({
    this.profile,
    this.fcut,
    this.feed,
  });

  /// Pre-defined crossfeed level.
  /// - `default` Default level (fcut=700, feed=50).
  /// - `cmoy` Chu Moy circuit (fcut=700, feed=60).
  /// - `jmeier` Jan Meier circuit (fcut=650, feed=95).
  Object? profile;

  /// Cut frequency (in Hz).
  Object? fcut;

  /// Feed level (in Hz).
  Object? feed;

  @override
  String get name => 'bs2b';

  @override
  Map<String, dynamic> get options =>
      {'profile': profile, 'fcut': fcut, 'feed': feed};
}
