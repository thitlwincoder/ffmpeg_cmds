import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Displace pixels as indicated by second and third input stream.
///
/// It takes three input streams and outputs one stream, the first input is the source, and second and third input are displacement maps.
///
/// The second input specifies how much to displace pixels along the x-axis, while the third input specifies how much to displace pixels along the y-axis. If one of displacement map streams terminates, last frame from that displacement map will be used.
///
/// Note that once generated, displacements maps can be reused over and over again.
///
/// A description of the accepted options follows.
class Displace extends Filter {
  /// Displace
  Displace({this.edge});

  /// Set displace behavior for pixels that are out of range./// Available values are:
  /// - `blank` Missing pixels are replaced by black pixels.
  /// - `smear` Adjacent pixels will spread out to replace missing pixels.
  /// - `wrap` Out of range pixels are wrapped so they point to pixels of other side.
  /// - `mirror` Out of range pixels will be replaced with mirrored pixels.

  /// Default is ‘/// smear’.
  Object? edge;

  @override
  String get name => 'displace';

  @override
  Map<String, dynamic> get options => {'edge': edge};
}
