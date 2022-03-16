import 'package:flutter/material.dart';
import 'package:youtube_clone/models/video_model.dart';

class VideoCard extends StatelessWidget {
  final VideoModel model;
  const VideoCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.grey,
                      image: DecorationImage(
                          image: NetworkImage(model.thumnail!),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                    right: 20.0,
                    bottom: 10.0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2.0, horizontal: 8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.black87),
                      child: Text(
                        model.videDuration!,
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 54.0,
                  width: 54.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      image:
                          DecorationImage(image: NetworkImage(model.avatar!))),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.videoTitle!,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text("${model.channel} - ${model.views}"),
                  ],
                )),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
