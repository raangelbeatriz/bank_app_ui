import 'package:bank_app_ui/app/core/utils/colors.dart';
import 'package:bank_app_ui/app/core/utils/size_extension.dart';
import 'package:bank_app_ui/app/models/last_transaction.dart';
import 'package:bank_app_ui/app/pages/home_page/widget/last_transaction_widget.dart';
import 'package:bank_app_ui/app/pages/home_page/widget/transaction_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lastTransactionList = [
      LastTransaction(
          label: 'Amazon',
          image:
              'https://ardgowanhospice.org.uk/wp-content/uploads/2018/09/1920x1080-brands-amazon-logo.jpg',
          date: 'Monday, 28 November',
          value: 55.00,
          moneySaved: false),
      LastTransaction(
          label: 'XP Investimentos',
          image:
              'https://www.creativefabrica.com/wp-content/uploads/2019/03/Monogram-XP-Logo-Design-by-Greenlines-Studios-580x386.jpg',
          date: 'Friday, 24 November',
          value: 100.00,
          moneySaved: true),
      LastTransaction(
          label: 'Shopee',
          image:
              'https://i.pinimg.com/originals/a0/83/b6/a083b6c01e9cfe682b36ac2e9da7ff17.png',
          date: 'Sunday, 27 November',
          value: 35.55,
          moneySaved: false),
      LastTransaction(
          label: 'Barnes Noble',
          image:
              'https://www.mediaplace.us/wp-content/uploads/2018/08/Barnes-Noble-logo.png',
          date: 'Friday, 24 November',
          value: 20.00,
          moneySaved: false)
    ];
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: green,
        onPressed: () {},
        child: const Icon(
          Icons.flip,
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        elevation: 20,
        child: IconTheme(
          data: IconThemeData(color: ligthGrey),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.stacked_line_chart),
                ),
                const SizedBox(
                  width: 24,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                )
              ],
            ),
          ),
        ),
      ),
      body: SizedBox(
        height: context.heigth,
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
            SizedBox(
              height: context.heigth * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Last Transaction',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: grey),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemCount: lastTransactionList.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 20.0),
                        child: Divider(),
                      ),
                  itemBuilder: (context, index) {
                    return LastTransactionWidget(
                        label: lastTransactionList[index].label,
                        image: lastTransactionList[index].image,
                        date: lastTransactionList[index].date,
                        value: lastTransactionList[index].value,
                        moneySaved: lastTransactionList[index].moneySaved);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
