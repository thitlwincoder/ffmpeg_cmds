import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Slow down filtering to match real time approximately.
///
/// They accept the following options:
class Realtime002cArealtime extends Filter {
  /// Realtime002cArealtime
  Realtime002cArealtime({
    this.limit,
    this.speed,
  });

  /// Time limit for the pauses. Any pause longer than that will be considered a timestamp discontinuity and reset the timer. Default is 2 seconds.
  Object? limit;

  /// Speed factor for processing. The value must be a float larger than zero. Values larger than 1.0 will result in faster than realtime processing, smaller will slow processing down. The limit is automatically adapted accordingly. Default is 1.0./// A processing speed faster than what is possible without these filters cannot be achieved.
  Object? speed;

  @override
  String get name => 'realtime_002c-arealtime';

  @override
  Map<String, dynamic> get options => {'limit': limit, 'speed': speed};
}
