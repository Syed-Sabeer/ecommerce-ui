import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late Duration _duration;
  late String _formattedTime;

  @override
  void initState() {
    super.initState();
    // Timer set to 1 day, 5 hours, 30 minutes
    _duration = Duration(days: 1, hours: 5, minutes: 30);
    _updateTime();
    _startTimer();
  }

  void _startTimer() {
    Future.delayed(Duration(seconds: 1), () {
      if (_duration.inSeconds > 0) {
        setState(() {
          _duration = _duration - Duration(seconds: 1);
          _updateTime();
        });
        _startTimer();
      }
    });
  }

  void _updateTime() {
    final hours = _duration.inHours;
    final minutes = _duration.inMinutes % 60;
    final seconds = _duration.inSeconds % 60;

    setState(() {
      _formattedTime = "$hours:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Time Left: ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Text(
          _formattedTime,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.redAccent,
          ),
        ),
      ],
    );
  }
}