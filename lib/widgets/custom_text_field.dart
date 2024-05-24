import 'package:flutter/material.dart';
import 'package:food_ordering_app/utils/constant_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.suffix,
    this.prefix,
    this.onChanged,
    this.maxLines = 1,
    required this.hint,
    this.label = "",
    this.readOnly = false,
    this.showBox=false,
    this.sizedBoxHeight = 4,
    this.borderWidth = 1.6,
    required this.controller,
    this.textFieldHeight = 56,
    this.borderColor = ConstantColors.orange,
    this.textInputAction = TextInputAction.next,
  });

  final void Function(String)? onChanged;

  final int maxLines;
  final double sizedBoxHeight;
  final double borderWidth;
  final double textFieldHeight;

  final String label;
  final String hint;
  final bool readOnly;
  final bool showBox;

  final TextEditingController controller;
  final TextInputAction textInputAction;

  final Color borderColor;

  final Widget? suffix;
  final Widget? prefix;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: true,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ),
          SizedBox(
            height: sizedBoxHeight,
          ),
          SizedBox(
            height: textFieldHeight,
            child: TextField(
              controller: controller,
              minLines: 1,
              maxLines: maxLines,
              readOnly: readOnly,
              textInputAction: textInputAction,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.grey.shade300,
                hintText: hint,
                enabledBorder: showBox?OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),

                ):UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: borderColor,
                    width: borderWidth
                  ),
                ),
                hintStyle:const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: ConstantColors.opal
                ),
                prefixIcon: prefix,
              ),
              onChanged: onChanged,
            ),
          )
        ],
      ),
    );
  }
}

// class CustomSearchTextField extends StatelessWidget {
//   const CustomSearchTextField({
//     super.key,
//     this.suffix,
//     this.prefix,
//     this.onChanged,
//     this.maxLines = 1,
//     required this.hint,
//     this.label = "",
//     this.readOnly = false,
//     this.showBox=false,
//     this.sizedBoxHeight = 4,
//     this.borderWidth = 1.6,
//     required this.controller,
//     this.textFieldHeight = 56,
//     this.borderColor = ConstantColors.orange,
//     this.textInputAction = TextInputAction.next,
//   });
//
//   final void Function(String)? onChanged;
//
//   final int maxLines;
//   final double sizedBoxHeight;
//   final double borderWidth;
//   final double textFieldHeight;
//
//   final String label;
//   final String hint;
//   final bool readOnly;
//   final bool showBox;
//
//   final TextEditingController controller;
//   final TextInputAction textInputAction;
//
//   final Color borderColor;
//
//   final Widget? suffix;
//   final Widget? prefix;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             label,
//             style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
//           ),
//           SizedBox(
//             height: sizedBoxHeight,
//           ),
//           SizedBox(
//             height: textFieldHeight,
//             child: TextField(
//               controller: controller,
//               minLines: 1,
//               maxLines: maxLines,
//               readOnly: readOnly,
//               textInputAction: textInputAction,
//               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//               decoration: InputDecoration(
//                 hintText: hint,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20)
//                 ),
//                 hintStyle:const TextStyle(
//                     fontWeight: FontWeight.w400,
//                     color: ConstantColors.opal
//                 ),
//                 prefixIcon: prefix,
//               ),
//               onChanged: onChanged,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
