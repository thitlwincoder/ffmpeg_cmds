import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Calculate normalized windowed cross-correlation between two input audio streams.
///
/// Resulted samples are always between -1 and 1 inclusive. If result is 1 it means two input samples are highly correlated in that selected segment. Result 0 means they are not correlated at all. If result is -1 it means two input samples are out of phase, which means they cancel each other.
///
/// The filter accepts the following options:
class Axcorrelate extends Filter {
  /// Axcorrelate
  Axcorrelate({
    this.size,
    this.algo,
  });

  /// Set size of segment over which cross-correlation is calculated. Default is 256. Allowed range is from 2 to 131072.
  Object? size;

  /// Set algorithm for cross-correlation. Can be `slow` or `fast` or `best`. Default is `best`. Fast algorithm assumes mean values over any given segment are always zero and thus need much less calculations to make. This is generally not true, but is valid for typical audio streams.
  Object? algo;

  @override
  String get name => 'axcorrelate';

  @override
  Map<String, dynamic> get options => {'size': size, 'algo': algo};
}
