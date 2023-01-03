//*================[ app sources ]=============================//

export 'main.dart';
export 'infrastructure/infrastructure.dart';
export 'core/core.dart';
export 'presentation/presentation.dart';
export 'domain/domain.dart';

//*================[ internel packages  ]=============================//

export 'package:flutter/material.dart';
export 'package:flutter/foundation.dart';
import 'dart:developer' as dev;

//*================[ externel packages ]=============================//

export 'package:get/get.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:on_audio_query/on_audio_query.dart';
export 'package:path_provider/path_provider.dart';
export 'package:hive/hive.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:just_audio/just_audio.dart';
export 'package:just_audio_background/just_audio_background.dart';

//*================[ Methords ]=====================================//

//!----------------[ this metord for console log ]------------
write(String text) => dev.log(text);
//!-----------------------------------------------------------
