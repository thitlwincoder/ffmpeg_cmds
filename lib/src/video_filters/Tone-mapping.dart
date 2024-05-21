import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The options in this section control how libplacebo performs tone-mapping and gamut-mapping when dealing with mismatches between wide-gamut or HDR content. In general, libplacebo relies on accurate source tagging and mastering display gamut information to produce the best results.
class ToneMapping extends Filter {
  /// ToneMapping
  ToneMapping({
    this.gamutMode,
    this.tonemapping,
    this.tonemappingParam,
    this.inverseTonemapping,
    this.tonemappingLutSize,
    this.contrastRecovery,
    this.contrastSmoothness,
  });

  /// How to handle out-of-gamut colors that can occur as a result of colorimetric gamut mapping.
  /// - `clip` Do nothing, simply clip out-of-range colors to the RGB volume. Low quality but extremely fast.
  /// - `perceptual` Perceptually soft-clip colors to the gamut volume. This is the default.
  /// - `relative` Relative colorimetric hard-clip. Similar to perceptual but without the soft knee.
  /// - `saturation` Saturation mapping, maps primaries directly to primaries in RGB space. Not recommended except for artificial computer graphics for which a bright, saturated display is desired.
  /// - `absolute` Absolute colorimetric hard-clip. Performs no adjustment of the white point.
  /// - `desaturate` Hard-desaturates out-of-gamut colors towards white, while preserving the luminance. Has a tendency to distort the visual appearance of bright objects.
  /// - `darken` Linearly reduces content brightness to preserves saturated details, followed by clipping the remaining out-of-gamut colors.
  /// - `warn` Highlight out-of-gamut pixels (by inverting/marking them).
  /// - `linear` Linearly reduces chromaticity of the entire image to make it fit within the target color volume. Be careful when using this on BT.2020 sources without proper mastering metadata, as doing so will lead to excessive desaturation.
  Object? gamutMode;

  /// Tone-mapping algorithm to use. Available values are:
  /// - `auto` Automatic selection based on internal heuristics. This is the default.
  /// - `clip` Performs no tone-mapping, just clips out-of-range colors. Retains perfect color accuracy for in-range colors but completely destroys out-of-range information. Does not perform any black point adaptation. Not configurable.
  /// - `st2094-40` EETF from SMPTE ST 2094-40 Annex B, which applies the Bezier curves from HDR10+ dynamic metadata based on Bezier curves to perform tone-mapping. The OOTF used is adjusted based on the ratio between the targeted and actual display peak luminances.
  /// - `st2094-10` EETF from SMPTE ST 2094-10 Annex B.2, which takes into account the input signal average luminance in addition to the maximum/minimum. The configurable contrast parameter influences the slope of the linear output segment, defaulting to 1.0 for no increase/decrease in contrast. Note that this does not currently include the subjective gain/offset/gamma controls defined in Annex B.3.
  /// - `bt.2390` EETF from the ITU-R Report BT.2390, a hermite spline roll-off with linear segment. The knee point offset is configurable. Note that this parameter defaults to 1.0, rather than the value of 0.5 from the ITU-R spec.
  /// - `bt.2446a` EETF from ITU-R Report BT.2446, method A. Designed for well-mastered HDR sources. Can be used for both forward and inverse tone mapping. Not configurable.
  /// - `spline` Simple spline consisting of two polynomials, joined by a single pivot point. The parameter gives the pivot point (in PQ space), defaulting to 0.30. Can be used for both forward and inverse tone mapping.
  /// - `reinhard` Simple non-linear, global tone mapping algorithm. The parameter specifies the local contrast coefficient at the display peak. Essentially, a parameter of 0.5 implies that the reference white will be about half as bright as when clipping. Defaults to 0.5, which results in the simplest formulation of this function.
  /// - `mobius` Generalization of the reinhard tone mapping algorithm to support an additional linear slope near black. The tone mapping parameter indicates the trade-off between the linear section and the non-linear section. Essentially, for a given parameter x, every color value below x will be mapped linearly, while higher values get non-linearly tone-mapped. Values near 1.0 make this curve behave like clip, while values near 0.0 make this curve behave like reinhard. The default value is 0.3, which provides a good balance between colorimetric accuracy and preserving out-of-gamut details.
  /// - `hable` Piece-wise, filmic tone-mapping algorithm developed by John Hable for use in Uncharted 2, inspired by a similar tone-mapping algorithm used by Kodak. Popularized by its use in video games with HDR rendering. Preserves both dark and bright details very well, but comes with the drawback of changing the average brightness quite significantly. This is sort of similar to reinhard with parameter 0.24.
  /// - `gamma` Fits a gamma (power) function to transfer between the source and target color spaces, effectively resulting in a perceptual hard-knee joining two roughly linear sections. This preserves details at all scales fairly accurately, but can result in an image with a muted or dull appearance. The parameter is used as the cutoff point, defaulting to 0.5.
  /// - `linear` Linearly stretches the input range to the output range, in PQ space. This will preserve all details accurately, but results in a significantly different average brightness. Can be used for inverse tone-mapping in addition to regular tone-mapping. The parameter can be used as an additional linear gain coefficient (defaulting to 1.0).
  Object? tonemapping;

  /// For tunable tone mapping functions, this parameter can be used to fine-tune the curve behavior. Refer to the documentation of `tonemapping`. The default value of `0.0` is replaced by the curve’s preferred default setting.
  Object? tonemappingParam;

  /// If enabled, this filter will also attempt stretching SDR signals to fill HDR output color volumes. Disabled by default.
  Object? inverseTonemapping;

  /// Size of the tone-mapping LUT, between `2` and `1024`. Defaults to `256`. Note that this figure is squared when combined with `peak_detect`.
  Object? tonemappingLutSize;

  /// Contrast recovery strength. If set to a value above `0.0`, the source image will be divided into high-frequency and low-frequency components, and a portion of the high-frequency image is added back onto the tone-mapped output. May cause excessive ringing artifacts for some HDR sources, but can improve the subjective sharpness and detail left over in the image after tone-mapping. Defaults to `0.30`.
  Object? contrastRecovery;

  /// Contrast recovery lowpass kernel size. Defaults to `3.5`. Increasing or decreasing this will affect the visual appearance substantially. Has no effect when `contrast_recovery` is disabled.
  Object? contrastSmoothness;

  @override
  String get name => 'Tone-mapping';

  @override
  Map<String, dynamic> get options => {
        'gamut_mode': gamutMode,
        'tonemapping': tonemapping,
        'tonemapping_param': tonemappingParam,
        'inverse_tonemapping': inverseTonemapping,
        'tonemapping_lut_size': tonemappingLutSize,
        'contrast_recovery': contrastRecovery,
        'contrast_smoothness': contrastSmoothness,
      };
}
