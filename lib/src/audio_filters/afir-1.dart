import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply an arbitrary Finite Impulse Response filter.
///
/// This filter is designed for applying long FIR filters, up to 60 seconds long.
///
/// It can be used as component for digital crossover filters, room equalization, cross talk cancellation, wavefield synthesis, auralization, ambiophonics, ambisonics and spatialization.
///
/// This filter uses the streams higher than first one as FIR coefficients. If the non-first stream holds a single channel, it will be used for all input channels in the first stream, otherwise the number of channels in the non-first stream must be same as the number of channels in the first stream.
///
/// It accepts the following parameters:
class Afir1 extends Filter {
  /// Afir1
  Afir1({
    this.dry,
    this.wet,
    this.length,
    this.gtype,
    this.irnorm,
    this.irlink,
    this.irgain,
    this.irfmt,
    this.maxir,
    this.response,
    this.channel,
    this.size,
    this.rate,
    this.minp,
    this.maxp,
    this.nbirs,
    this.ir,
    this.precision,
    this.irload,
  });

  /// Set dry gain. This sets input gain.
  Object? dry;

  /// Set wet gain. This sets final output gain.
  Object? wet;

  /// Set Impulse Response filter length. Default is 1, which means whole IR is processed.
  Object? length;

  /// This option is deprecated, and does nothing.
  Object? gtype;

  /// Set norm to be applied to IR coefficients before filtering. Allowed range is from -1 to 2. IR coefficients are normalized with calculated vector norm set by this option. For negative values, no norm is calculated, and IR coefficients are not modified at all. Default is 1.
  Object? irnorm;

  /// For multichannel IR if this option is set to true, all IR channels will be normalized with maximal measured gain of all IR channels coefficients as set by `irnorm` option. When disabled, all IR coefficients in each IR channel will be normalized independently. Default is true.
  Object? irlink;

  /// Set gain to be applied to IR coefficients before filtering. Allowed range is 0 to 1. This gain is applied after any gain applied with irnorm option.
  Object? irgain;

  /// Set format of IR stream. Can be `mono` or `input`. Default is `input`.
  Object? irfmt;

  /// Set max allowed Impulse Response filter duration in seconds. Default is 30 seconds. Allowed range is 0.1 to 60 seconds.
  Object? maxir;

  /// This option is deprecated, and does nothing.
  Object? response;

  /// This option is deprecated, and does nothing.
  Object? channel;

  /// This option is deprecated, and does nothing.
  Object? size;

  /// This option is deprecated, and does nothing.
  Object? rate;

  /// Set minimal partition size used for convolution. Default is 8192. Allowed range is from 1 to 65536. Lower values decreases latency at cost of higher CPU usage.
  Object? minp;

  /// Set maximal partition size used for convolution. Default is 8192. Allowed range is from 8 to 65536. Lower values may increase CPU usage.
  Object? maxp;

  /// Set number of input impulse responses streams which will be switchable at runtime. Allowed range is from 1 to 32. Default is 1.
  Object? nbirs;

  /// Set IR stream which will be used for convolution, starting from 0, should always be lower than supplied value by `nbirs` option. Default is 0. This option can be changed at runtime via [commands](file:///D:/Projects/Personal/ffmpeg_cmds/filters.html#commands).
  Object? ir;

  /// Set which precision to use when processing samples.
  /// - `auto` Auto pick internal sample format depending on other filters.
  /// - `float` Always use single-floating point precision sample format.
  /// - `double` Always use double-floating point precision sample format.

  /// Default value is auto.
  Object? precision;

  /// Set when to load IR stream. Can be `init` or `access`. First one load and prepares all IRs on initialization, second one once on first access of specific IR. Default is `init`.
  Object? irload;

  @override
  String get name => 'afir-1';

  @override
  Map<String, dynamic> get options => {
        'dry': dry,
        'wet': wet,
        'length': length,
        'gtype': gtype,
        'irnorm': irnorm,
        'irlink': irlink,
        'irgain': irgain,
        'irfmt': irfmt,
        'maxir': maxir,
        'response': response,
        'channel': channel,
        'size': size,
        'rate': rate,
        'minp': minp,
        'maxp': maxp,
        'nbirs': nbirs,
        'ir': ir,
        'precision': precision,
        'irload': irload,
      };
}
