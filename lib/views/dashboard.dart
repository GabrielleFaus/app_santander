import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  final List<String> StringList = ['1', '2', '3'];

  final List<dynamic> cardsTransf = [
    {"titulo": "Pix", "icon": "icons.pix", "route": "Pix1()"},
    {"titulo": "Pix", "icon": "icons.pix", "route": "Pix1()"},
    {"titulo": "Pix", "icon": "icons.pix", "route": "Pix1()"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("fundo_dashboard.png"),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("teste3.png", width: 150),
                    Row(
                      children: [
                        Icon(Icons.search_outlined, color: Colors.white),
                        Icon(Icons.message_outlined, color: Colors.white),
                        Icon(Icons.notifications_outlined, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 150,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Olá Gabrielle",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text(
                        "Ag 4333 Cc 014577-8",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardsTransf.length,
              // padding: EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 150,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.pix),
                          SizedBox(height: 10),
                          Text("Pix"),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Column(
            children: [
              CarouselSlider(
                items: [
                  Container(
                    height: 150,
                    child: Column(
                      children: [
                        Text("Conta PJ + Fácil"),
                        Text(
                          "Conta MEI c/ 1 ano de grátis em poucos cliques. Abra Já",
                        ),
                      ],
                    ),
                  ),
                  Text('2'),
                  Text('3'),
                ],
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  height: 80,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    StringList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 4.0,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.black)
                                .withOpacity(_current == entry.key ? 0.9 : 0.4),
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
