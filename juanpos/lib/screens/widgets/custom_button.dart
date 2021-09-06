import 'package:juanpos/screens/utils/style.dart';
import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final bool disabled;
  final bool busy;
  final Widget? leading;
  final bool outline;

  const CustomButton(
      {Key? key,
      required this.title,
      this.disabled = false,
      this.busy = false,
      this.leading,
      this.outline = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      width: double.infinity,
      height: 60,
      alignment: Alignment.center,
      decoration: !outline
          ? BoxDecoration(
              color: disabled ? kcMediumGreyColor : kcPrimaryColor ,
              borderRadius: BorderRadius.circular(8),
            )
          : BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: kcPrimaryColor, width: 1),
            ),
      child: busy
          ? CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                Colors.white,
              ),
              strokeWidth: 8,
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (leading != null) leading!,
                if (leading != null)
                  SizedBox(
                    width: 5,
                  ),
                Text(
                  title,
                  style: bodyStyle.copyWith(
                    fontWeight: !outline ? FontWeight.bold : FontWeight.w400,
                    color: !outline ? Colors.white : kcPrimaryColor,
                  ),
                ),
              ],
            ),
    ));
  }
}
