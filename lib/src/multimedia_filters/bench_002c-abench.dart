import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Benchmark part of a filtergraph.
///
/// The filter accepts the following options:
class Bench002cAbench extends Filter {
  /// Bench002cAbench
  Bench002cAbench({this.action});

  /// Start or stop a timer./// Available values are:
  /// - `start` Get the current time, set it as frame metadata (using the key lavfi.bench.start_time), and forward the frame to the next filter.
  /// - `stop` Get the current time and fetch the lavfi.bench.start_time metadata from the input frame metadata to get the time difference. Time difference, average, maximum and minimum time (respectively t, avg, max and min) are then printed. The timestamps are expressed in seconds.
  Object? action;

  @override
  String get name => 'bench_002c-abench';

  @override
  Map<String, dynamic> get options => {'action': action};
}
