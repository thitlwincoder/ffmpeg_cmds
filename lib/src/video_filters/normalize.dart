import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Normalize RGB video (aka histogram stretching, contrast stretching). See: https://en.wikipedia.org/wiki/Normalization_(image_processing)
///
/// For each channel of each frame, the filter computes the input range and maps it linearly to the user-specified output range. The output range defaults to the full dynamic range from pure black to pure white.
///
/// Temporal smoothing can be used on the input range to reduce flickering (rapid changes in brightness) caused when small dark or bright objects enter or leave the scene. This is similar to the auto-exposure (automatic gain control) on a video camera, and, like a video camera, it may cause a period of over- or under-exposure of the video.
///
/// The R,G,B channels can be normalized independently, which may cause some color shifting, or linked together as a single channel, which prevents color shifting. Linked normalization preserves hue. Independent normalization does not, so it can be used to remove some color casts. Independent and linked normalization can be combined in any ratio.
///
/// The normalize filter accepts the following options:
class Normalize extends Filter {
  /// Normalize
  Normalize({
    this.blackpt,
    this.whitept,
    this.smoothing,
    this.independence,
    this.strength,
  });

  /// Colors which define the output range. The minimum input value is mapped to the blackpt. The maximum input value is mapped to the whitept. The defaults are black and white respectively. Specifying white for blackpt and black for whitept will give color-inverted, normalized video. Shades of grey can be used to reduce the dynamic range (contrast). Specifying saturated colors here can create some interesting effects.
  Object? blackpt;

  /// The number of previous frames to use for temporal smoothing. The input range of each channel is smoothed using a rolling average over the current frame and the smoothing previous frames. The default is 0 (no temporal smoothing).
  Object? whitept;

  /// Controls the ratio of independent (color shifting) channel normalization to linked (color preserving) normalization. 0.0 is fully linked, 1.0 is fully independent. Defaults to 1.0 (fully independent).
  Object? smoothing;

  /// Overall strength of the filter. 1.0 is full strength. 0.0 is a rather expensive no-op. Defaults to 1.0 (full strength).
  Object? independence;

  Object? strength;

  @override
  String get name => 'normalize';

  @override
  Map<String, dynamic> get options => {
        'blackpt': blackpt,
        'whitept': whitept,
        'smoothing': smoothing,
        'independence': independence,
        'strength': strength,
      };
}
