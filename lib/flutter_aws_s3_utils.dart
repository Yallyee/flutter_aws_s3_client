import 'flutter_aws_s3_client.dart';
import 'flutter_aws_config.dart';

_loadImage(String name) async {
  var res = await s3.getObject(name);
  return res.bodyBytes;
}

/**
* Fetch and Process the Image 
*/
FutureBuilder s3image(String name, {double width, double height}) {
  return FutureBuilder(
    future: _loadImage(name),
    builder: (ctx, snap) {
      if (snap.hasData)
        return Container(
          width: width != null ? width : 150,
          height: width != null ? width : 150,
          decoration: BoxDecoration(
            image: new DecorationImage(
                fit: BoxFit.cover, image: MemoryImage(snap.data, scale: 0.5)),
          ),
        );

      return Container(child: CircularProgressIndicator());
    },
  );
}
