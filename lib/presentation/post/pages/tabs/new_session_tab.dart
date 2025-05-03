import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/enums/enums.dart';
import '../../../../core/localization/localization_manager.dart';
import '../../../../core/utils/dimensions.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/drop_down/custom_dropdown.dart';
import '../../../../core/widgets/fields/custom_input.dart';
import '../../../../core/widgets/pickers/custom_date_picker.dart';
import '../../../../core/widgets/pickers/custom_time_picker.dart';

class NewSessionTab extends StatefulWidget {
  const NewSessionTab({super.key});

  @override
  State<NewSessionTab> createState() => _NewSessionTabState();
}

class _NewSessionTabState extends State<NewSessionTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimensions.defaultPagePadding,
      child: Form(
        child: Column(
          children: [
            CustomDropdown(
              title: lz.lessonType,
              items: LessonType.values,
              itemToString: (item) => item?.toName,
              value: ValueNotifier(null),
            ),
            16.verticalSpace,
            CustomInput(
              title: lz.sessionTitle,
              backgroundColor: Colors.transparent,
            ),
            16.verticalSpace,
            CustomDatePicker(
              value: ValueNotifier(null),
            ),
            16.verticalSpace,
            Row(
              children: [
                Expanded(
                    child: CustomTimePicker(
                        value: ValueNotifier(null), title: lz.from)),
                8.horizontalSpace,
                Expanded(
                    child: CustomTimePicker(
                        value: ValueNotifier(null), title: lz.to)),
              ],
            ),
            16.verticalSpace,
            CustomButton(text: lz.post, onPressed: () {})
          ],
        ),
      ),
    );
  }
}
