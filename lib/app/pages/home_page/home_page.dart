import 'package:bank_app_ui/app/core/utils/colors.dart';
import 'package:bank_app_ui/app/core/utils/size_extension.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: context.heigth * 0.6,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                              'https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?w=2000',
                            ),
                          ),
                          SizedBox(
                            width: context.width * 0.03,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Amanda Nogueira',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                              Text(
                                'Good Morning!',
                                style:
                                    TextStyle(color: ligthGrey, fontSize: 15),
                              )
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          )
                        ],
                      ),
                      Text(
                        'Total Balance',
                        style: TextStyle(
                            color: ligthGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.attach_money,
                            color: ligthGrey,
                            size: 60,
                          ),
                          const Text(
                            '450,285',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 50),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: context.heigth * 0.09,
                            width: context.width * 0.2,
                            decoration: BoxDecoration(
                                color: darkGrey,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                              child: Icon(
                                Icons.north_west,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            'Transfer',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
