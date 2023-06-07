import 'package:Horoscope/constants.dart';
import 'package:Horoscope/models/data.dart';
import 'package:Horoscope/models/horoscope.dart';
import 'package:Horoscope/models/horoscrope.api.dart';
import 'package:Horoscope/widgets/horoscope_data_and_heading.dart';
import 'package:Horoscope/widgets/horoscope_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class HoroscopeDetailView extends StatefulWidget {
  HoroscopeDetailView({required this.zodiacData});

  final ZodiacData? zodiacData;

  @override
  State<HoroscopeDetailView> createState() => _HoroscopeDetailViewState();
}

class _HoroscopeDetailViewState extends State<HoroscopeDetailView> {
  String star = '';

  getName() => star = widget.zodiacData!.name;

  @override
  void initState() {
    getName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: HoroscopeAPI(zodiacStar: star).get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          if (!snapshot.hasData) {
            return const Center(child: Text("get() returns null!"));
          }
          final data = snapshot.data as Horoscope;
          return SafeArea(
            bottom: false,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 300),
                            Text(
                              widget.zodiacData?.name ?? '',
                              style: largeText,
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              data.currentDate,
                              style: dateRange2,
                              textAlign: TextAlign.left,
                            ),
                            //Divider Starts Here:
                            const Divider(color: Colors.black38),
                            const SizedBox(height: 32.0),
                            const Text(
                              "Today's Horoscope:",
                              style: descriptionHeading,
                            ),
                            const SizedBox(height: 10.0),
                            ReadMoreText(
                              data.description,
                              style: descriptionStyle,
                              trimLines: 5,
                              trimMode: TrimMode.Line,
                              colorClickableText: secondaryTextColor,
                              trimCollapsedText: 'Read More',
                              trimExpandedText: ' Show Less',
                              moreStyle: linkText.copyWith(fontSize: 20.0),
                            ),

                            HoroscopeRowWidget(
                                heading1: "Mood:",
                                info1: data.mood,
                                heading2: "Lucky Number:",
                                info2: data.luckyNumber),

                            HoroscopeRowWidget(
                                heading1: "Color:",
                                info1: data.color,
                                heading2: "Compatibility:",
                                info2: data.compatibility),

                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: HoroscopeDataAndHeading(
                                  heading: "Lucky Time:", info: data.luckyTime),
                            ),

                            SizedBox(height: 32.0),
                            // Text(),
                            Divider(color: Colors.black38)
                            //Divider Ends Here:
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 32.0),
                        child: Text(
                          'Gallery',
                          style: descriptionHeading,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          top: 5.0,
                          bottom: 5.0,
                        ),
                        height: 250,
                        child: ListView.builder(
                          itemCount: widget.zodiacData!.images.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.network(
                                  widget.zodiacData!.images[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: -80,
                  child: Hero(
                    tag: widget.zodiacData!.images,
                    child: Image.asset(widget.zodiacData!.iconImage),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 170,
                  child: Text(
                    widget.zodiacData!.position,
                    style: hollowNumber,
                    textAlign: TextAlign.left,
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
