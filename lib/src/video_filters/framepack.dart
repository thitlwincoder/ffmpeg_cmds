import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// It accepts the following parameters:
///
/// Some examples:
class Framepack extends Filter {
  /// Framepack
  Framepack({this.format});

  /// The desired packing format. Supported values are:
  /// - `sbs` The views are next to each other (default).
  /// - `tab` The views are on top of each other.
  /// - `lines` The views are packed by line.
  /// - `columns` The views are packed by column.
  /// - `frameseq` The views are temporally interleaved.
  Object? format;

  @override
  String get name => 'framepack';

  @override
  Map<String, dynamic> get options => {'format': format};
}
