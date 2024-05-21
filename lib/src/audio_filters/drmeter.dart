import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Measure audio dynamic range.
///
/// DR values of 14 and higher is found in very dynamic material. DR of 8 to 13 is found in transition material. And anything less that 8 have very poor dynamics and is very compressed.
///
/// The filter accepts the following options:
class Drmeter extends Filter {
  /// Drmeter
  Drmeter({this.length});

  /// Set window length in seconds used to split audio into segments of equal length. Default is 3 seconds.
  Object? length;

  @override
  String get name => 'drmeter';

  @override
  Map<String, dynamic> get options => {'length': length};
}
