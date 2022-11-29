import 'package:bank_app_ui/app/core/utils/colors.dart';
import 'package:bank_app_ui/app/core/utils/size_extension.dart';
import 'package:flutter/material.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                'https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?w=2000',
              ),
            ),
            const Text(
              'Fernanda Macedo',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'HSBC - 4267 0987 1234 56789',
              style: TextStyle(color: ligthGrey, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: TextField(
                controller: textController,
                //readOnly: true,
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
                    crossAxisCount: 3, childAspectRatio: 1),
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

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    Key? key,
    required this.item,
    required this.controller,
  }) : super(key: key);
  final String item;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (item == 'x') {
          controller.text = '';
        } else {
          controller.text += item;
          print(controller.text);
        }
      },
      child: SizedBox(
        child: Center(
          child: Text(
            item,
            style: const TextStyle(color: Colors.white, fontSize: 35),
          ),
        ),
      ),
    );
  }
}
