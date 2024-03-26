import 'package:ffmpeg_cmds/src/multimedia_sources/movie.dart';

/// This is the same as [Movie] source, except it selects an audio stream by default.
class AMovie extends Movie {
  /// AMovie
  AMovie({
    /// The name of the resource to read (not necessarily a file; it can also be a device or a stream accessed through some protocol).
    super.formatName,
    super.f,
    super.seekPoint,
    super.sp,
    super.streams,
    super.s,
    super.streamIndex,
    super.si,
    super.loop,
    super.discontinuity,
    super.decThreads,
    super.formatOpts,
  });

  @override
  String get name => 'amovie';
}
