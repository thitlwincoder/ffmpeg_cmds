import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// RGB colorspace color keying. This filter operates on 8-bit RGB format frames by setting the alpha component of each pixel which falls within the similarity radius of the key color to 0. The alpha value for pixels outside the similarity radius depends on the value of the blend option.
///
/// The filter accepts the following options:
class Colorkey extends Filter {
  /// Colorkey
  Colorkey({
    this.color,
    this.similarity,
    this.blend,
  });

  /// Set the color for which alpha will be set to 0 (full transparency). See [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#color-syntax). Default is `black`.
  Object? color;

  /// Set the radius from the key color within which other colors also have full transparency. The computed distance is related to the unit fractional distance in 3D space between the RGB values of the key color and the pixel’s color. Range is 0.01 to 1.0. 0.01 matches within a very small radius around the exact key color, while 1.0 matches everything. Default is `0.01`.
  Object? similarity;

  /// Set how the alpha value for pixels that fall outside the similarity radius is computed. 0.0 makes pixels either fully transparent or fully opaque. Higher values result in semi-transparent pixels, with greater transparency the more similar the pixel color is to the key color. Range is 0.0 to 1.0. Default is `0.0`.
  Object? blend;

  @override
  String get name => 'colorkey';

  @override
  Map<String, dynamic> get options =>
      {'color': color, 'similarity': similarity, 'blend': blend};
}
