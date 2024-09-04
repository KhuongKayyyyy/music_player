class RadioStation {
  String name;
  String briefInformation;
  String description;
  int duration; // duration in minutes
  String imgURL;
  String title;

  RadioStation({
    required this.name,
    required this.briefInformation,
    required this.description,
    required this.duration,
    required this.imgURL,
    required this.title,
  });

  // Method to calculate and format the time range
  String getTimeRange() {
    final now = DateTime.now();
    final endTime = now.add(Duration(minutes: duration));

    String formatHour(int hour) {
      final period = hour >= 12 ? 'PM' : 'AM';
      final adjustedHour = hour > 12 ? hour - 12 : hour == 0 ? 12 : hour;
      return '$adjustedHour $period';
    }

    final startTimeFormatted = formatHour(now.hour);
    final endTimeFormatted = formatHour(endTime.hour);

    return '$startTimeFormatted - $endTimeFormatted';
  }
}
