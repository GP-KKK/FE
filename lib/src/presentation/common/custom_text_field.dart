import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fe/src/shared/theme/color_theme.dart';

class CustomTextField extends StatefulWidget {
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final String? labelText;
  final String? hintText;
  final int? maxLength;
  final int? minLines;
  final String? initialValue;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool enabled;

  const CustomTextField({
    super.key,
    this.onChanged,
    this.onSaved,
    required this.initialValue,
    required this.focusNode,
    this.maxLength,
    this.minLines,
    this.labelText,
    this.hintText,
    this.inputFormatters,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.enabled = true,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late final TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController(text: widget.initialValue);
    textController.addListener(_handleTextChange);
  }

  void _handleTextChange() {
    if (widget.onChanged != null &&
        textController.text != widget.initialValue) {
      widget.onChanged!(textController.text);
    }
  }

  @override
  void dispose() {
    textController.removeListener(_handleTextChange);
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildLabelRow(textTheme),
        const SizedBox(height: 6),
        buildTextField(textTheme),
      ],
    );
  }

  Widget buildLabelRow(TextTheme textTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (widget.labelText != null)
          Text(widget.labelText!,
              style: textTheme.headlineSmall!
                  .copyWith(color: ColorTheme.slateColor[500])),
        if (widget.maxLength != null)
          Text('${textController.text.length}/${widget.maxLength}',
              style: textTheme.bodySmall!
                  .copyWith(color: ColorTheme.slateColor[500], fontSize: 11)),
      ],
    );
  }

  Widget buildTextField(TextTheme textTheme) {
    return TextFormField(
      style: textTheme.bodyMedium!.copyWith(decorationThickness: 0),
      controller: textController,
      onSaved: widget.onSaved,
      autocorrect: false,
      focusNode: widget.focusNode,
      enabled: widget.enabled,
      minLines: widget.minLines ?? 1,
      maxLines: widget.minLines != null ? null : 1,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      textInputAction: widget.textInputAction ?? TextInputAction.next,
      decoration: buildInputDecoration(textTheme),
      inputFormatters: widget.inputFormatters,
      validator: widget.validator,
    );
  }

  InputDecoration buildInputDecoration(TextTheme textTheme) {
    return InputDecoration(
      hintText: widget.hintText ?? '',
      hintStyle:
          textTheme.bodyMedium!.copyWith(color: ColorTheme.slateColor[400]),
      errorStyle: textTheme.bodySmall!
          .copyWith(color: Colors.red, overflow: TextOverflow.visible),
      errorMaxLines: 2,
      fillColor: Colors.white,
      filled: true,
      contentPadding:
          const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
      enabledBorder: customBorder(1, ColorTheme.slateColor[400]!),
      disabledBorder: customBorder(1, ColorTheme.slateColor[300]!),
      focusedBorder: customBorder(1, ColorTheme.primaryColor),
      errorBorder: customBorder(1, Colors.red),
    );
  }

  InputBorder customBorder(double width, Color color) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(width: width, color: color),
    );
  }
}
