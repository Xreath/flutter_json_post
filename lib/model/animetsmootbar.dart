import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageSmoot extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageSmoot> {
  final PageController controller =
      PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final Pages = List.generate(6, (index) => ListGenerateFunc(index));
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ColumnScrool(Pages),
        ),
      ),
    );
  }

  Container ListGenerateFunc(int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade300,
        border: Border.all(color: Colors.blueAccent),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Container(
        child: Center(
            child: Text(
          "Page $index",
          style: TextStyle(color: Colors.indigo),
        )),
      ),
    );
  }

  Column ColumnScrool(List<Container> pages) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 16),
        SizedBox(
          height: 240,
          child: PageView.builder(
            controller: controller,
            // itemCount: pages.length,
            itemBuilder: (_, index) {
              return pages[index % pages.length];
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 12),
          child: Text(
            'Worm',
            style: TextStyle(color: Colors.black54),
          ),
        ),
        SmoothPageIndicator(
          controller: controller,
          count: pages.length,
          effect: WormEffect(
            dotHeight: 16,
            dotWidth: 16,
            type: WormType.thin,
            // strokeWidth: 5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 12),
          child: Text(
            'Scrolling Dots',
            style: TextStyle(color: Colors.black54),
          ),
        ),
        SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: ScrollingDotsEffect(
              activeStrokeWidth: 2.6,
              activeDotScale: 1.3,
              maxVisibleDots: 5,
              radius: 8,
              spacing: 10,
              dotHeight: 12,
              dotWidth: 12,
            )),
      ],
    );
  }
}

final colors = const [
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
];
