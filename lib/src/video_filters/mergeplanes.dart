import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Merge color channel components from several video streams.
///
/// The filter accepts up to 4 input streams, and merge selected input planes to the output video.
///
/// This filter accepts the following options:
class Mergeplanes extends Filter {
  /// Mergeplanes
  Mergeplanes({
    this.mapping,
    this.format,
    this.map0s,
    this.map1s,
    this.map2s,
    this.map3s,
    this.map0p,
    this.map1p,
    this.map2p,
    this.map3p,
  });

  /// Set input to output plane mapping. Default is `0`./// The mappings is specified as a bitmap. It should be specified as a hexadecimal number in the form 0xAa\[Bb\[Cc\[Dd\]\]\]. ’Aa’ describes the mapping for the first plane of the output stream. ’A’ sets the number of the input stream to use (from 0 to 3), and ’a’ the plane number of the corresponding input to use (from 0 to 3). The rest of the mappings is similar, ’Bb’ describes the mapping for the output stream second plane, ’Cc’ describes the mapping for the output stream third plane and ’Dd’ describes the mapping for the output stream fourth plane.
  Object? mapping;

  /// Set output pixel format. Default is `yuva444p`.
  Object? format;

  /// Set input to output stream mapping for output Nth plane. Default is `0`.
  Object? map0s;

  /// Set input to output plane mapping for output Nth plane. Default is `0`.
  Object? map1s;

  Object? map2s;

  Object? map3s;

  Object? map0p;

  Object? map1p;

  Object? map2p;

  Object? map3p;

  @override
  String get name => 'mergeplanes';

  @override
  Map<String, dynamic> get options => {
        'mapping': mapping,
        'format': format,
        'map0s': map0s,
        'map1s': map1s,
        'map2s': map2s,
        'map3s': map3s,
        'map0p': map0p,
        'map1p': map1p,
        'map2p': map2p,
        'map3p': map3p,
      };
}
