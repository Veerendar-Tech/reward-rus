import 'package:flutter_test/flutter_test.dart';
import 'package:../core/utils/date_time_utils.dart';

void main() {
  group('DateTime Utils', () {
    test('formats time correctly', () {
      final date = DateTime(2024, 11, 6, 14, 30);
      final formattedTime = DateTimeUtils.formatTime(date);
      expect(formattedTime, '2:30 PM');
    });

    test('calculates difference in hours correctly', () {
      final now = DateTime.now();
      final later = now.add(Duration(hours: 3));
      final difference = DateTimeUtils.differenceInHours(now, later);
      expect(difference, 3);
    });
  });
}
