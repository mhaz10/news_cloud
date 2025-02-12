class ArticaleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String aritcleUrl;

  ArticaleModel({required this.image, required this.title, required this.subTitle, required this.aritcleUrl});

  factory ArticaleModel.fromJson(Map<String, dynamic> json) {
    return ArticaleModel(
        image: json['urlToImage'] ?? '',
        title: json['title'],
        subTitle: json['description'] ?? '',
        aritcleUrl: json['url']
    );
  }
}