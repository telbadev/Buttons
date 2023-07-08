import 'package:flutter/material.dart';

class GlowingButton extends StatefulWidget {
  final Color color1;
  final Color color2;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? height;
  final double? width;
  final Widget? child;
  const GlowingButton(
      { this.color1 = Colors.cyan, this.color2 = Colors.greenAccent, this.padding,  this.margin, this.height, this.width, this.child,})
      : super();
  @override
  _GlowingButtonState createState() => _GlowingButtonState();
}

class _GlowingButtonState extends State<GlowingButton> {
  var glowing = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          glowing = !glowing;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: widget.height,
        margin: widget.margin,
        padding: widget.padding,
        width: widget.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: LinearGradient(
              colors:   [
                widget.color1,
                widget.color2,
              ],
            ),
            boxShadow:
            glowing?
            [
              BoxShadow(
                color: widget.color1.withOpacity(0.6),
                spreadRadius: .4,
                blurRadius: 4,
              ),
              BoxShadow(
                color: widget.color2.withOpacity(0.6),
                spreadRadius: .4,
                blurRadius: 4,
              ),
            ]:
            [
            ]
        ),
        child: widget.child,
      ),
    );
  }
}