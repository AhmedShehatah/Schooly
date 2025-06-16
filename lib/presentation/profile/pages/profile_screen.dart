import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../core/states/base_state.dart';
import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/enums/enums.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/buttons/custom_button.dart';
import '../../../core/widgets/fields/custom_input.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/profile/entities/profile.dart';
import '../../../domain/profile/entities/update_profile.dart';
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

  @override
  void initState() {
    super.initState();
    sl<ProfileCubit>().fetchProfile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText.s16('الملف الشخصي',
            color: Palette.character.primary85, bold: true),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        child: BlocConsumer<ProfileCubit, BaseState<Profile>>(
          bloc: sl<ProfileCubit>(),
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeWhen(
              success: (profile) {
                _name.text = profile.name;
                _email.text = profile.email;
                profile.phoneNumber == ''
                    ? _phone.text = 'غير متاح'
                    : _phone.text = profile.phoneNumber;
                _birthDate.text =
                    DateFormat('dd-MM-yyyy').format(profile.dateOfBirth);
                if (profile.gender == Gender.female) _gender.text = 'أنثى';
                if (profile.gender == Gender.male) _gender.text = 'ذكر';
                _grade.text = profile.studentExtra.grade.toString();
                if (profile.role == UserType.teacher) _role.text = 'معلم';
                if (profile.role == UserType.student) _role.text = 'طالب';
                _address.text = profile.studentExtra.address;

                return Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            /// TODO: Replace with api image
                            CircleAvatar(
                              radius: 54.r,
                              backgroundColor: Palette.green.shade400,
                              backgroundImage:
                                  AssetImage(Assets.images.profile.path),
                            ),
                            CircleAvatar(
                              radius: 16.r,
                              backgroundColor: Palette.neutral.color1,
                              child: IconButton(
                                iconSize: 18.sp,
                                color: Palette.primary.color4,
                                onPressed: () {},
                                icon: const Icon(Icons.camera_alt),
                              ),
                            )
                          ],
                        ),
                        30.verticalSpace,
                        buildField('الأسم', _name, isEditable: true),
                        buildField('البريد الإلكتروني', _email,
                            isEditable: true),
                        buildField('رقم الهاتف', _phone),
                        buildField('تاريخ الميلاد', _birthDate, isDate: true),
                        buildField('النوع', _gender),
                        buildField('الدور', _role),
                        buildField('الصف', _grade),
                        buildField('العنوان', _address),
                        30.verticalSpace,
                        CustomButton(
                          text: 'تحديث',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              final updatedProfile = UpdateProfile(
                                profilePictureUrl: '',
                                name: _name.text,
                                email: _email.text,
                              );
                              sl<ProfileCubit>().updateProfile(updatedProfile);
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
