import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Buffer audio frames, and make them available to the filter chain.
///
/// It accepts the following parameters:
class Abuffer extends Filter {
  /// Abuffer
  Abuffer({
    this.timeBase,
    this.sampleRate,
    this.sampleFmt,
    this.channelLayout,
    this.channels,
  });

  /// The timebase which will be used for timestamps of submitted frames. It must be either a floating-point number or in numerator/denominator form.
  Object? timeBase;

  /// The sample rate of the incoming audio buffers.
  Object? sampleRate;

  /// The sample format of the incoming audio buffers. Either a sample format name or its corresponding integer representation from the enum AVSampleFormat in /// libavutil/samplefmt.h
  Object? sampleFmt;

  /// The channel layout of the incoming audio buffers. Either a channel layout name from channel\_layout\_map in /// libavutil/channel_layout.c or its corresponding integer representation from the AV\_CH\_LAYOUT_* macros in /// libavutil/channel_layout.h
  Object? channelLayout;

  /// The number of channels of the incoming audio buffers. If both channels and channel_layout are specified, then they must be consistent.
  Object? channels;

  @override
  String get name => 'abuffer';

  @override
  Map<String, dynamic> get options => {
        'time_base': timeBase,
        'sample_rate': sampleRate,
        'sample_fmt': sampleFmt,
        'channel_layout': channelLayout,
        'channels': channels,
      };
}
