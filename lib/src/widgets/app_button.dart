import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_twitch_clone/src/theme/app_colors.dart';

class AppButton extends StatefulWidget {
  /// Specific to [CupertinoButton]
  final Function onPressed;

  // Additional
  final bool full;
  final bool primary;
  final Widget child;
  final bool loading;
  final String text;
  final bool disabled;

  AppButton({
    Key key,
    @required this.onPressed,
    this.full = false,
    this.primary = false,
    this.child,
    this.loading = false,
    this.disabled = false,
  })  : text = null,
        super(key: key);

  AppButton.text({
    Key key,
    @required this.onPressed,
    this.full = false,
    this.primary = false,
    this.text,
    this.loading = false,
    this.disabled = false,
  })  : child = null,
        super(key: key);

  @override
  State<StatefulWidget> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _tapInProgress = false;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _tapInProgress = true;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _tapInProgress = false;
    });
  }

  void _onTapCancel() {
    setState(() {
      _tapInProgress = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (widget.disabled) ? null : widget.onPressed,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: Container(
        child: buildButtonContent(),
        padding: EdgeInsets.all(10),
        width: (widget.full) ? double.infinity : 0.0,
        decoration: BoxDecoration(
          color: getBackgroundColor(),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
    );
  }

  Widget buildButtonContent() {
    if (widget.loading) {
      // If the button is loading
      return SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          strokeWidth: 3,
          valueColor: AlwaysStoppedAnimation(AppColors.black),
        ),
      );
    } else {
      // Else, if we defined a text
      if (widget.text != null) {
        return Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 16,
              color: getTextColor(),
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }

      // Default return the child
      return Center(child: widget.child);
    }
  }

  Color getTextColor() {
    if (widget.disabled) {
      return AppColors.buttonDisabledText;
    } else if (widget.primary) {
      return Colors.white;
    } else {
      return AppColors.buttonText;
    }
  }

  Color getBackgroundColor() {
    if (widget.disabled) {
      return AppColors.buttonDisabledBackground;
    } else if (widget.primary && _tapInProgress) {
      return AppColors.buttonBackgroundPrimaryActive;
    } else if (widget.primary) {
      return AppColors.primary;
    } else if (!widget.primary && _tapInProgress) {
      return AppColors.buttonBackgroundActive;
    } else {
      return AppColors.buttonBackground;
    }
  }
}
