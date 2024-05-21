import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// A description of each metadata value follows:
class Quirc extends Filter {
  /// Quirc
  Quirc({
    this.lavfiQuircCount,
    this.lavfiQuircNCornerMX,
    this.lavfiQuircNCoreerMY,
    this.lavfiQuircNPayload,
  });

  /// the number of found QR codes, it is not set in case none was found
  Object? lavfiQuircCount;

  /// the x/y positions of the four corners of the square containing the QR code, where M is the index of the corner starting from 0
  Object? lavfiQuircNCornerMX;

  /// the payload of the QR code
  Object? lavfiQuircNCoreerMY;

  Object? lavfiQuircNPayload;

  @override
  String get name => 'quirc';

  @override
  Map<String, dynamic> get options => {
        'lavfi.quirc.count': lavfiQuircCount,
        'lavfi.quirc.N.corner.M.x': lavfiQuircNCornerMX,
        'lavfi.quirc.N.coreer.M.y': lavfiQuircNCoreerMY,
        'lavfi.quirc.N.payload': lavfiQuircNPayload,
      };
}
