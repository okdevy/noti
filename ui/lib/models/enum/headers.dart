import 'package:localization/generated/l10n.dart';

enum HeaderType {
  all,
  alarm,
  party,
  dinner;

  String get label => switch (this) {
        HeaderType.all => S.current.allTriggers,
        HeaderType.alarm => S.current.alarm,
        HeaderType.party => S.current.party,
        HeaderType.dinner => S.current.dinner,
      };
}

enum NestedHeader {
  sport,
  work;

  String get label => switch (this) {
        NestedHeader.sport => S.current.sport,
        NestedHeader.work => S.current.work,
      };
}

class DataHelper {
  DataHelper._();

  factory DataHelper.trigger1() => DataHelper._().._createData();

  late final List<Data> _data = [];

  List<Data> get data => _data;

  void _createData() {
    final tiles = HeaderType.values.map(
      (e) => Data(
        title: e.label,
        fields: [
          Data(
            title: S.current.sport,
            fields: const [
              Data(
                title: 'Child 1.1',
              ),
              Data(
                title: 'Child 1.2',
              ),
              Data(
                title: 'Child 1.3',
              ),
            ],
          ),
          Data(
            title: S.current.work,
            fields: [
              const Data(
                title: '🗓️ Meeting',
              ),
              const Data(
                title: '🖨️ Print document',
              ),
            ],
          ),
          const Data(
            title: 'Child 1.3',
          ),
        ],
      ),
    );
    _data.addAll(tiles);
  }
}

class Data {
  const Data({
    required this.title,
    this.fields = const [],
  });
  final String title;
  final List<Data> fields;
}
