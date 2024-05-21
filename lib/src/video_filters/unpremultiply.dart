import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply alpha unpremultiply effect to input video stream using first plane of second stream as alpha.
///
/// Both streams must have same dimensions and same pixel format.
///
/// The filter accepts the following option:
class Unpremultiply extends Filter {
  /// Unpremultiply
  Unpremultiply({
    this.planes,
    this.inplace,
  });

  /// Set which planes will be processed, unprocessed planes will be copied. By default value 0xf, all planes will be processed./// If the format has 1 or 2 components, then luma is bit 0. If the format has 3 or 4 components: for RGB formats bit 0 is green, bit 1 is blue and bit 2 is red; for YUV formats bit 0 is luma, bit 1 is chroma-U and bit 2 is chroma-V. If present, the alpha channel is always the last bit.
  Object? planes;

  /// Do not require 2nd input for processing, instead use alpha plane from input stream.
  Object? inplace;

  @override
  String get name => 'unpremultiply';

  @override
  Map<String, dynamic> get options => {'planes': planes, 'inplace': inplace};
}
