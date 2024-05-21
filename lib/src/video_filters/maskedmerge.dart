import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Merge the first input stream with the second input stream using per pixel weights in the third input stream.
///
/// A value of 0 in the third stream pixel component means that pixel component from first stream is returned unchanged, while maximum value (eg. 255 for 8-bit videos) means that pixel component from second stream is returned unchanged. Intermediate values define the amount of merging between both input stream’s pixel components.
///
/// This filter accepts the following options:
class Maskedmerge extends Filter {
  /// Maskedmerge
  Maskedmerge({this.planes});

  /// Set which planes will be processed as bitmap, unprocessed planes will be copied from first stream. By default value 0xf, all planes will be processed.
  Object? planes;

  @override
  String get name => 'maskedmerge';

  @override
  Map<String, dynamic> get options => {'planes': planes};
}
