import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Scale (resize) the input video, using the z.lib library: [https://github.com/sekrit-twc/zimg](https://github.com/sekrit-twc/zimg). To enable compilation of this filter, you need to configure FFmpeg with `--enable-libzimg`.
///
/// The zscale filter forces the output display aspect ratio to be the same as the input, by changing the output sample aspect ratio.
///
/// If the input image format is different from the format requested by the next filter, the zscale filter will convert the input to the requested format.

class ZScale implements Filter {
  /// ZScale
  ZScale({
    this.width,
    this.w,
    this.height,
    this.h,
    this.size,
    this.s,
    this.dither,
    this.d,
    this.filter,
    this.f,
    this.range,
    this.r,
    this.primaries,
    this.p,
    this.transfer,
    this.t,
    this.matrix,
    this.m,
    this.rangein,
    this.rin,
    this.primariesin,
    this.pin,
    this.transferin,
    this.tin,
    this.matrixin,
    this.min,
    this.chromal,
    this.c,
    this.chromalin,
    this.cin,
    this.npl,
    this.paramA,
    this.paramB,
  });

  /// Set the output video dimension expression. Default value is the input dimension.
  ///
  /// If the width or w value is 0, the input width is used for the output. If the height or h value is 0, the input height is used for the output.
  ///
  /// If one and only one of the values is -n with n >= 1, the zscale filter will use a value that maintains the aspect ratio of the input image, calculated from the other specified dimension. After that it will, however, make sure that the calculated dimension is divisible by n and adjust the value if necessary.
  ///
  /// If both values are -n with n >= 1, the behavior will be identical to both values being set to 0 as previously detailed.
  int? width, w, height, h;

  /// Set the video size. For the syntax of this option, check the (ffmpeg-utils)"Video size" section in the ffmpeg-utils manual.
  int? size, s;

  /// Set the dither type. Possible values are:
  /// - none
  /// - ordered
  /// - random
  /// - error_diffusion
  ///
  ///  Default is `none`.
  String? dither, d;

  /// Set the resize filter type. Possible values are:
  /// - point
  /// - bilinear
  /// - bicubic
  /// - spline16
  /// - spline36
  /// - lanczos
  ///
  /// Default is `bilinear`.
  String? filter, f;

  /// Set the color range. Possible values are:
  /// - input
  /// - limited
  /// - full
  ///
  /// Default is same as `input`.
  String? range, r;

  /// Set the color primaries. Possible values are:
  /// - input
  /// - 709
  /// - unspecified
  /// - 170m
  /// - 240m
  /// - 2020
  ///
  /// Default is same as `input`.
  String? primaries, p;

  /// Set the transfer characteristics. Possible values are:
  /// - input
  /// - 709
  /// - unspecified
  /// - 601
  /// - linear
  /// - 2020_10
  /// - 2020_12
  /// - smpte2084
  /// - iec61966-2-1
  /// - arib-std-b67
  ///
  /// Default is same as `input`.
  String? transfer, t;

  /// Set the colorspace matrix. Possible value are:
  /// - input
  /// - 709
  /// - unspecified
  /// - 470bg
  /// - 170m
  /// - 2020_ncl
  /// - 2020_cl
  ///
  /// Default is same as `input`.
  String? matrix, m;

  /// Set the input color range. Possible values are:
  /// - input
  /// - limited
  /// - full
  ///
  /// Default is same as `input`.
  String? rangein, rin;

  /// Set the input color primaries. Possible values are:
  /// - input
  /// - 709
  /// - unspecified
  /// - 170m
  /// - 240m
  /// - 2020
  ///
  /// Default is same as `input`.
  String? primariesin, pin;

  /// Set the input transfer characteristics. Possible values are:
  /// - input
  /// - 709
  /// - unspecified
  /// - 601
  /// - linear
  /// - 2020_10
  /// - 2020_12
  ///
  /// Default is same as `input`.
  String? transferin, tin;

  /// Set the input colorspace matrix. Possible value are:
  /// - input
  /// - 709
  /// - unspecified
  /// - 470bg
  /// - 170m
  /// - 2020_ncl
  /// - 2020_cl
  String? matrixin, min;

  /// Set the output chroma location. Possible values are:
  /// - input
  /// - left
  /// - center
  /// - topleft
  /// - top
  /// - bottomleft
  /// - bottom
  String? chromal, c;

  /// Set the input chroma location. Possible values are:
  /// - input
  /// - left
  /// - center
  /// - topleft
  /// - top
  /// - bottomleft
  /// - bottom
  String? chromalin, cin;

  /// Set the nominal peak luminance.
  String? npl;

  /// Parameter A for scaling filters. Parameter "b" for bicubic, and the number of filter taps for lanczos.
  String? paramA;

  /// Parameter B for scaling filters. Parameter "c" for bicubic.
  String? paramB;

  @override
  String get name => 'zscale';

  @override
  Map<String, dynamic> get options => {
        'width': width,
        'w': w,
        'height': height,
        'h': h,
        'dither': dither,
        'd': d,
        'filter': filter,
        'f': f,
        'range': range,
        'r': r,
        'primaries': primaries,
        'p': p,
        'transfer': transfer,
        't': t,
        'matrix': matrix,
        'm': m,
        'rangein': rangein,
        'rin': rin,
        'primariesin': primariesin,
        'pin': pin,
        'transferin': transferin,
        'tin': tin,
        'matrixin': matrixin,
        'min': min,
        'chromal': chromal,
        'c': c,
        'chromalin': chromalin,
        'cin': cin,
        'npl': npl,
        'param_a': paramA,
        'param_b': paramB,
      };
}
