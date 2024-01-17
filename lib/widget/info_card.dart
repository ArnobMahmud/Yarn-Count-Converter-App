import 'package:flutter/material.dart';
import '../models/conversion_info.dart';

class InfoCard extends StatelessWidget {
  final CountInfo? countInfo;
  const InfoCard({super.key, required this.countInfo});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
          color: Color.fromARGB(240, 74, 44, 42),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 0.0),
              blurRadius: 5.0,
              spreadRadius: 3.0,
              color: Color(0xffb29882),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text(
              countInfo!.title!,
              style: const TextStyle(
                color: Color(0xffedd59e),
                fontSize: 18,
              ),
            ),
            const Spacer(),
            Text(
              countInfo!.desc!,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xffe2c28e),
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
