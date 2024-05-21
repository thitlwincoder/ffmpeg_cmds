import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Merge two or more audio streams into a single multi-channel stream.
///
/// The filter accepts the following options:
///
/// If the channel layouts of the inputs are disjoint, and therefore compatible, the channel layout of the output will be set accordingly and the channels will be reordered as necessary. If the channel layouts of the inputs are not disjoint, the output will have all the channels of the first input then all the channels of the second input, in that order, and the channel layout of the output will be the default value corresponding to the total number of channels.
///
/// For example, if the first input is in 2.1 (FL+FR+LF) and the second input is FC+BL+BR, then the output will be in 5.1, with the channels in the following order: a1, a2, b1, a3, b2, b3 (a1 is the first channel of the first input, b1 is the first channel of the second input).
///
/// On the other hand, if both input are in stereo, the output channels will be in the default order: a1, a2, b1, b2, and the channel layout will be arbitrarily set to 4.0, which may or may not be the expected value.
///
/// All inputs must have the same sample rate, and format.
///
/// If inputs do not have the same duration, the output will stop with the shortest.
class Amerge1 extends Filter {
  /// Amerge1
  Amerge1({this.inputs});

  /// Set the number of inputs. Default is 2.
  Object? inputs;

  @override
  String get name => 'amerge-1';

  @override
  Map<String, dynamic> get options => {'inputs': inputs};
}
