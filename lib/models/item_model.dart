class ItemModel {
  ItemModel({
    required this.id,
    required this.title,
    required this.imageURL,
    required this.releaseDate,
  });
  final String title;
  final String imageURL;
  final DateTime releaseDate;
  final String id;

  String daysLeft() {
    return releaseDate.difference(DateTime.now()).inDays.toString();
  }
}
