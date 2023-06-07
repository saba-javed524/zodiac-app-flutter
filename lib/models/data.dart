class ZodiacData {
  final String position;
  final String name;
  final String iconImage;
  final String description;
  final String date;
  final List<String> images;

  ZodiacData(
      {required this.position,
      required this.name,
      required this.iconImage,
      required this.description,
      required this.date,
      required this.images});
}

List<ZodiacData> zodiacInfo = [
  (ZodiacData(
      position: '1',
      name: 'Aries',
      date: '21 March - 19 April',
      iconImage: 'assets/images/aries.png',
      description:
          'Aries contains no very bright stars; the brightest star, Hamal (Arabic for “sheep”), has a magnitude of 2.0.',
      images: [
        'https://cdn.pixabay.com/photo/2022/11/26/11/45/aries-7617681__340.jpg',
        'https://cdn.pixabay.com/photo/2019/07/31/06/03/zodiac-sign-4374404__340.jpg',
        'https://cdn.pixabay.com/photo/2017/08/28/15/28/aries-2689949__340.jpg',
        'https://cdn.pixabay.com/photo/2015/05/09/07/32/aries-759382__340.jpg',
        'https://cdn.pixabay.com/photo/2021/10/29/08/33/star-sign-6751381__340.jpg',
      ])),
  (ZodiacData(
      position: '2',
      name: 'Taurus',
      date: '20 April - 20 May',
      iconImage: 'assets/images/taurus.png',
      description:
          'Taurus contains no very bright stars; the brightest star, Hamal (Arabic for “sheep”), has a magnitude of 2.0.',
      images: [
        'https://cdn.pixabay.com/photo/2022/11/26/11/45/taurus-7617693_960_720.jpg',
        'https://cdn.pixabay.com/photo/2019/07/31/06/03/zodiac-sign-4374405_960_720.jpg',
        'https://cdn.pixabay.com/photo/2017/08/28/19/56/bull-2691107__340.jpg',
        'https://cdn.pixabay.com/photo/2021/10/29/08/33/taurus-6751377_960_720.jpg',
        'https://cdn.pixabay.com/photo/2021/05/01/22/26/bull-6222163_960_720.png',
      ])),
  (ZodiacData(
      position: '3',
      name: 'Gemini',
      date: '21 May - 20 June',
      iconImage: 'assets/images/gemini.png',
      description:
          'Gemini contains no very bright stars; the brightest star, Hamal (Arabic for “sheep”), has a magnitude of 2.0.',
      images: [
        'https://cdn.pixabay.com/photo/2022/11/26/11/45/gemini-7617685__340.jpg',
        'https://cdn.pixabay.com/photo/2019/07/31/06/03/zodiac-sign-4374407__340.jpg',
        'https://cdn.pixabay.com/photo/2021/10/29/08/32/gemini-6751374__340.jpg',
        'https://cdn.pixabay.com/photo/2017/08/28/19/56/twins-2691108__340.jpg',
        'https://cdn.pixabay.com/photo/2016/07/08/21/18/gemini-1505265__340.jpg',
      ])),
  (ZodiacData(
      position: '4',
      name: 'Cancer',
      date: '21 June - 22 July',
      iconImage: 'assets/images/cancer.png',
      description:
          'Cancer contains no very bright stars; the brightest star, Hamal (Arabic for “sheep”), has a magnitude of 2.0.',
      images: [
        'https://cdn.pixabay.com/photo/2022/11/26/11/45/cancer-7617683__340.jpg',
        'https://cdn.pixabay.com/photo/2019/07/31/06/03/zodiac-sign-4374406__340.jpg',
        'https://cdn.pixabay.com/photo/2017/08/28/10/15/cancer-2689033__340.jpg',
        'https://cdn.pixabay.com/photo/2015/05/09/07/31/cancer-759378__340.jpg',
        'https://cdn.pixabay.com/photo/2016/07/08/21/15/horoscope-1505263__340.jpg',
      ])),
  (ZodiacData(
      position: '5',
      name: 'Leo',
      date: '23 July - 22 Aug',
      iconImage: 'assets/images/leo.png',
      description:
          'Leo contains no very bright stars; the brightest star, Hamal (Arabic for “sheep”), has a magnitude of 2.0.',
      images: [
        'https://cdn.pixabay.com/photo/2022/11/26/11/45/leo-7617686__340.jpg',
        'https://cdn.pixabay.com/photo/2019/07/31/06/03/zodiac-sign-4374408__340.jpg',
        'https://cdn.pixabay.com/photo/2021/10/29/08/32/leo-6751373__340.jpg',
        'https://cdn.pixabay.com/photo/2018/04/08/17/03/constellation-3301770__340.jpg',
        'https://cdn.pixabay.com/photo/2021/05/01/21/28/lion-6222104__340.png',
      ])),
  (ZodiacData(
      position: '6',
      name: 'Virgo',
      date: '23 Aug - 22 Sep',
      iconImage: 'assets/images/virgo.png',
      description:
          'Virgo contains no very bright stars; the brightest star, Hamal (Arabic for “sheep”), has a magnitude of 2.0.',
      images: [
        'https://cdn.pixabay.com/photo/2022/11/26/11/45/virgo-7617694__340.jpg',
        'https://cdn.pixabay.com/photo/2019/07/31/06/03/zodiac-sign-4374409__340.jpg',
        'https://cdn.pixabay.com/photo/2017/08/28/10/08/virgin-2689015__340.jpg',
        'https://cdn.pixabay.com/photo/2021/05/12/02/58/zodiac-sign-6247247__340.jpg',
        'https://cdn.pixabay.com/photo/2016/07/08/21/22/horoscope-1505273__340.jpg',
      ])),
  (ZodiacData(
      position: '7',
      name: 'Libra',
      date: '23 Sep - 22 Oct',
      iconImage: 'assets/images/libra.png',
      description:
          'Libra contains no very bright stars; the brightest star, Hamal (Arabic for “sheep”), has a magnitude of 2.0.',
      images: [
        'https://cdn.pixabay.com/photo/2022/11/26/11/45/libra-7617688__340.jpg',
        'https://cdn.pixabay.com/photo/2019/07/31/06/09/zodiac-sign-4374411__340.jpg',
        'https://cdn.pixabay.com/photo/2015/05/09/07/31/horizontal-759380__340.jpg',
        'https://cdn.pixabay.com/photo/2017/08/28/19/56/horizontal-2691106__340.jpg',
        'https://cdn.pixabay.com/photo/2021/05/12/03/00/zodiac-sign-6247251__340.jpg',
      ])),
  (ZodiacData(
      position: '8',
      name: 'Scorpio',
      date: '23 Oct - 21 Nov',
      iconImage: 'assets/images/scorpio.png',
      description:
          'Scorpio contains no very bright stars; the brightest star, Hamal (Arabic for “sheep”), has a magnitude of 2.0.',
      images: [
        'https://cdn.pixabay.com/photo/2022/11/26/11/45/scorpio-7617691__340.jpg',
        'https://cdn.pixabay.com/photo/2019/07/31/06/09/zodiac-sign-4374412__340.jpg',
        'https://cdn.pixabay.com/photo/2017/08/28/15/28/scorpio-2689945__340.jpg',
        'https://cdn.pixabay.com/photo/2016/07/08/23/18/horoscope-1505422__340.jpg',
        'https://cdn.pixabay.com/photo/2021/05/12/03/00/scorpion-6247252__340.jpg',
      ])),
  (ZodiacData(
      position: '9',
      name: 'Sagittarius',
      date: '22 Nov - 21 Dec',
      iconImage: 'assets/images/sagittarius.png',
      description:
          'Sagittarius contains no very bright stars; the brightest star, Hamal (Arabic for “sheep”), has a magnitude of 2.0.',
      images: [
        'https://cdn.pixabay.com/photo/2022/11/26/11/45/sagittarius-7617690__340.jpg',
        'https://cdn.pixabay.com/photo/2019/07/31/06/09/zodiac-sign-4374413__340.jpg',
        'https://cdn.pixabay.com/photo/2021/10/29/08/32/sagittarius-6751375__340.jpg',
        'https://cdn.pixabay.com/photo/2017/08/28/10/32/contactors-2689092__340.jpg',
        'https://cdn.pixabay.com/photo/2021/05/12/03/03/zodiac-sign-6247268__340.jpg',
      ])),
  (ZodiacData(
      position: '10',
      name: 'Capricorn',
      date: '22 Dec- 19 Jan',
      iconImage: 'assets/images/capricorn.png',
      description:
          'Capricorn contains no very bright stars; the brightest star, Hamal (Arabic for “sheep”), has a magnitude of 2.0.',
      images: [
        'https://cdn.pixabay.com/photo/2022/11/26/11/45/capricorn-7617684__340.jpg',
        'https://cdn.pixabay.com/photo/2019/07/31/06/09/zodiac-sign-4374414__340.jpg',
        'https://cdn.pixabay.com/photo/2015/05/09/07/31/capricorn-759379__340.jpg',
        'https://cdn.pixabay.com/photo/2017/08/28/15/28/capricorn-2689947__340.jpg',
        'https://cdn.pixabay.com/photo/2016/07/08/21/19/capricorn-1505267__340.jpg',
      ])),
  (ZodiacData(
      position: '11',
      name: 'Aquarius',
      date: '20 Jan - Feb 18',
      iconImage: 'assets/images/aquarius.png',
      description:
          'Aquarius contains no very bright stars; the brightest star, Hamal (Arabic for “sheep”), has a magnitude of 2.0.',
      images: [
        'https://cdn.pixabay.com/photo/2022/11/26/11/45/aquarius-7617682__340.jpg',
        'https://cdn.pixabay.com/photo/2019/07/31/06/10/zodiac-sign-4374415__340.jpg',
        'https://cdn.pixabay.com/photo/2017/08/28/15/28/aquarius-2689948__340.jpg',
        'https://cdn.pixabay.com/photo/2016/07/08/23/19/horoscope-1505432__340.jpg',
        'https://cdn.pixabay.com/photo/2015/05/09/07/32/aquarius-759383__340.jpg',
      ])),
  (ZodiacData(
      position: '12',
      name: 'Pisces',
      date: '19 Feb - 20 March',
      iconImage: 'assets/images/pisces.png',
      description:
          'Pisces contains no very bright stars; the brightest star, Hamal (Arabic for “sheep”), has a magnitude of 2.0.',
      images: [
        'https://cdn.pixabay.com/photo/2022/11/26/11/45/pisces-7617687__340.jpg',
        'https://cdn.pixabay.com/photo/2019/07/31/06/10/zodiac-sign-4374416__340.jpg',
        'https://cdn.pixabay.com/photo/2017/08/27/17/13/fish-2686842__340.jpg',
        'https://cdn.pixabay.com/photo/2021/10/29/08/31/pisces-6751363__340.jpg',
        'https://cdn.pixabay.com/photo/2021/05/12/03/02/zodiac-sign-6247263__340.jpg',
      ])),
];
