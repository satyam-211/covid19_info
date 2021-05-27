import 'package:flutter/foundation.dart';

class StateItem {
  final String stateName;
  final int confirmed;
  final int active;
  final int recovered;
  final int deaths;
  StateItem._({
    @required this.stateName,
    @required this.confirmed,
    @required this.active,
    @required this.recovered,
    @required this.deaths,
  });

  factory StateItem.fromAPI(Map<String, dynamic> map) {
    return StateItem._(
      stateName: map['state'],
      confirmed: map['confirmed'],
      active: map['active'],
      recovered: map['recovered'],
      deaths: map['deaths'],
    );
  }

  @override
  String toString() {
    return 'StateItem(stateName: $stateName, confirmed: $confirmed, active: $active, recovered: $recovered, deaths: $deaths)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StateItem &&
        other.stateName == stateName &&
        other.confirmed == confirmed &&
        other.active == active &&
        other.recovered == recovered &&
        other.deaths == deaths;
  }

  @override
  int get hashCode {
    return stateName.hashCode ^
        confirmed.hashCode ^
        active.hashCode ^
        recovered.hashCode ^
        deaths.hashCode;
  }
}
