import 'package:flutter/foundation.dart';

class TimeLineItem {
  final String date;
  final String confirmed;
  final String deceased;
  final String recovered;

  TimeLineItem._({
    @required this.date,
    @required this.confirmed,
    @required this.deceased,
    @required this.recovered,
  });

  factory TimeLineItem.fromAPI(Map<String, dynamic> map) {
    return TimeLineItem._(
      date: map['date'],
      confirmed: map['dailyconfirmed'],
      deceased: map['dailydeceased'],
      recovered: map['dailyrecovered'],
    );
  }

  @override
  String toString() {
    return 'TimeLineItem(date: $date, confirmed: $confirmed, deceased: $deceased, recovered: $recovered)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TimeLineItem &&
        other.date == date &&
        other.confirmed == confirmed &&
        other.deceased == deceased &&
        other.recovered == recovered;
  }

  @override
  int get hashCode {
    return date.hashCode ^
        confirmed.hashCode ^
        deceased.hashCode ^
        recovered.hashCode;
  }
}
