import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
import '../../theme/palette.dart';
import '../../utils/validators.dart';
import '../text/custom_text.dart';

class CustomTimePicker extends StatefulWidget {
  const CustomTimePicker({
    super.key,
    required this.value,
    required this.title,
    this.required = false,
  });
  final ValueNotifier<String?> value;
  final String title;
  final bool required;
  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  final _controller = TextEditingController();

  // dependencies
  final _validators = sl<Validators>();

  @override
  void initState() {
    if (widget.value.value != null) {
      _controller.text = widget.value.value!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText.s14(
          widget.title,
        ),
        8.verticalSpace,
        TextFormField(
          controller: _controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          readOnly: true,
          decoration: InputDecoration(
              suffixIcon: const Icon(Icons.timer_outlined),
              hintText: '12:00',
              hintStyle: TextStyle(
                color: Palette.neutral.color6,
              )),
          validator: widget.required
              ? (value) => _validators.required(
                    value,
                    title: widget.title,
                  )
              : null,
          onTap: () async {
            final date = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );
            if (date == null) {
              return;
            }

            widget.value.value = '${date.hour}:${date.minute}';
            _controller.text = date.format(context);
          },
        ),
      ],
    );
  }
}
