class StringHelper {
  const StringHelper._();

  static String initial(String name, int length) {
    if (name.isEmpty) {
      return '';
    }
    final splittedName = name.split(' ');
    if (splittedName.length > 1) {
      return splittedName
          .map((e) => e[0].toUpperCase())
          .join()
          .substring(0, length);
    } else {
      return name[0].toUpperCase();
    }
  }
}
