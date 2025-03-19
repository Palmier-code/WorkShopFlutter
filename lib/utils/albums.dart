import 'album.dart';

class Albums {
  List<Album>? albums;

  Albums({
    this.albums,
  });

  factory Albums.fromJson(List<dynamic> json) {
    final List<Album> list = [];

    for (var element in json) {
      list.add(Album.fromJson(element));
    }

    return Albums(
      albums: list,
    );
  }
}
