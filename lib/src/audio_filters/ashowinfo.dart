import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Show a line containing various information for each input audio frame. The input audio is not modified.
///
/// The following values are shown in the output:
class Ashowinfo extends Filter {
  /// Ashowinfo
  Ashowinfo({
    this.n,
    this.pts,
    this.ptsTime,
    this.fmt,
    this.chlayout,
    this.rate,
    this.nbSamples,
    this.checksum,
    this.planeChecksums,
  });

  /// The (sequential) number of the input frame, starting from 0.
  Object? n;

  /// The presentation timestamp of the input frame, in time base units; the time base depends on the filter input pad, and is usually 1/sample_rate.
  Object? pts;

  /// The presentation timestamp of the input frame in seconds.
  Object? ptsTime;

  /// The sample format.
  Object? fmt;

  /// The channel layout.
  Object? chlayout;

  /// The sample rate for the audio frame.
  Object? rate;

  /// The number of samples (per channel) in the frame.
  Object? nbSamples;

  /// The Adler-32 checksum (printed in hexadecimal) of the audio data. For planar audio, the data is treated as if all the planes were concatenated.
  Object? checksum;

  /// A list of Adler-32 checksums for each data plane.
  Object? planeChecksums;

  @override
  String get name => 'ashowinfo';

  @override
  Map<String, dynamic> get options => {
        'n': n,
        'pts': pts,
        'pts_time': ptsTime,
        'fmt': fmt,
        'chlayout': chlayout,
        'rate': rate,
        'nb_samples': nbSamples,
        'checksum': checksum,
        'plane_checksums': planeChecksums,
      };
}
