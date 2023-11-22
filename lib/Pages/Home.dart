import 'package:flutter/material.dart';
import 'package:carousel_indicator/carousel_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyAppState();
}

class _MyAppState extends State<Home> {
  int pageIndex = 0;

  final List<Widget> imageList = [
    Image.network(
        'https://ilt20storage.blob.core.windows.net/ilt20storage/ILT20Videos/default.png'),
    Image.network(
        'https://ilt20storage.blob.core.windows.net/ilt20storage/ILT20Videos/default.png'),
    Image.network(
        'https://ilt20storage.blob.core.windows.net/ilt20storage/ILT20Videos/default.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.network(
                        'https://www.ilt20.ae/assets/images/mobile-logo.png',
                        height: 70, // Set the desired height
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.network(
                      'https://ilt20storage.blob.core.windows.net/ilt20storage/champions_mob.webp',
                      height: 200, // Set the desired height
                    ),
                  ),
                  carouselSlider(),
                  table('TEAM', 'PLAYED', 'POINTS', 'NRR'),
                  table('GG', '1', '1', '1'),
                  table('DV', '2', '2', '2'),
                  table('MIE', '3', '3', '3'),
                  table('DC', '4', '4', '4'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget carouselSlider() {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.white,
                  width: 3.0,
                )),
            height: 180,
            width: double.infinity,
            child: PageView(
              children: imageList,
              onPageChanged: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
            ),
          ),
          SizedBox(
            height: 5,
          ),
          CarouselIndicator(
            count: imageList.length,
            index: pageIndex,
          ),
        ],
      ),
    );
  }

  Widget tabView() {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Colors.grey[200],
                ),
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: Colors.pink,
                  ),
                  tabs: const [
                    Tab(
                      text: 'Basic',
                    ),
                    Tab(
                      text: 'Advanced',
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'Basic Settings',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Center(
              child: Text(
                'Advanced Settings',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget table(a, b, c, d) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xFFffae8a), width: 2.0),
              borderRadius: BorderRadius.circular(10)),
          width: double.infinity,
          height: 60,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(a.toString()),
            Text(b.toString()),
            Text(c.toString()),
            Text(d.toString()),
          ])),
    );
  }
}
