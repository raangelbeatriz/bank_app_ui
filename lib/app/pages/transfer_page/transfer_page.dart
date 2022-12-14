import 'package:bank_app_ui/app/core/utils/colors.dart';
import 'package:bank_app_ui/app/core/utils/size_extension.dart';
import 'package:bank_app_ui/app/pages/transfer_page/wigdet/calculator_button.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/circle_avatar_widget.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _calculatorItems = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '.',
      '0',
      'x',
    ];

    final textController = TextEditingController();
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Transfer'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatarWidget(
              radiusBorder: 46,
              radiusInnerCircle: 40,
              image:
                  'https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?w=2000',
            ),
            SizedBox(
              height: context.heigth * 0.02,
            ),
            const Text(
              'Fernanda Macedo',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: context.heigth * 0.01,
            ),
            Text(
              'HSBC - 4267 0987 1234 56789',
              style: TextStyle(color: ligthGrey, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: TextField(
                controller: textController,
                readOnly: true,
                style: const TextStyle(color: Colors.white, fontSize: 35),
                decoration: InputDecoration(
                  fillColor: ligthGrey,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ligthGrey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ligthGrey),
                  ),
                  prefixIcon: Icon(
                    Icons.attach_money,
                    color: ligthGrey,
                    size: 40,
                  ),
                ),
              ),
            ),
            Expanded(
              // height: context.heigth * 0.55,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 1.2),
                itemCount: _calculatorItems.length,
                itemBuilder: ((context, index) {
                  return CalculatorButton(
                    item: _calculatorItems[index],
                    controller: textController,
                  );
                }),
              ),
            ),
            Container(
              width: context.width,
              decoration: BoxDecoration(
                  color: green, borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 17, top: 17),
                  child: Text(
                    'Transfer',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
