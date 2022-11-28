import 'package:bank_app_ui/app/core/utils/colors.dart';
import 'package:bank_app_ui/app/core/utils/size_extension.dart';
import 'package:bank_app_ui/app/pages/home_page/widget/transaction_widget.dart';
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
                  padding: const EdgeInsets.only(
                      right: 20.0, left: 20.0, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          side: BorderSide(width: 1, color: ligthGrey),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'Choose Card',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Wrap(
                        spacing: 10,
                        children: const [
                          TransactionWidget(
                            label: 'Transefer',
                            icon: Icons.north_west,
                          ),
                          TransactionWidget(
                            label: 'Receive',
                            icon: Icons.south_east,
                          ),
                          TransactionWidget(
                            label: 'Top Up',
                            icon: Icons.add_box_outlined,
                          ),
                          TransactionWidget(
                            label: 'More',
                            icon: Icons.apps,
                          ),
                        ],
                      ),
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
