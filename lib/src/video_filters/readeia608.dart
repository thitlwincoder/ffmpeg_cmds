import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Read closed captioning (EIA-608) information from the top lines of a video frame.
///
/// This filter accepts the following options:
class Readeia608 extends Filter {
  /// Readeia608
  Readeia608({
    this.lavfiReadeia608XCc,
    this.lavfiReadeia608XLine,
    this.scanMin,
    this.scanMax,
    this.spw,
    this.chp,
    this.lp,
  });

  /// The two bytes stored as EIA-608 data (printed in hexadecimal).
  Object? lavfiReadeia608XCc;

  /// The number of the line on which the EIA-608 data was identified and read.
  Object? lavfiReadeia608XLine;

  /// Set the line to start scanning for EIA-608 data. Default is `0`.
  Object? scanMin;

  /// Set the line to end scanning for EIA-608 data. Default is `29`.
  Object? scanMax;

  /// Set the ratio of width reserved for sync code detection. Default is `0.27`. Allowed range is `\[0.1 - 0.7\]`.
  Object? spw;

  /// Enable checking the parity bit. In the event of a parity error, the filter will output `0x00` for that character. Default is false.
  Object? chp;

  /// Lowpass lines prior to further processing. Default is enabled.
  Object? lp;

  @override
  String get name => 'readeia608';

  @override
  Map<String, dynamic> get options => {
        'lavfi.readeia608.X.cc': lavfiReadeia608XCc,
        'lavfi.readeia608.X.line': lavfiReadeia608XLine,
        'scan_min': scanMin,
        'scan_max': scanMax,
        'spw': spw,
        'chp': chp,
        'lp': lp,
      };
}
