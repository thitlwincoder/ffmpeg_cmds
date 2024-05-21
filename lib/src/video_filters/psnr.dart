import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Obtain the average, maximum and minimum PSNR (Peak Signal to Noise Ratio) between two input videos.
///
/// This filter takes in input two input videos, the first input is considered the "main" source and is passed unchanged to the output. The second input is used as a "reference" video for computing the PSNR.
///
/// Both video inputs must have the same resolution and pixel format for this filter to work correctly. Also it assumes that both inputs have the same number of frames, which are compared one by one.
///
/// The obtained average PSNR is printed through the logging system.
///
/// The filter stores the accumulated MSE (mean squared error) of each frame, and at the end of the processing it is averaged across all frames equally, and the following formula is applied to obtain the PSNR:
///
/// Where MAX is the average of the maximum values of each component of the image.
///
/// The description of the accepted parameters follows.
///
/// A description of each shown per-frame-pair parameter follows:
class Psnr extends Filter {
  /// Psnr
  Psnr({
    this.statsFile,
    this.f,
    this.statsVersion,
    this.statsAddMax,
    this.psnrLogVersion,
    this.fields,
    this.n,
    this.mseAvg,
    this.mseY,
    this.mseU,
    this.mseV,
    this.mseR,
    this.mseG,
    this.mseB,
    this.mseA,
    this.psnrY,
    this.psnrU,
    this.psnrV,
    this.psnrR,
    this.psnrG,
    this.psnrB,
    this.psnrA,
    this.maxAvg,
    this.maxY,
    this.maxU,
    this.maxV,
  });

  /// If specified the filter will use the named file to save the PSNR of each individual frame. When filename equals "-" the data is sent to standard output.
  Object? statsFile, f;

  /// Specifies which version of the stats file format to use. Details of each format are written below. Default value is 1.
  Object? statsVersion;

  /// Determines whether the max value is output to the stats log. Default value is 0. Requires stats\_version >= 2. If this is set and stats\_version < 2, the filter will return an error.
  Object? statsAddMax;

  /// The version of the log file format. Will match stats_version.
  Object? psnrLogVersion;

  /// A comma separated list of the per-frame-pair parameters included in the log.
  Object? fields;

  /// sequential number of the input frame, starting from 1
  Object? n;

  /// Mean Square Error pixel-by-pixel average difference of the compared frames, averaged over all the image components.
  Object? mseAvg;

  /// Mean Square Error pixel-by-pixel average difference of the compared frames for the component specified by the suffix.
  Object? mseY, mseU, mseV, mseR, mseG, mseB, mseA;

  /// Peak Signal to Noise ratio of the compared frames for the component specified by the suffix.
  Object? psnrY, psnrU, psnrV, psnrR, psnrG, psnrB, psnrA;

  /// Maximum allowed value for each channel, and average over all channels.
  Object? maxAvg, maxY, maxU, maxV;

  @override
  String get name => 'psnr';

  @override
  Map<String, dynamic> get options => {
        'stats_file': statsFile,
        'f': f,
        'stats_version': statsVersion,
        'stats_add_max': statsAddMax,
        'psnr_log_version': psnrLogVersion,
        'fields': fields,
        'n': n,
        'mse_avg': mseAvg,
        'mse_y': mseY,
        'mse_u': mseU,
        'mse_v': mseV,
        'mse_r': mseR,
        'mse_g': mseG,
        'mse_b': mseB,
        'mse_a': mseA,
        'psnr_y': psnrY,
        'psnr_u': psnrU,
        'psnr_v': psnrV,
        'psnr_r': psnrR,
        'psnr_g': psnrG,
        'psnr_b': psnrB,
        'psnr_a': psnrA,
        'max_avg': maxAvg,
        'max_y': maxY,
        'max_u': maxU,
        'max_v': maxV,
      };
}
