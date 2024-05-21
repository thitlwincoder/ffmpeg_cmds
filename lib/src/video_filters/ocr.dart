import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Optical Character Recognition
///
/// It accepts the following options:
class Ocr extends Filter {
  /// Ocr
  Ocr({
    this.datapath,
    this.language,
    this.whitelist,
    this.blacklist,
  });

  /// Set datapath to tesseract data. Default is to use whatever was set at installation.
  Object? datapath;

  /// Set language, default is "eng".
  Object? language;

  /// Set character whitelist.
  Object? whitelist;

  /// Set character blacklist.
  Object? blacklist;

  @override
  String get name => 'ocr';

  @override
  Map<String, dynamic> get options => {
        'datapath': datapath,
        'language': language,
        'whitelist': whitelist,
        'blacklist': blacklist,
      };
}
