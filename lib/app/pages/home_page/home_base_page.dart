import 'package:bank_app_ui/app/core/utils/colors.dart';
import 'package:bank_app_ui/app/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

class HomeBasePage extends StatefulWidget {
  const HomeBasePage({Key? key}) : super(key: key);

  @override
  State<HomeBasePage> createState() => _HomeBasePageState();
}

class _HomeBasePageState extends State<HomeBasePage> {
  int selectItem = 0;
  void _onTap(int index) {
    setState(() {
      selectItem = index;
    });
  }

  final List<Widget> _widgetsOptions = <Widget>[
    const HomePage(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.pink,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: green,
          onPressed: () {
            _onTap(2);
          },
          child: Icon(
            Icons.flip,
            color: selectItem == 2 ? Colors.black : Colors.white,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
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
                    onPressed: () {
                      _onTap(0);
                    },
                    icon: Icon(
                      Icons.home,
                      color: selectItem == 0 ? Colors.black : ligthGrey,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _onTap(1);
                    },
                    icon: Icon(Icons.stacked_line_chart,
                        color: selectItem == 1 ? Colors.black : ligthGrey),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  IconButton(
                    onPressed: () {
                      _onTap(3);
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: selectItem == 3 ? Colors.black : ligthGrey,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _onTap(4);
                    },
                    icon: Icon(
                      Icons.person,
                      color: selectItem == 4 ? Colors.black : ligthGrey,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: _widgetsOptions.elementAt(selectItem));
  }
}
