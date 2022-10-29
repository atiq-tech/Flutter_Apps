import 'package:day_19/my_colors/color.dart';
import 'package:day_19/widgets/message_widget.dart';
import 'package:day_19/widgets/recent_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Chat with\nyour friends",
                  style: TextStyle(
                      color: kPrimaryLight,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
              ),
              RecentWidget(),
              SizedBox(height: 20),
              MessageWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
