import 'package:bank_app_ui/app/core/utils/size_extension.dart';
import 'package:bank_app_ui/app/pages/splash_page/widget/slide_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _pageController = PageController(viewportFraction: 0.6, initialPage: 1);
  int _currentPage = 1;
  final _listSlide = [
    {'id': 0, 'image': 'assets/images/grey_credit_card.png'},
    {'id': 1, 'image': 'assets/images/green_credit_card.png'},
    {'id': 2, 'image': 'assets/images/grey_credit_card.png'}
  ];
  @override
  void initState() {
    _pageController.addListener(() {
      int next = _pageController.page?.round() ?? 0;
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
          print('Current Page é $_currentPage');
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1D1D),
      body: SafeArea(
        child: SizedBox(
          height: context.heigth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.heigth * 0.5,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _listSlide.length,
                  itemBuilder: (context, index) {
                    bool activePage = index == _currentPage;
                    return SlideTileWidget(
                      image: _listSlide[index]['image'].toString(),
                      activePage: activePage,
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 25),
                child: SizedBox(
                  width: context.width * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Easy way to manage money',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: context.heigth * 0.03,
                      ),
                      const Text(
                        'Let\'s transfer and receive tour money with esay way',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      SizedBox(
                        height: context.heigth * 0.05,
                      ),
                      Row(
                        children: [
                          _currentPage == 0
                              ? const DotWidget()
                              : const NormalDot(),
                          _currentPage == 1
                              ? const DotWidget()
                              : const NormalDot(),
                          _currentPage == 2
                              ? const DotWidget()
                              : const NormalDot()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 25, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Continue',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: 'Skip',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding: EdgeInsets.only(left: 3.0),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NormalDot extends StatelessWidget {
  const NormalDot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 15,
        width: 15,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.grey),
      ),
    );
  }
}

class DotWidget extends StatelessWidget {
  const DotWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: const Color(0xFF1D1D1D),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFF03CD4C), width: 2),
        ),
        child: Center(
          child: Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
                color: const Color(0xFF03CD4C),
                borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ),
    );
  }
}
