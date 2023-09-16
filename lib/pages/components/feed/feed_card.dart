import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(),
                Padding(padding: EdgeInsets.only(right: 15)),
                Text('Teste', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        'Lorem ipsaokpdmsapdmsoamdps aomdpoasmdpomaspdmpasomdpoasmd poasmdpaosmdpoasmdpoamspdomaspodm',
                        overflow: TextOverflow.clip,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      )
    );
  }
}