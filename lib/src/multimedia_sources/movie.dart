import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Read audio and/or video stream(s) from a movie container.
class Movie extends Filter {
  /// Movie
  Movie({
    this.formatName,
    this.f,
    this.seekPoint,
    this.sp,
    this.streams,
    this.s,
    this.streamIndex,
    this.si,
    this.loop,
    this.discontinuity,
    this.decThreads,
    this.formatOpts,
  });

  /// The name of the resource to read (not necessarily a file; it can also be a device or a stream accessed through some protocol).
  String? filename;

  /// Specifies the format assumed for the movie to read, and can be either the name of a container or an input device. If not specified, the format is guessed from movie_name or by probing.
  String? formatName, f;

  /// Specifies the seek point in seconds. The frames will be output starting from this seek point. The parameter is evaluated with av_strtod, so the numerical value may be suffixed by an IS postfix. The default value is `0`.
  int? seekPoint, sp;

  /// Specifies the streams to read. Several streams can be specified, separated by "+". The source will then have as many outputs, in the same order. The syntax is explained in the [(ffmpeg)"Stream specifiers" section in the ffmpeg manual](https://ffmpeg.org/ffmpeg.html#Stream-specifiers). Two special names, "dv" and "da" specify respectively the default (best suited) video and audio stream. Default is `dv`, or `da` if the filter is called as "amovie".
  String? streams, s;

  /// Specifies the index of the video stream to read. If the value is -1, the most suitable video stream will be automatically selected. The default value is `-1`. Deprecated. If the filter is called "amovie", it will select audio instead of video.
  int? streamIndex, si;

  /// Specifies how many times to read the stream in sequence. If the value is 0, the stream will be looped infinitely. Default value is `1`.
  ///
  /// Note that when the movie is looped the source timestamps are not changed, so it will generate non monotonically increasing timestamps.
  int? loop;

  /// Specifies the time difference between frames above which the point is considered a timestamp discontinuity which is removed by adjusting the later timestamps.
  int? discontinuity;

  /// Specifies the number of threads for decoding
  int? decThreads;

  /// Specify format options for the opened file. Format options can be specified as a list of key=value pairs separated by ’:’. The following example shows how to add protocol_whitelist and protocol_blacklist options:
  int? formatOpts;

  @override
  String get name => 'movie';

  @override
  Map<String, dynamic> get options => {
        'filename': filename,
        'format_name': formatName,
        'f': f,
        'seek_point': seekPoint,
        'sp': sp,
        'streams': streams,
        's': s,
        'stream_index': streamIndex,
        'si': si,
        'loop': loop,
        'discontinuity': discontinuity,
        'dec_threads': decThreads,
        'format_opts': formatOpts,
      };
}
