import 'package:Horoscope/constants.dart';
import 'package:Horoscope/horoscope_detail_view.dart';
import 'package:Horoscope/models/data.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF3752a9), Color(0xFF8659b4)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.9],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Explore', style: largestText),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text('Zodiac Stars', style: dropDownLabel)
                  ],
                ),
              ),
              Container(
                height: 500.0,
                padding: const EdgeInsets.only(left: 25.0),
                child: Swiper(
                  itemCount: zodiacInfo.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 44,
                  layout: SwiperLayout.STACK,
                  pagination: const SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      size: 6,
                      space: 5,
                      activeSize: 15,
                      activeColor: secondaryTextColor,
                    ),
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, a, b) => HoroscopeDetailView(
                              zodiacData: zodiacInfo[index],
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 115,
                              ),
                              Card(
                                elevation: 8.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 100,
                                      ),
                                      Text(
                                        zodiacInfo[index].name,
                                        style: largeText,
                                      ),
                                      Text(zodiacInfo[index].date,
                                          style: dateRange),
                                      const SizedBox(
                                        height: 32.0,
                                      ),
                                      Row(
                                        children: const [
                                          Text('Horoscope', style: linkText),
                                          Padding(
                                            padding: EdgeInsets.only(left: 8.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.arrowRight,
                                              color: secondaryTextColor,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Hero(
                            tag: zodiacInfo[index].images,
                            child: Image(
                              image: AssetImage(zodiacInfo[index].iconImage),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: navigationColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(36),
          ),
        ),
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/menu_icon.png'),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/search_icon.png'),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/profile_icon.png'),
            ),
          ],
        ),
      ),
    );
  }
}
