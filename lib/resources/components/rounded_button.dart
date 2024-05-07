import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String buttonName;
  final Icon? icon;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  const RoundedButton({
    super.key,
    required this.buttonName,
    this.icon,
    this.backgroundColor = Colors.blue,
    this.textStyle,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shadowColor: backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    buttonName,
                    style: textStyle,
                  ),
                ),
              ],
            )
          : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                buttonName,
                style: textStyle,
              ),
          ),
    );
  }
}
