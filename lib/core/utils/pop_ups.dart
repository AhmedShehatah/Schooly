import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/web.dart';
import 'package:toastification/toastification.dart';

import '../../app/di/injection_container.dart';
import '../cubits/media_download_cubit.dart';
import '../localization/localization_manager.dart';
import '../states/base_state.dart';
import '../widgets/text/custom_text.dart';
import 'extensions.dart';

class PopUps {
  static void showDownloadDialog(BuildContext context, String fileName) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          child: ListTile(
            leading:
                BlocConsumer<DownloadAttachmentCubit, BaseState<Uint8List>>(
              bloc: sl<DownloadAttachmentCubit>(),
              listener: (context, state) => state.mapOrNull(
                success: (data) async {
                  final result = await FilePicker.platform.saveFile(
                    bytes: data.data,
                    fileName: fileName,
                  );
                  Logger().i(result);
                  context.pop();

                  if (result != null) {
                    lz.successfullyDownloaded
                        .showToast(type: ToastificationType.success);
                  }
                  return Future.value(0);
                },
                failure: (failure) => failure.failure.message
                    .showToast(type: ToastificationType.error),
              ),
              builder: (context, state) => CircularProgressIndicator(
                value: state.mapOrNull(progress: (data) => data.progress),
              ),
            ),
            title: CustomText.s18(lz.downloading),
          ),
        );
      },
    );
  }
}
