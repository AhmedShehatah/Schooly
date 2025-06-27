import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../core/cubits/media_download_cubit.dart';
import '../../../core/cubits/media_upload_cubit.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/states/base_state.dart';
import '../../../app/di/injection_container.dart';
import '../../../core/enums/enums.dart';
import '../../../core/theme/palette.dart';
import '../../../core/utils/pop_ups.dart';
import '../../../core/widgets/buttons/custom_button.dart';
import '../../../core/widgets/fields/custom_input.dart';
import '../../../core/widgets/images/custom_image.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/media/entities/uploaded_file.dart';
import '../../../domain/profile/entities/profile.dart';
import '../cubits/profile_cubit.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _cubit = sl<ProfileCubit>();

  @override
  void initState() {
    super.initState();
    _cubit.fetchProfile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText.s16(lz.profile,
            color: Palette.character.primary85, bold: true),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        child: MultiBlocListener(
          listeners: [
            BlocListener<ProfileCubit, BaseState<Profile>>(
              bloc: sl<ProfileCubit>(),
              listener: (context, state) {
                state.maybeWhen(
                  success: (profile) {
                    sl<DownloadAttachmentCubit>().downloadAttachment(
                      url: profile.profilePictureUrl ?? '',
                      fileName: profile.profilePictureUrl ?? '',
                    );
                  },
                  orElse: () {},
                );
              },
            ),
            BlocListener<MediaUploadCubit, BaseState<UploadedFile>>(
              bloc: sl<MediaUploadCubit>(),
              listener: (context, state) {
                state.mapOrNull(success: (data) {
                  _cubit.updateParams(
                      profilePictureUrl: data.data.storedFileName);
                  _cubit.updateProfile();
                });
              },
            ),
          ],
          child: BlocBuilder<ProfileCubit, BaseState<Profile>>(
            bloc: sl<ProfileCubit>(),
            builder: (context, state) {
              return state.maybeWhen(
                success: (profile) {
                  return Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImage.circular(
                                radius: 108.r,
                                image: profile.profilePictureUrl ?? '',
                              ),
                              CircleAvatar(
                                radius: 16.r,
                                backgroundColor: Palette.neutral.color1,
                                child: IconButton(
                                  iconSize: 18.sp,
                                  color: Palette.primary.color4,
                                  onPressed: () async {
                                    final image =
                                        await PopUps.pickImage(context);
                                    if (image == null) return;
                                    sl<MediaUploadCubit>()
                                        .uploadAttachment(path: image.path);
                                  },
                                  icon: const Icon(Icons.camera_alt),
                                ),
                              )
                            ],
                          ),
                          30.verticalSpace,
                          CustomInput(
                            title: lz.name,
                            initialValue: profile.name,
                            required: false,
                            onChanged: (value) =>
                                _cubit.updateParams(name: value),
                          ),
                          20.verticalSpace,
                          CustomInput(
                            title: lz.email,
                            initialValue: profile.email,
                            required: false,
                            onChanged: (value) =>
                                _cubit.updateParams(email: value),
                          ),
                          20.verticalSpace,
                          CustomInput(
                              title: lz.phone,
                              initialValue: profile.phoneNumber.isEmpty
                                  ? lz.notAvailable
                                  : profile.phoneNumber,
                              required: false,
                              editable: false),
                          20.verticalSpace,
                          CustomInput(
                              title: lz.birthDate,
                              initialValue: DateFormat('dd-MM-yyyy')
                                  .format(profile.dateOfBirth),
                              required: false,
                              editable: false),
                          20.verticalSpace,
                          CustomInput(
                              title: lz.gender,
                              initialValue: (profile.gender == Gender.female)
                                  ? lz.female
                                  : lz.male,
                              required: false,
                              editable: false),
                          20.verticalSpace,
                          CustomInput(
                              title: lz.role,
                              initialValue: profile.role == UserType.teacher
                                  ? lz.teacher
                                  : lz.student,
                              required: false,
                              editable: false),
                          20.verticalSpace,
                          CustomInput(
                              title: lz.grade,
                              initialValue:
                                  profile.studentExtra?.grade.toString() ??
                                      lz.notAvailable,
                              required: false,
                              editable: false),
                          20.verticalSpace,
                          CustomInput(
                              title: lz.address,
                              initialValue: profile.studentExtra?.address ??
                                  lz.notAvailable,
                              required: false,
                              editable: false),
                          30.verticalSpace,
                          CustomButton(
                            text: lz.update,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                sl<ProfileCubit>().updateProfile();
                              }
                            },
                            enabled: true,
                          ),
                          60.verticalSpace,
                        ],
                      ),
                    ),
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                orElse: () {
                  return const SizedBox.shrink();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
