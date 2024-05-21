import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Join multiple input streams into one multi-channel stream.
///
/// It accepts the following parameters:
///
/// The filter will attempt to guess the mappings when they are not specified explicitly. It does so by first trying to find an unused matching input channel and if that fails it picks the first unused input channel.
///
/// Join 3 inputs (with properly set channel layouts):
///
/// Build a 5.1 output from 6 single-channel streams:
class Join extends Filter {
  /// Join
  Join({
    this.inputs,
    this.channelLayout,
    this.map,
  });

  /// The number of input streams. It defaults to 2.
  Object? inputs;

  /// The desired output channel layout. It defaults to stereo.
  Object? channelLayout;

  /// Map channels from inputs to output. The argument is a ’|’-separated list of mappings, each in the `input_idx.in_channel-out_channel` form. input_idx is the 0-based index of the input stream. in_channel can be either the name of the input channel (e.g. FL for front left) or its index in the specified input stream. out_channel is the name of the output channel.
  Object? map;

  @override
  String get name => 'join';

  @override
  Map<String, dynamic> get options =>
      {'inputs': inputs, 'channel_layout': channelLayout, 'map': map};
}
