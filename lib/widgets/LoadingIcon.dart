import 'package:flutter/material.dart';

class LoadingIcon extends StatefulWidget {
  final IconData iconData;
  final Color color;
  final double size;

  LoadingIcon({
    required this.iconData,
    this.color = Colors.blue,
    this.size = 48.0,
  });

  @override
  _LoadingIconState createState() => _LoadingIconState();
}

class _LoadingIconState extends State<LoadingIcon> {
  bool isLoading = false;

  void toggleLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: isLoading
              ? CircularProgressIndicator()
              : Icon(
                  widget.iconData,
                  size: widget.size,
                  color: widget.color,
                ),
          onPressed: toggleLoading,
        ),
        Text(isLoading ? "Cargando..." : "Listo"),
      ],
    );
  }
}
