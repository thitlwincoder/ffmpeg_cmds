import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Set the number of samples per each output audio frame.
///
/// The last output packet may contain a different number of samples, as the filter will flush all the remaining samples when the input audio signals its end.
///
/// The filter accepts the following options:
///
/// For example, to set the number of per-frame samples to 1234 and disable padding for the last frame, use:
class Asetnsamples extends Filter {
  /// Asetnsamples
  Asetnsamples({
    this.nbOutSamples,
    this.n,
    this.pad,
    this.p,
  });

  Object? nbOutSamples, n;

  Object? pad, p;

  @override
  String get name => 'asetnsamples';

  @override
  Map<String, dynamic> get options =>
      {'nb_out_samples': nbOutSamples, 'n': n, 'pad': pad, 'p': p};
}
