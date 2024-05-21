import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Detect frames that are (almost) completely black. Can be useful to detect chapter transitions or commercials. Output lines consist of the frame number of the detected frame, the percentage of blackness, the position in the file if known or -1 and the timestamp in seconds.
///
/// In order to display the output lines, you need to set the loglevel at least to the AV\_LOG\_INFO value.
///
/// It accepts the following parameters:
class Blackframe extends Filter {
  /// Blackframe
  Blackframe({
    this.amount,
    this.threshold,
    this.thresh,
  });

  /// The percentage of the pixels that have to be below the threshold; it defaults to `98`.
  Object? amount;

  /// The threshold below which a pixel value is considered black; it defaults to `32`.
  Object? threshold, thresh;

  @override
  String get name => 'blackframe';

  @override
  Map<String, dynamic> get options =>
      {'amount': amount, 'threshold': threshold, 'thresh': thresh};
}
