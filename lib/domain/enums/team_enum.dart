enum TeamEnum {
  red,
  blue;

  String get name {
    switch (this) {
      case TeamEnum.red:
        return 'Merah';
      case TeamEnum.blue:
        return 'Biru';
    }
  }
}
