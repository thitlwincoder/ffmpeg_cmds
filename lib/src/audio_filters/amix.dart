import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Mixes multiple audio inputs into a single output.
///
/// It accepts the following parameters:
class Amix extends Filter {
  /// Amix
  Amix({
    this.inputs,
    this.duration,
    this.dropoutTransition,
    this.weights,
    this.normalize,
  });

  /// The number of inputs. If unspecified, it defaults to 2.
  Object? inputs;

  /// How to determine the end-of-stream.
  /// - `longest` The duration of the longest input. (default)
  /// - `shortest` The duration of the shortest input.
  /// - `first` The duration of the first input.
  Object? duration;

  /// The transition time, in seconds, for volume renormalization when an input stream ends. The default value is 2 seconds.
  Object? dropoutTransition;

  /// Specify weight of each input audio stream as a sequence of numbers separated by a space. If fewer weights are specified compared to number of inputs, the last weight is assigned to the remaining inputs. Default weight for each input is 1.
  Object? weights;

  /// Always scale inputs instead of only doing summation of samples. Beware of heavy clipping if inputs are not normalized prior or after filtering by this filter if this option is disabled. By default is enabled.
  Object? normalize;

  @override
  String get name => 'amix';

  @override
  Map<String, dynamic> get options => {
        'inputs': inputs,
        'duration': duration,
        'dropout_transition': dropoutTransition,
        'weights': weights,
        'normalize': normalize,
      };
}
