class Horoscope {
  final String dateRange;
  final String currentDate;
  final String description;
  final String compatibility;
  final String mood;
  final String color;
  final String luckyNumber;
  final String luckyTime;

  const Horoscope({
    this.dateRange = '',
    this.currentDate = '',
    this.description = '',
    this.compatibility = '',
    this.mood = '',
    this.color = '',
    this.luckyNumber = '',
    this.luckyTime = '',
  });

  factory Horoscope.fromJson(Map<String, dynamic> json) {
    return Horoscope(
      dateRange: json['date_range'] as String? ?? '',
      currentDate: json['current_date'] as String? ?? '',
      description: json['description'] as String? ?? '',
      compatibility: json['compatibility'] as String? ?? '',
      mood: json['mood'] as String? ?? '',
      color: json['color'] as String? ?? '',
      luckyNumber: json['lucky_number'] as String? ?? '',
      luckyTime: json['lucky_time'] as String? ?? '',
    );
  }
}
