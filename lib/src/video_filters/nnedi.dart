import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Deinterlace video using neural network edge directed interpolation.
///
/// This filter accepts the following options:
class Nnedi extends Filter {
  /// Nnedi
  Nnedi({
    this.weights,
    this.deint,
    this.field,
    this.planes,
    this.nsize,
    this.nns,
    this.qual,
    this.etype,
    this.pscrn,
  });

  /// Mandatory option, without binary file filter can not work. Currently file can be found here: https://github.com/dubhater/vapoursynth-nnedi3/blob/master/src/nnedi3_weights.bin
  Object? weights;

  /// Set which frames to deinterlace, by default it is `all`. Can be `all` or `interlaced`.
  Object? deint;

  /// Set mode of operation./// Can be one of the following:
  /// - `af` Use frame flags, both fields.
  /// - `a` Use frame flags, single field.
  /// - `t` Use top field only.
  /// - `b` Use bottom field only.
  /// - `tf` Use both fields, top first.
  /// - `bf` Use both fields, bottom first.
  Object? field;

  /// Set which planes to process, by default filter process all frames.
  Object? planes;

  /// Set size of local neighborhood around each pixel, used by the predictor neural network./// Can be one of the following:
  /// - `s8x6`
  /// - `s16x6`
  /// - `s32x6`
  /// - `s48x6`
  /// - `s8x4`
  /// - `s16x4`
  /// - `s32x4`
  Object? nsize;

  /// Set the number of neurons in predictor neural network. Can be one of the following:
  /// - `n16`
  /// - `n32`
  /// - `n64`
  /// - `n128`
  /// - `n256`
  Object? nns;

  /// Controls the number of different neural network predictions that are blended together to compute the final output value. Can be `fast`, default or `slow`.
  Object? qual;

  /// Set which set of weights to use in the predictor. Can be one of the following:
  /// - `a, abs` weights trained to minimize absolute error
  /// - `s, mse` weights trained to minimize squared error
  Object? etype;

  /// Controls whether or not the prescreener neural network is used to decide which pixels should be processed by the predictor neural network and which can be handled by simple cubic interpolation. The prescreener is trained to know whether cubic interpolation will be sufficient for a pixel or whether it should be predicted by the predictor nn. The computational complexity of the prescreener nn is much less than that of the predictor nn. Since most pixels can be handled by cubic interpolation, using the prescreener generally results in much faster processing. The prescreener is pretty accurate, so the difference between using it and not using it is almost always unnoticeable./// Can be one of the following:
  /// - `none`
  /// - `original`
  /// - `new`
  /// - `new2`
  /// - `new3`
  /// Default is `new`.
  Object? pscrn;

  @override
  String get name => 'nnedi';

  @override
  Map<String, dynamic> get options => {
        'weights': weights,
        'deint': deint,
        'field': field,
        'planes': planes,
        'nsize': nsize,
        'nns': nns,
        'qual': qual,
        'etype': etype,
        'pscrn': pscrn,
      };
}
