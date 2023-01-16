//*================[ app sources ]=============================//

export 'main.dart';
export 'infrastructure/infrastructure.dart';
export 'core/core.dart';
export 'presentation/presentation.dart';
export 'domain/domain.dart';

//*================[ internel packages  ]=============================//

export 'package:flutter/material.dart';
export 'package:flutter/cupertino.dart' show CupertinoActionSheet,CupertinoActionSheetAction,showCupertinoModalPopup;
export 'package:flutter/foundation.dart';
export 'dart:convert';
export 'package:flutter/services.dart';
export 'dart:math';
import 'dart:developer' as dev;

//*================[ externel packages ]=============================//

export 'package:get/get.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:on_audio_query/on_audio_query.dart';
export 'package:path_provider/path_provider.dart';
export 'package:hive/hive.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:just_audio/just_audio.dart';
export 'package:just_audio_background/just_audio_background.dart';
export 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
export 'package:json_annotation/json_annotation.dart';
export 'package:internet_connection_checker/internet_connection_checker.dart';
export 'package:dio/dio.dart' show DioError,Dio,Options;
export 'package:dartz/dartz.dart' show Either,Option,some,left,right,none;
export 'package:cached_network_image/cached_network_image.dart';
export 'package:shimmer/shimmer.dart';

//*================[ Methords ]=====================================//

//!----------------[ this metord for console log ]------------
write(String text) => dev.log(text);
//!-----------------------------------------------------------
