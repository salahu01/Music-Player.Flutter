//*================[ app sources ]=============================//

export 'main.dart';
export './infrastructure/infrastructure.dart';
export './presentation/presentation.dart';

//*================[ internel packages  ]=============================//

export 'package:flutter/material.dart';
export 'package:flutter/foundation.dart';
import 'dart:developer' as dev;

//*================[ externel packages ]=============================//

export 'package:get/get.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:on_audio_query/on_audio_query.dart';
export 'package:path_provider/path_provider.dart';

//*================[ Methords ]=====================================//

//!----------------[ this metord for console log ]------------
write(String text) => dev.log(text);
//!-----------------------------------------------------------
