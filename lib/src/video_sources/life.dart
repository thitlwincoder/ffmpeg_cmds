import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate a life pattern.
///
/// This source is based on a generalization of John Conway’s life game.
///
/// The sourced input represents a life grid, each pixel represents a cell which can be in one of two possible states, alive or dead. Every cell interacts with its eight neighbours, which are the cells that are horizontally, vertically, or diagonally adjacent.
///
/// This source accepts the following options:
class Life extends Filter {
  /// Life
  Life({
    this.filename,
    this.f,
    this.rate,
    this.r,
    this.randomFillRatio,
    this.ratio,
    this.randomSeed,
    this.seed,
    this.rule,
    this.size,
    this.s,
    this.stitch,
    this.mold,
    this.lifeColor,
    this.deathColor,
    this.moldColor,
  });

  /// Set the file from which to read the initial grid state. In the file, each non-whitespace character is considered an alive cell, and newline is used to delimit the end of each row./// If this option is not specified, the initial grid is generated randomly.
  Object? filename, f;

  /// Set the video rate, that is the number of frames generated per second. Default is 25.
  Object? rate, r;

  /// Set the random fill ratio for the initial random grid. It is a floating point number value ranging from 0 to 1, defaults to 1/PHI. It is ignored when a file is specified.
  Object? randomFillRatio, ratio;

  /// Set the seed for filling the initial random grid, must be an integer included between 0 and UINT32_MAX. If not specified, or if explicitly set to -1, the filter will try to use a good random seed on a best effort basis.
  Object? randomSeed, seed;

  /// Set the life rule./// A rule can be specified with a code of the kind "SNS/BNB", where NS and NB are sequences of numbers in the range 0-8, NS specifies the number of alive neighbor cells which make a live cell stay alive, and NB the number of alive neighbor cells which make a dead cell to become alive (i.e. to "born"). "s" and "b" can be used in place of "S" and "B", respectively./// Alternatively a rule can be specified by an 18-bits integer. The 9 high order bits are used to encode the next cell state if it is alive for each number of neighbor alive cells, the low order bits specify the rule for "borning" new cells. Higher order bits encode for an higher number of neighbor cells. For example the number 6153 = `(12<<9)+9` specifies a stay alive rule of 12 and a born rule of 9, which corresponds to "S23/B03"./// Default value is "S23/B3", which is the original Conway’s game of life rule, and will keep a cell alive if it has 2 or 3 neighbor alive cells, and will born a new cell if there are three alive cells around a dead cell.
  Object? rule;

  /// Set the size of the output video. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax)./// If /// filename is specified, the size is set by default to the same size of the input file. If /// size is set, it must contain the size specified in the input file, and the initial grid defined in that file is centered in the larger resulting area./// If a filename is not specified, the size value defaults to "320x240" (used for a randomly generated initial grid).
  Object? size, s;

  /// If set to 1, stitch the left and right grid edges together, and the top and bottom edges also. Defaults to 1.
  Object? stitch;

  /// Set cell mold speed. If set, a dead cell will go from /// death_color to /// mold_color with a step of /// mold. /// mold can have a value from 0 to 255.
  Object? mold;

  /// Set the color of living (or new born) cells.
  Object? lifeColor;

  /// Set the color of dead cells. If /// mold is set, this is the first color used to represent a dead cell.
  Object? deathColor;

  /// Set mold color, for definitely dead and moldy cells./// For the syntax of these 3 color options, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#color-syntax).
  Object? moldColor;

  @override
  String get name => 'life';

  @override
  Map<String, dynamic> get options => {
        'filename': filename,
        'f': f,
        'rate': rate,
        'r': r,
        'random_fill_ratio': randomFillRatio,
        'ratio': ratio,
        'random_seed': randomSeed,
        'seed': seed,
        'rule': rule,
        'size': size,
        's': s,
        'stitch': stitch,
        'mold': mold,
        'life_color': lifeColor,
        'death_color': deathColor,
        'mold_color': moldColor,
      };
}
