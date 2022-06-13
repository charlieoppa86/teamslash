import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum StudyType { TYPE1, TYPE2 }

class StudyWidget extends StatelessWidget {
  String thumbPath;
  StudyType type;
  double? size;

  StudyWidget({
    super.key,
    required this.thumbPath,
    required this.type,
    this.size = 120,
  });

  Widget type1Widget() {
    return Container(
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.purple, Colors.orange]),
        ),
        child: type2Widget());
  }

  Widget type2Widget() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(color: Colors.white),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        child: Container(
          width: size,
          height: size,
          child: CachedNetworkImage(
            imageUrl: thumbPath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case StudyType.TYPE1:
        return type1Widget();
      case StudyType.TYPE2:
        return type2Widget();
    }
  }
}
