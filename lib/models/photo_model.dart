class PhotoModel {
  String author;
  String downloadUrl;

  PhotoModel({required this.author, required this.downloadUrl});

  factory PhotoModel.fromJson(Map<String, dynamic> json) {
    return PhotoModel(
      author: json['author'],
      downloadUrl: json['download_url'],
    );
  }
}
