import 'package:isar/isar.dart';

part 'dto.g.dart';

@collection
class CurrencyRate {
  CurrencyRate({
    required this.code,
    required this.rate,
  });

  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String code;

  double rate;
}
