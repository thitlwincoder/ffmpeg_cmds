import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Temporally interleave frames from several inputs.
///
/// These filters read frames from several inputs and send the oldest queued frame to the output.
///
/// Input streams must have well defined, monotonically increasing frame timestamp values.
///
/// In order to submit one frame to output, these filters need to enqueue at least one frame for each input, so they cannot work in case one input is not yet terminated and will not receive incoming frames.
///
/// Also, depending on inputs synchronization, the filters will drop frames in case one input receives more frames than the other ones, and the queue is already filled.
///
/// These filters accept the following options:
class Interleave002cAinterleave extends Filter {
  /// Interleave002cAinterleave
  Interleave002cAinterleave({
    this.nbInputs,
    this.n,
    this.duration,
  });

  /// Set the number of different inputs, it is 2 by default.
  Object? nbInputs, n;

  /// How to determine the end-of-stream.
  /// - `longest` The duration of the longest input. (default)
  /// - `shortest` The duration of the shortest input.
  /// - `first` The duration of the first input.
  Object? duration;

  @override
  String get name => 'interleave_002c-ainterleave';

  @override
  Map<String, dynamic> get options =>
      {'nb_inputs': nbInputs, 'n': n, 'duration': duration};
}
