import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Remap input channels to new locations.
///
/// It accepts the following parameters:
///
/// If no mapping is present, the filter will implicitly map input channels to output channels, preserving indices.
class Channelmap extends Filter {
  /// Channelmap
  Channelmap({
    this.map,
    this.channelLayout,
  });

  /// Map channels from input to output. The argument is a ’|’-separated list of mappings, each in the `in_channel-out_channel` or in_channel form. in_channel can be either the name of the input channel (e.g. FL for front left) or its index in the input channel layout. out_channel is the name of the output channel or its index in the output channel layout. If out_channel is not given then it is implicitly an index, starting with zero and increasing by one for each mapping.
  Object? map;

  /// The channel layout of the output stream.
  Object? channelLayout;

  @override
  String get name => 'channelmap';

  @override
  Map<String, dynamic> get options =>
      {'map': map, 'channel_layout': channelLayout};
}
