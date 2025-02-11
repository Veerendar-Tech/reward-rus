// test/unit/core/core_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:../core/utils/date_util.dart'; // Example utility
import 'package:../core/constants/app_constants.dart';

void main() {
  group('DateUtil Tests', () {
    test('should correctly format date to expected string format', () {
      final date = DateTime(2024, 11, 7);
      final formattedDate = DateUtil.formatDate(date);
      expect(formattedDate, '07-11-2024'); // Expected output
    });
  });

  group('App Constants Tests', () {
    test('should verify app version format', () {
      expect(AppConstants.version, isA<String>());
      expect(AppConstants.version, matches(r'^\d+\.\d+\.\d+$'));
    });
  });
}
