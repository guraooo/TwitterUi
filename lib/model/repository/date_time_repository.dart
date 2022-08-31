abstract class DateTimeRepository {
  const DateTimeRepository();

  DateTime getDateTimeNow();
}

class DateTimeRepositoryImpl extends DateTimeRepository {
  const DateTimeRepositoryImpl() : super();

  @override
  DateTime getDateTimeNow() => DateTime.now();
}
