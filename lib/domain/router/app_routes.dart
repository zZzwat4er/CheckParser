enum AppRoutes{
  landing('Landing'),
  main('Home'),
  itemResolver('itemResolver'),
  checkParser('Parser');

  final String name;
  const AppRoutes(this.name);
  static AppRoutes? fromString(String? name) {
    if (name == null) return null;
    return AppRoutes.values.firstWhere((element) => element.name == name);
  }
}