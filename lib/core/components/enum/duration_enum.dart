import '../../exeptions/duration_exception.dart';

enum DurationEnum {
  LOW,
  NORMAL,
  HIGH,
}

extension DurationEnumExtension on DurationEnum {
  Duration get time {
    switch (this) {
      case DurationEnum.LOW:
        return Duration(seconds: 2);
      case DurationEnum.NORMAL:
        return Duration(seconds: 5);
      case DurationEnum.HIGH:
        return Duration(seconds: 10);
      default:
        throw DurationException(this);
    }
  }
}
