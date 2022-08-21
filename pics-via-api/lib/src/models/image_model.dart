class ImageModel {
  int id = 0;
  String url = '';
  String title = '';

  ImageModel(this.id, this.url, this.title);

// Map<String... just names the type we expect to get back -  a map
// or object with a string and unknown pair
  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}
