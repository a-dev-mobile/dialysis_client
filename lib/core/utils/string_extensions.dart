extension String2 on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  /// text text >>> Text text
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
  String capitalize() {
    return isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : '';
  }
}

extension String3 on String {
  String getLastChars(int n) => substring(length - n);
}

extension String4 on String {
  String removeLastChars() => substring(0, length - 1);
}

extension AddTypeJsonX on String {
  String addTypeJson() => '${this}.json';
}

extension StringIsDate on String {
  bool isDate() {
    try {
      final date = DateTime.parse(this);
      final y = date.year.toString().padLeft(4, '0');
      final m = date.month.toString().padLeft(2, '0');
      final d = date.day.toString().padLeft(2, '0');
      final newDt = '$y-$m-$d';

      return this == newDt;
    } catch (e) {
      return false;
    }
  }
}
