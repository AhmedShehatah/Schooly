import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../core/cubits/media_download_cubit.dart';
import '../../../core/cubits/media_upload_cubit.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/states/base_state.dart';
import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/enums/enums.dart';
import '../../../core/theme/palette.dart';
import '../../../core/utils/pop_ups.dart';
import '../../../core/widgets/buttons/custom_button.dart';
import '../../../core/widgets/fields/custom_input.dart';
import '../../../core/widgets/images/custom_image.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/media/entities/uploaded_file.dart';
import '../../../domain/profile/entities/profile.dart';
import '../../../domain/profile/use_cases/update_profile_use_case.dart';
import '../cubits/profile_cubit.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _birthDate = TextEditingController();
  final _gender = TextEditingController();
  final _grade = TextEditingController();
  final _role = TextEditingController();
  final _address = TextEditingController();
  String? uploadedImageName;

  @override
  void initState() {
    super.initState();
    sl<ProfileCubit>().fetchProfile();
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
                  uploadedImageName = data.data.storedFileName;
                  sl<ProfileCubit>().updateProfile(
                    params: UpdateProfileParams(
                      name: _name.text,
                      email: _email.text,
                      profilePictureUrl: uploadedImageName!,
                    ),
                  );
                });
              },
            ),
          ],
          child: BlocConsumer<ProfileCubit, BaseState<Profile>>(
            bloc: sl<ProfileCubit>(),
            listener: (context, state) {},
            builder: (context, state) {
              return state.maybeWhen(
                success: (profile) {
                  _name.text = profile.name;
                  _email.text = profile.email;
                  _phone.text = profile.phoneNumber.isEmpty
                      ? lz.notAvailable
                      : profile.phoneNumber;
                  _birthDate.text =
                      DateFormat('dd-MM-yyyy').format(profile.dateOfBirth);
                  if (profile.gender == Gender.female) _gender.text = lz.female;
                  if (profile.gender == Gender.male) _gender.text = lz.male;
                  _grade.text =
                      profile.studentExtra?.grade.toString() ?? lz.notAvailable;
                  if (profile.role == UserType.teacher) _role.text = lz.teacher;
                  if (profile.role == UserType.student) _role.text = lz.student;
                  _address.text =
                      profile.studentExtra?.address ?? lz.notAvailable;

                  return Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              BlocBuilder<DownloadAttachmentCubit,
                                  BaseState<Uint8List>>(
                                bloc: sl<DownloadAttachmentCubit>(),
                                builder: (context, downloadState) {
                                  return downloadState.maybeWhen(
                                    success: (data) => CustomImage.circular(
                                      radius: 108.r,
                                      memoryImageBytes: data,
                                    ),
                                    failure: (_) => CustomImage.circular(
                                      radius: 108.r,
                                      image: Assets.images.profile.path,
                                    ),
                                    loading: () => const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                    orElse: () => CustomImage.circular(
                                      radius: 108.r,
                                      image: Assets.images.profile.path,
                                    ),
                                  );
                                },
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
                          buildField(lz.name, _name, isEditable: true),
                          buildField(lz.email, _email, isEditable: true),
                          buildField(lz.phone, _phone),
                          buildField(lz.birthDate, _birthDate, isDate: true),
                          buildField(lz.gender, _gender),
                          buildField(lz.role, _role),
                          buildField(lz.grade, _grade),
                          buildField(lz.address, _address),
                          30.verticalSpace,
                          CustomButton(
                            text: lz.update,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                sl<ProfileCubit>().updateProfile(
                                  params: UpdateProfileParams(
                                    name: _name.text,
                                    email: _email.text,
                                    profilePictureUrl: uploadedImageName ??
                                        profile.profilePictureUrl,
                                  ),
                                );
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
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildField(String title, TextEditingController controller,
      {bool isDate = false, bool isEditable = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText.s14(title, color: Palette.character.primary85),
        10.verticalSpace,
        CustomInput(
          controller: controller,
          onPressed: isDate && isEditable
              ? () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1990),
                    lastDate: DateTime.now(),
                  );
                  if (date != null) {
                    _birthDate.text = DateFormat('dd-MM-yyyy').format(date);
                    setState(() {});
                  }
                }
              : null,
          editable: isEditable,
        ),
        20.verticalSpace,
      ],
    );
  }
}
