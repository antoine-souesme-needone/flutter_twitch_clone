import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_twitch_clone/src/theme/app_colors.dart';

class AppInput extends StatefulWidget {
  final String label;
  final bool isPassword;
  final bool autocorrect;
  final TextInputType type;
  final TextEditingController controller;

  const AppInput({
    Key key,
    this.label = '',
    this.isPassword = false,
    this.type = TextInputType.text,
    @required this.controller,
    this.autocorrect = false,
  }) : super(key: key);

  @override
  _AppInputState createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool _focused = false;
  bool _obscureText = false;
  FocusNode _node;

  @override
  void initState() {
    super.initState();

    // Focus
    _node = FocusNode(debugLabel: 'TextField');
    _node.addListener(_handleFocusChange);

    // Password
    if (widget.isPassword) {
      setState(() {
        _obscureText = true;
      });
    }
  }

  void _handleFocusChange() {
    if (_node.hasFocus != _focused) {
      setState(() {
        _focused = _node.hasFocus;
      });
    }
  }

  void _onTap() {
    _node.requestFocus();
  }

  @override
  void dispose() {
    _node.removeListener(_handleFocusChange);
    _node.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.label,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 5),
        TextField(
          focusNode: _node,
          onTap: _onTap,
          keyboardType: widget.type,
          obscureText: _obscureText,
          autocorrect: widget.autocorrect,
          decoration: InputDecoration(
            filled: true,
            fillColor: (_focused) ? AppColors.mainBackground : AppColors.inputIdleBackground,
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 11),

            // Suffix
            suffix: buildSuffixIcon(),

            // Borders
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.inputIdleBackground),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary, width: 1.5),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSuffixIcon() {
    if (widget.isPassword) {
      return Padding(
        padding: EdgeInsetsDirectional.only(end: 4, top: 1),
        child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(
                _obscureText ? FeatherIcons.eye : FeatherIcons.eyeOff,
                size: 17,
              ),
          ),
      );
    }

    return null;
  }
}
