import 'package:flutter/material.dart';

import '../config/size.dart';
import '../config/style.dart';

class AdderPage extends StatefulWidget {
  const AdderPage({Key? key}) : super(key: key);

  @override
  State<AdderPage> createState() => _AdderPageState();
}

class _AdderPageState extends State<AdderPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    Size().init(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$counter",
              style: kPoppinsThin.copyWith(
                color: kBlue,
                fontSize: Size.blockSizeHorizontal! * 8,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Increase",
                style: kPoppinsThin.copyWith(
                  color: kLightWhite,
                  fontSize: Size.blockSizeHorizontal! * 8,
                ),
              ),
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
