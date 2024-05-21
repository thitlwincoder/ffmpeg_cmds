import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Mix several video input streams into one video stream.
///
/// A description of the accepted options follows.
class Mix extends Filter {
  /// Mix
  Mix({
    this.inputs,
    this.weights,
    this.scale,
    this.planes,
    this.duration,
  });

  /// The number of inputs. If unspecified, it defaults to 2.
  Object? inputs;

  /// Specify weight of each input video stream as sequence. Each weight is separated by space. If number of weights is smaller than number of frames last specified weight will be used for all remaining unset weights.
  Object? weights;

  /// Specify scale, if it is set it will be multiplied with sum of each weight multiplied with pixel values to give final destination pixel value. By default scale is auto scaled to sum of weights.
  Object? scale;

  /// Set which planes to filter. Default is all. Allowed range is from 0 to 15.
  Object? planes;

  /// Specify how end of stream is determined.
  /// - `longest` The duration of the longest input. (default)
  /// - `shortest` The duration of the shortest input.
  /// - `first` The duration of the first input.
  Object? duration;

  @override
  String get name => 'mix';

  @override
  Map<String, dynamic> get options => {
        'inputs': inputs,
        'weights': weights,
        'scale': scale,
        'planes': planes,
        'duration': duration,
      };
}
