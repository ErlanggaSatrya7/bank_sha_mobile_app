import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  final bool isShowTitle;

  const CustomFormField({
    required this.title,
    this.obscureText = false,
    this.controller,
    this.isShowTitle = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(isShowTitle) Text(title, style: blackTextStyle.copyWith(fontWeight: medium)),
        if(isShowTitle) SizedBox(height: 8),
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            hintText: !isShowTitle ? title : null,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
