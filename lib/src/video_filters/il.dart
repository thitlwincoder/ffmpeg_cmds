import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Deinterleave or interleave fields.
///
/// This filter allows one to process interlaced images fields without deinterlacing them. Deinterleaving splits the input frame into 2 fields (so called half pictures). Odd lines are moved to the top half of the output image, even lines to the bottom half. You can process (filter) them independently and then re-interleave them.
///
/// The filter accepts the following options:
class Il extends Filter {
  /// Il
  Il({
    this.lumaMode,
    this.l,
    this.chromaMode,
    this.c,
    this.alphaMode,
    this.a,
    this.lumaSwap,
    this.ls,
    this.chromaSwap,
    this.cs,
    this.alphaSwap,
    this.as,
  });

  /// Available values for luma_mode, chroma_mode and alpha_mode are:
  /// - `none` Do nothing.
  /// - `deinterleave, d` Deinterleave fields, placing one above the other.
  /// - `interleave, i` Interleave fields. Reverse the effect of deinterleaving.

  /// Default value is `none`.
  Object? lumaMode, l;

  /// Swap luma/chroma/alpha fields. Exchange even & odd lines. Default value is `0`.
  Object? chromaMode, c;

  Object? alphaMode, a;

  Object? lumaSwap, ls;

  Object? chromaSwap, cs;

  Object? alphaSwap, as;

  @override
  String get name => 'il';

  @override
  Map<String, dynamic> get options => {
        'luma_mode': lumaMode,
        'l': l,
        'chroma_mode': chromaMode,
        'c': c,
        'alpha_mode': alphaMode,
        'a': a,
        'luma_swap': lumaSwap,
        'ls': ls,
        'chroma_swap': chromaSwap,
        'cs': cs,
        'alpha_swap': alphaSwap,
        'as': as,
      };
}
