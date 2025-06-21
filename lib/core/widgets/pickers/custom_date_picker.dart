import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../app/di/injection_container.dart';
import '../../localization/localization_manager.dart';
import '../../utils/validators.dart';
import '../text/custom_text.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({
    super.key,
    required this.value,
    this.title,
  });
  final ValueNotifier<DateTime?> value;
  final String? title;
  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  final _controller = TextEditingController();

  @override
  void initState() {
    if (widget.value.value != null) {
      _controller.text = DateFormat('dd-MM-yyyy').format(widget.value.value!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText.s14(widget.title ?? lz.date),
        8.verticalSpace,
        TextFormField(
          controller: _controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          readOnly: true,
          decoration: InputDecoration(
            suffixIcon: const Icon(Icons.calendar_today_rounded),
            hintText: lz.choose(lz.date),
          ),
          validator: (value) => sl<Validators>().required(
            value,
            title: lz.date,
          ),
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 30)),
            );
            if (date == null) {
              return;
            }
            widget.value.value = date;
            _controller.text = DateFormat('dd-MM-yyyy').format(date);
          },
        ),
      ],
    );
  }
}
