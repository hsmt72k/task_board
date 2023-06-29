import 'package:flutter/material.dart';
import 'package:task_boad/config/size.dart';

import '../config/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size().init(context);

    return Scaffold(
      body: Container(
        color: Colors.white10,
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                      width: 51,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: kLightBlue,
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome Back!',
                          style: kPoppinsBold.copyWith(
                            fontSize: Size.blockSizeHorizontal! * 4,
                          )
                        ),
                        Text(
                            'Monday, 3 October',
                            style: kPoppinsRegular.copyWith(
                              color: kGrey,
                              fontSize: Size.blockSizeHorizontal! * 3,
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Home',
                      style: kPoppinsThin.copyWith(
                        fontSize: Size.blockSizeHorizontal! * 8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
