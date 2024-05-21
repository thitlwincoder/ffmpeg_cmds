import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Split each channel from an input audio stream into a separate output stream.
///
/// It accepts the following parameters:
class Channelsplit extends Filter {
  /// Channelsplit
  Channelsplit({
    this.channelLayout,
    this.channels,
  });

  /// The channel layout of the input stream. The default is "stereo".
  Object? channelLayout;

  /// A channel layout describing the channels to be extracted as separate output streams or "all" to extract each input channel as a separate stream. The default is "all"./// Choosing channels not present in channel layout in the input will result in an error.
  Object? channels;

  @override
  String get name => 'channelsplit';

  @override
  Map<String, dynamic> get options =>
      {'channel_layout': channelLayout, 'channels': channels};
}
