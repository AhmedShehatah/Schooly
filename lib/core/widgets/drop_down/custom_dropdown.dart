import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../localization/localization_manager.dart';
import '../../theme/palette.dart';
import '../../utils/extensions.dart';
import '../text/custom_text.dart';

class CustomDropdown<T> extends StatefulWidget {
  const CustomDropdown({
    super.key,
    required this.title,
    required this.items,
    required this.itemToString,
    this.hint,
    required this.value,
    this.selectedItems,
    this.onChanged,
    this.required = false,
    this.loading = false,
    this.showAsterisk = false,
    this.showTitle = true,
    this.enabled = true,
    this.isMultiSelect = false, // Add multi-select support
    this.onMultiSelectChanged,
  });

  final String title;
  final bool enabled;
  final List<T> items;
  final String? Function(T? item) itemToString;
  final String? hint;
  final bool required;
  final bool loading;
  final ValueNotifier<T?> value;
  final ValueNotifier<List<T>>? selectedItems;
  final void Function(T? value)? onChanged;
  final void Function(List<T>? value)? onMultiSelectChanged;
  final bool showAsterisk;
  final bool showTitle;
  final bool isMultiSelect; // Multi-select flag

  @override
  State<CustomDropdown<T>> createState() => _CustomDropdownState<T>();
}

class _CustomDropdownState<T> extends State<CustomDropdown<T>> {
  final _controller = TextEditingController();
  final List<T> _selectedItems = []; // Store selected items for multi-select

  bool get _foundValue => widget.items.contains(widget.value.value);

  @override
  void initState() {
    super.initState();
    _selectedItems.addAll(widget.selectedItems?.value ?? []);
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildTitle() {
    if (!widget.showTitle) return const SizedBox.shrink();
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText.s14(
          widget.title,
          color: Colors.black,
        ),
        if (widget.required && widget.showAsterisk)
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              4.horizontalSpace,
              CustomText.s14(
                '*',
                color: Palette.red.shade800,
                bold: true,
              ),
            ],
          ),
      ],
    );
  }

  Widget _buildDropdown() {
    return IgnorePointer(
      ignoring: widget.loading || widget.enabled == false,
      child: DropdownButtonHideUnderline(
        child: ValueListenableBuilder(
          valueListenable: widget.value,
          builder: (context, value, child) => DropdownButtonFormField2<T>(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            value: _foundValue ? value : null,
            isExpanded: true,
            decoration: InputDecoration.collapsed(
              hintText: '',
              enabled: widget.enabled,
            ),
            hint: _buildHint(),
            buttonStyleData: _buildButtonStyleData(),
            iconStyleData: _buildIconStyleData(),
            validator: _buildValidator,
            selectedItemBuilder: _buildSelectedItemBuilder,
            items: _buildDropdownItems(),
            onChanged: _onChanged,
          ),
        ),
      ),
    );
  }

  Widget _buildHint() {
    return CustomText.s14(
      widget.hint ?? lz.choose(widget.title),
      bold: true,
      color: widget.items.isEmpty
          ? Palette.neutral.color6
          : Palette.neutral.color8,
    );
  }

  ButtonStyleData _buildButtonStyleData() {
    return ButtonStyleData(
      height: 42.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(borderRadius: 11.r.borderRadius),
    );
  }

  IconStyleData _buildIconStyleData() {
    return IconStyleData(
      icon: widget.loading
          ? SizedBox(
              width: 18.w,
              height: 18.h,
              child: Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2.w,
                ),
              ),
            )
          : const Icon(Icons.keyboard_arrow_down_rounded),
      iconSize: 18.w,
      iconEnabledColor: Palette.neutral.color8,
      iconDisabledColor: Colors.grey,
    );
  }

  String? _buildValidator(T? value) {
    if (widget.required && widget.isMultiSelect && _selectedItems.isEmpty) {
      return lz.mustEnter(widget.title);
    }

    if (widget.required && value == null && !widget.isMultiSelect) {
      return lz.mustEnter(widget.title);
    }
    return null;
  }

  List<Widget> _buildSelectedItemBuilder(BuildContext context) {
    if (widget.isMultiSelect) {
      return [
        Container(
          alignment: AlignmentDirectional.center,
          child: Text(
            _selectedItems.map((item) => widget.itemToString(item)).join(', '),
            style: TextStyle(
              fontSize: 14.sp,
              overflow: TextOverflow.ellipsis,
              color: Palette.neutral.color8,
            ),
            maxLines: 1,
          ),
        ),
      ];
    } else {
      return widget.items.map((item) {
        return CustomText.s14(
          widget.itemToString(item) ?? widget.hint ?? lz.choose(widget.title),
          color:
              widget.enabled ? Palette.neutral.color8 : Palette.neutral.color4,
          bold: true,
        );
      }).toList();
    }
  }

  List<DropdownMenuItem<T>> _buildDropdownItems() {
    return widget.items.map((T item) {
      return DropdownMenuItem<T>(
        value: item,
        enabled:
            !widget.isMultiSelect, // Disable default onTap for multi-select
        child: widget.isMultiSelect
            ? _buildMultiSelectItem(item) // Build multi-select item
            : CustomText.s14(
                widget.itemToString(item) ??
                    widget.hint ??
                    lz.choose(widget.title),
                color: Palette.neutral.color8,
                bold: true,
              ),
      );
    }).toList();
  }

  Widget _buildMultiSelectItem(T item) {
    return StatefulBuilder(builder: (context, menuSetState) {
      final isSelected = _selectedItems.contains(item);
      return InkWell(
        onTap: () {
          setState(() {
            if (isSelected) {
              _selectedItems.remove(item);
            } else {
              _selectedItems.add(item);
            }
          });
          menuSetState(() {
            widget.onMultiSelectChanged?.call(_selectedItems);

            widget.selectedItems?.value = _selectedItems;
          });
        },
        child: Container(
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Icon(
                isSelected
                    ? Icons.check_box_outlined
                    : Icons.check_box_outline_blank,
                color: Palette.neutral.color8,
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: CustomText.s14(
                  widget.itemToString(item) ??
                      widget.hint ??
                      lz.choose(widget.title),
                  color: Palette.neutral.color8,
                  bold: true,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  void _onChanged(T? value) {
    if (!widget.isMultiSelect) {
      widget.value.value = value;
      widget.onChanged?.call(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        if (widget.showTitle) 8.verticalSpace,
        _buildDropdown(),
      ],
    );
  }
}
