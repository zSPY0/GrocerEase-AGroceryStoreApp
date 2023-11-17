import 'package:flutter/material.dart';

class LoadingWidget extends StatefulWidget {
  final String message;
  const LoadingWidget({super.key, required this.message});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.green,
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Row(
          children: [
            const SizedBox(width: 10,),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            const SizedBox(width: 10,),
            Text(widget.message, style: const TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
