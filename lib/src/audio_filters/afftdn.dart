import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Denoise audio samples with FFT.
///
/// A description of the accepted parameters follows.
class Afftdn extends Filter {
  /// Afftdn
  Afftdn({
    this.noiseReduction,
    this.nr,
    this.noiseFloor,
    this.nf,
    this.noiseType,
    this.nt,
    this.bandNoise,
    this.bn,
    this.residualFloor,
    this.rf,
    this.trackNoise,
    this.tn,
    this.trackResidual,
    this.tr,
    this.outputMode,
    this.om,
    this.adaptivity,
    this.ad,
    this.floorOffset,
    this.fo,
    this.noiseLink,
    this.nl,
    this.bandMultiplier,
    this.bm,
    this.sampleNoise,
    this.sn,
    this.gainSmooth,
    this.gs,
  });

  Object? noiseReduction, nr;

  Object? noiseFloor, nf;

  Object? noiseType, nt;

  Object? bandNoise, bn;

  Object? residualFloor, rf;

  Object? trackNoise, tn;

  Object? trackResidual, tr;

  Object? outputMode, om;

  Object? adaptivity, ad;

  Object? floorOffset, fo;

  Object? noiseLink, nl;

  Object? bandMultiplier, bm;

  Object? sampleNoise, sn;

  Object? gainSmooth, gs;

  @override
  String get name => 'afftdn';

  @override
  Map<String, dynamic> get options => {
        'noise_reduction': noiseReduction,
        'nr': nr,
        'noise_floor': noiseFloor,
        'nf': nf,
        'noise_type': noiseType,
        'nt': nt,
        'band_noise': bandNoise,
        'bn': bn,
        'residual_floor': residualFloor,
        'rf': rf,
        'track_noise': trackNoise,
        'tn': tn,
        'track_residual': trackResidual,
        'tr': tr,
        'output_mode': outputMode,
        'om': om,
        'adaptivity': adaptivity,
        'ad': ad,
        'floor_offset': floorOffset,
        'fo': fo,
        'noise_link': noiseLink,
        'nl': nl,
        'band_multiplier': bandMultiplier,
        'bm': bm,
        'sample_noise': sampleNoise,
        'sn': sn,
        'gain_smooth': gainSmooth,
        'gs': gs,
      };
}
