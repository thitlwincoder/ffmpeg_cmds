import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class CustomShaders extends Filter {
  /// CustomShaders
  CustomShaders({
    this.customShaderPath,
    this.customShaderBin,
  });

  /// Specifies a path to a custom shader file to load at runtime.
  Object? customShaderPath;

  /// Specifies a complete custom shader as a raw string.
  Object? customShaderBin;

  @override
  String get name => 'Custom-shaders';

  @override
  Map<String, dynamic> get options => {
        'custom_shader_path': customShaderPath,
        'custom_shader_bin': customShaderBin,
      };
}
