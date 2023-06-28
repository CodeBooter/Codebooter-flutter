class JobModel {
  String imageAsset;
  String title;
  String stipend;
  String duration;
  String location;
  String applyBy;
  String applyLink;

  JobModel({
    required this.imageAsset,
    required this.title,
    required this.stipend,
    required this.duration,
    required this.location,
    required this.applyBy,
    required this.applyLink,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) {
    String defaultImageAsset =
        'https://i.pinimg.com/474x/75/d5/52/75d552f374cb3a61d23c05921e49840b.jpg';

    String imageAsset = json['imageAssest'];
    if (imageAsset == Null ||
        imageAsset.isEmpty ||
        !Uri.parse(imageAsset).isAbsolute) {
      imageAsset = defaultImageAsset;
    }

    return JobModel(
      imageAsset: imageAsset,
      title: json['title'],
      stipend: json['stipend'],
      duration: json['duration'],
      location: json['location'],
      applyBy: json['applyBy'],
      applyLink: json['applyLink'],
    );
  }
}
