import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// It contains the original and a preview of the effect of the CLUT: SMPTE color bars are displayed on the right-top, and below the same color bars processed by the color changes.
///
/// Then, the effect of this Hald CLUT can be visualized with:
class HaldCLUTWithPreview extends Filter {
  /// HaldCLUTWithPreview
  HaldCLUTWithPreview();

  @override
  String get name => 'Hald-CLUT-with-preview';

  @override
  Map<String, dynamic> get options => {};
}
