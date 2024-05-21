import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The filter accepts the following options:
class Lensfun extends Filter {
  /// Lensfun
  Lensfun({
    this.make,
    this.model,
    this.lensModel,
    this.dbPath,
    this.mode,
    this.focalLength,
    this.aperture,
    this.focusDistance,
    this.scale,
    this.targetGeometry,
    this.reverse,
    this.interpolation,
  });

  /// The make of the camera (for example, "Canon"). This option is required.
  Object? make;

  /// The model of the camera (for example, "Canon EOS 100D"). This option is required.
  Object? model;

  /// The model of the lens (for example, "Canon EF-S 18-55mm f/3.5-5.6 IS STM"). This option is required.
  Object? lensModel;

  /// The full path to the lens database folder. If not set, the filter will attempt to load the database from the install path when the library was built. Default is unset.
  Object? dbPath;

  /// The type of correction to apply. The following values are valid options:
  /// - `vignetting` Enables fixing lens vignetting.
  /// - `geometry` Enables fixing lens geometry. This is the default.
  /// - `subpixel` Enables fixing chromatic aberrations.
  /// - `vig_geo` Enables fixing lens vignetting and lens geometry.
  /// - `vig_subpixel` Enables fixing lens vignetting and chromatic aberrations.
  /// - `distortion` Enables fixing both lens geometry and chromatic aberrations.
  /// - `all` Enables all possible corrections.
  Object? mode;

  /// The focal length of the image/video (zoom; expected constant for video). For example, a 18–55mm lens has focal length range of \[18–55\], so a value in that range should be chosen when using that lens. Default 18.
  Object? focalLength;

  /// The aperture of the image/video (expected constant for video). Note that aperture is only used for vignetting correction. Default 3.5.
  Object? aperture;

  /// The focus distance of the image/video (expected constant for video). Note that focus distance is only used for vignetting and only slightly affects the vignetting correction process. If unknown, leave it at the default value (which is 1000).
  Object? focusDistance;

  /// The scale factor which is applied after transformation. After correction the video is no longer necessarily rectangular. This parameter controls how much of the resulting image is visible. The value 0 means that a value will be chosen automatically such that there is little or no unmapped area in the output image. 1.0 means that no additional scaling is done. Lower values may result in more of the corrected image being visible, while higher values may avoid unmapped areas in the output.
  Object? scale;

  /// The target geometry of the output image/video. The following values are valid options:
  /// - `rectilinear (default)`
  /// - `fisheye`
  /// - `panoramic`
  /// - `equirectangular`
  /// - `fisheye_orthographic`
  /// - `fisheye_stereographic`
  /// - `fisheye_equisolid`
  /// - `fisheye_thoby`
  Object? targetGeometry;

  /// Apply the reverse of image correction (instead of correcting distortion, apply it).
  Object? reverse;

  /// The type of interpolation used when correcting distortion. The following values are valid options:
  /// - `nearest`
  /// - `linear (default)`
  /// - `lanczos`
  Object? interpolation;

  @override
  String get name => 'lensfun';

  @override
  Map<String, dynamic> get options => {
        'make': make,
        'model': model,
        'lens_model': lensModel,
        'db_path': dbPath,
        'mode': mode,
        'focal_length': focalLength,
        'aperture': aperture,
        'focus_distance': focusDistance,
        'scale': scale,
        'target_geometry': targetGeometry,
        'reverse': reverse,
        'interpolation': interpolation,
      };
}
