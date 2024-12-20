import 'package:json_annotation/json_annotation.dart';

mixin BuildSettingsMixin {
  static final Map<String, dynamic> iosDefaultBuildSettings = {
    "ASSETCATALOG_COMPILER_APPICON_NAME": "AppIcon-\$(ASSET_PREFIX)", // Geändert
    "LD_RUNPATH_SEARCH_PATHS": "\$(inherited) @executable_path/Frameworks",
    "SWIFT_OBJC_BRIDGING_HEADER": "Runner/Runner-Bridging-Header.h",
    "SWIFT_VERSION": "5.0",
    "FRAMEWORK_SEARCH_PATHS": ['\$(inherited)', '\$(PROJECT_DIR)/Flutter'],
    "LIBRARY_SEARCH_PATHS": ['\$(inherited)', '\$(PROJECT_DIR)/Flutter'],
    "INFOPLIST_FILE": "Runner/Info-\$(ASSET_PREFIX).plist",
    "LAUNCH_SCREEN_STORYBOARD": "LaunchScreen\$(ASSET_PREFIX)", 
  };

  static final Map<String, dynamic> macosDefaultBuildSettings = {
    "ASSETCATALOG_COMPILER_APPICON_NAME": "AppIcon-\$(ASSET_PREFIX)", // Geändert
    "LD_RUNPATH_SEARCH_PATHS": "\$(inherited) @executable_path/Frameworks",
    "SWIFT_VERSION": "5.0",
    "FRAMEWORK_SEARCH_PATHS": ['\$(inherited)', '\$(PROJECT_DIR)/Flutter'],
    "LIBRARY_SEARCH_PATHS": ['\$(inherited)', '\$(PROJECT_DIR)/Flutter'],
    "INFOPLIST_FILE": "Runner/Info-\$(ASSET_PREFIX).plist",
  };

  @JsonKey(defaultValue: {})
  late Map<String, dynamic> buildSettings;
}
