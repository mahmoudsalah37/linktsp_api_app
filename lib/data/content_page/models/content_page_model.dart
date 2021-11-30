class ContentPageModel {
  ContentPageModel({
    this.id,
    this.name,
    this.title,
    this.content,
    this.pageDescription,
    this.imageUrl,
    this.showImage,
  });

  int? id;
  String? name;
  String? title;
  String? content;
  String? pageDescription;
  String? imageUrl;
  bool? showImage;

  factory ContentPageModel.fromJson(Map<String, dynamic> json) =>
      ContentPageModel(
        id: json["id"],
        name: json["name"],
        title: json["title"],
        content: json["content"],
        pageDescription: json["pageDescription"],
        imageUrl: json["imageURL"],
        showImage: json["showImage"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "title": title,
        "content": content,
        "pageDescription": pageDescription,
        "imageURL": imageUrl,
        "showImage": showImage,
      };
}
