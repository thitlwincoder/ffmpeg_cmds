import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Video source that creates a Vulkan frame of a solid color. Useful for benchmarking, or overlaying.
///
/// It accepts the following parameters:
class ColorVulkan extends Filter {
  /// ColorVulkan
  ColorVulkan({
    this.color,
    this.size,
    this.rate,
    this.duration,
    this.sar,
    this.format,
    this.outRange,
  });

  /// The color to use. Either a name, or a hexadecimal value. The default value is `black`.
  Object? color;

  /// The size of the output frame. Default value is `1920x1080`.
  Object? size;

  /// The framerate to output at. Default value is `60` frames per second.
  Object? rate;

  /// The video duration. Default value is `-0.000001`.
  Object? duration;

  /// The video signal aspect ratio. Default value is `1/1`.
  Object? sar;

  /// The pixel format of the output Vulkan frames. Default value is `yuv444p`.
  Object? format;

  /// Set the output YCbCr sample range./// This allows the autodetected value to be overridden as well as allows forcing a specific value used for the output and encoder. If not specified, the range depends on the pixel format. Possible values:
  /// - `auto/unknown` Choose automatically.
  /// - `jpeg/full/pc` Set full range (0-255 in case of 8-bit luma).
  /// - `mpeg/limited/tv` Set "MPEG" range (16-235 in case of 8-bit luma).
  Object? outRange;

  @override
  String get name => 'color_vulkan';

  @override
  Map<String, dynamic> get options => {
        'color': color,
        'size': size,
        'rate': rate,
        'duration': duration,
        'sar': sar,
        'format': format,
        'out_range': outRange,
      };
}
