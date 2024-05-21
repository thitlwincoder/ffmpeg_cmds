import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The filter accepts the following options:
class Fieldmatch extends Filter {
  /// Fieldmatch
  Fieldmatch({
    this.order,
    this.mode,
    this.ppsrc,
    this.field,
    this.mchroma,
    this.y0,
    this.y1,
    this.scthresh,
    this.combmatch,
    this.combdbg,
    this.cthresh,
    this.chroma,
    this.blockx,
    this.blocky,
    this.combpel,
  });

  /// Specify the assumed field order of the input stream. Available values are:
  /// - `auto` Auto detect parity (use FFmpeg’s internal parity value).
  /// - `bff` Assume bottom field first.
  /// - `tff` Assume top field first.

  /// Note that it is sometimes recommended not to trust the parity announced by the stream./// Default value is auto.
  Object? order;

  /// Set the matching mode or strategy to use. /// pc mode is the safest in the sense that it won’t risk creating jerkiness due to duplicate frames when possible, but if there are bad edits or blended fields it will end up outputting combed frames when a good match might actually exist. On the other hand, /// pcn_ub mode is the most risky in terms of creating jerkiness, but will almost always find a good frame if there is one. The other values are all somewhere in between /// pc and /// pcn_ub in terms of risking jerkiness and creating duplicate frames versus finding good matches in sections with bad edits, orphaned fields, blended fields, etc./// More details about p/c/n/u/b are available in [p/c/n/u/b meaning](file:///D:/Projects/Personal/ffmpeg_cmds/filters.html#p_002fc_002fn_002fu_002fb-meaning) section./// Available values are:
  /// - `pc` 2-way matching (p/c)
  /// - `pc_n` 2-way matching, and trying 3rd match if still combed (p/c + n)
  /// - `pc_u` 2-way matching, and trying 3rd match (same order) if still combed (p/c + u)
  /// - `pc_n_ub` 2-way matching, trying 3rd match if still combed, and trying 4th/5th matches if still combed (p/c + n + u/b)
  /// - `pcn` 3-way matching (p/c/n)
  /// - `pcn_ub` 3-way matching, and trying 4th/5th matches if all 3 of the original matches are detected as combed (p/c/n + u/b)

  /// The parenthesis at the end indicate the matches that would be used for that mode assuming /// order=tff (and /// field on auto or top)./// In terms of speed /// pc mode is by far the fastest and /// pcn_ub is the slowest./// Default value is pc_n.
  Object? mode;

  /// Mark the main input stream as a pre-processed input, and enable the secondary input stream as the clean source to pick the fields from. See the filter introduction for more details. It is similar to the /// clip2 feature from VFM/TFM./// Default value is `0` (disabled).
  Object? ppsrc;

  /// Set the field to match from. It is recommended to set this to the same value as /// order unless you experience matching failures with that setting. In certain circumstances changing the field that is used to match from can have a large impact on matching performance. Available values are:
  /// - `auto` Automatic (same value as order).
  /// - `bottom` Match from the bottom field.
  /// - `top` Match from the top field.

  /// Default value is auto.
  Object? field;

  /// Set whether or not chroma is included during the match comparisons. In most cases it is recommended to leave this enabled. You should set this to `0` only if your clip has bad chroma problems such as heavy rainbowing or other artifacts. Setting this to `0` could also be used to speed things up at the cost of some accuracy./// Default value is `1`.
  Object? mchroma;

  /// These define an exclusion band which excludes the lines between /// y0 and /// y1 from being included in the field matching decision. An exclusion band can be used to ignore subtitles, a logo, or other things that may interfere with the matching. /// y0 sets the starting scan line and /// y1 sets the ending line; all lines in between /// y0 and /// y1 (including /// y0 and /// y1) will be ignored. Setting /// y0 and /// y1 to the same value will disable the feature. /// y0 and /// y1 defaults to `0`.
  Object? y0;

  /// Set the scene change detection threshold as a percentage of maximum change on the luma plane. Good values are in the `\[8.0, 14.0\]` range. Scene change detection is only relevant in case /// combmatch=sc. The range for /// scthresh is `\[0.0, 100.0\]`./// Default value is `12.0`.
  Object? y1;

  /// When /// combatch is not none, `fieldmatch` will take into account the combed scores of matches when deciding what match to use as the final match. Available values are:
  /// - `none` No final matching based on combed scores.
  /// - `sc` Combed scores are only used when a scene change is detected.
  /// - `full` Use combed scores all the time.

  /// Default is sc.
  Object? scthresh;

  /// Force `fieldmatch` to calculate the combed metrics for certain matches and print them. This setting is known as /// micout in TFM/VFM vocabulary. Available values are:
  /// - `none` No forced calculation.
  /// - `pcn` Force p/c/n calculations.
  /// - `pcnub` Force p/c/n/u/b calculations.

  /// Default value is none.
  Object? combmatch;

  /// This is the area combing threshold used for combed frame detection. This essentially controls how "strong" or "visible" combing must be to be detected. Larger values mean combing must be more visible and smaller values mean combing can be less visible or strong and still be detected. Valid settings are from `-1` (every pixel will be detected as combed) to `255` (no pixel will be detected as combed). This is basically a pixel difference value. A good range is `\[8, 12\]`./// Default value is `9`.
  Object? combdbg;

  /// Sets whether or not chroma is considered in the combed frame decision. Only disable this if your source has chroma problems (rainbowing, etc.) that are causing problems for the combed frame detection with chroma enabled. Actually, using /// chroma=0 is usually more reliable, except for the case where there is chroma only combing in the source./// Default value is `0`.
  Object? cthresh;

  /// Respectively set the x-axis and y-axis size of the window used during combed frame detection. This has to do with the size of the area in which /// combpel pixels are required to be detected as combed for a frame to be declared combed. See the /// combpel parameter description for more info. Possible values are any number that is a power of 2 starting at 4 and going up to 512./// Default value is `16`.
  Object? chroma;

  /// The number of combed pixels inside any of the /// blocky by /// blockx size blocks on the frame for the frame to be detected as combed. While /// cthresh controls how "visible" the combing must be, this setting controls "how much" combing there must be in any localized area (a window defined by the /// blockx and /// blocky settings) on the frame. Minimum value is `0` and maximum is `blocky x blockx` (at which point no frames will ever be detected as combed). This setting is known as /// MI in TFM/VFM vocabulary./// Default value is `80`.
  Object? blockx;

  Object? blocky;

  Object? combpel;

  @override
  String get name => 'fieldmatch';

  @override
  Map<String, dynamic> get options => {
        'order': order,
        'mode': mode,
        'ppsrc': ppsrc,
        'field': field,
        'mchroma': mchroma,
        'y0': y0,
        'y1': y1,
        'scthresh': scthresh,
        'combmatch': combmatch,
        'combdbg': combdbg,
        'cthresh': cthresh,
        'chroma': chroma,
        'blockx': blockx,
        'blocky': blocky,
        'combpel': combpel,
      };
}
