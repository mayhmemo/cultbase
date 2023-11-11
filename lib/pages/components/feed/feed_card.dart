import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            margin: EdgeInsets.only(bottom: 20),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardProfile(),
                      InkWell(
                        onTap: null,
                        child: Icon(Icons.more_vert),
                      ),
                    ]
                  ),
                  SizedBox(height: 10),
                  CardContent(),
                  Divider(
                    height: 1,
                    thickness: 0.5,
                  ),
                  CardButtons()
                ],
              ),
            ),
        )
      ],
    );
  }
}

class CardButtons extends StatelessWidget {
  const CardButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 15, 10, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: null,
                child: Icon(Icons.comment_outlined),
              ),
              InkWell(
                onTap: null,
                child: Icon(Icons.trending_up_outlined),
              ),
              InkWell(
                onTap: null,
                child: Icon(Icons.favorite_outline),
              ),
              InkWell(
                onTap: null,
                child: Icon(Icons.share_outlined),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CardContent extends StatelessWidget {
  const CardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Column(
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
      ),
    );
  }
}

class CardProfile extends StatelessWidget {
  const CardProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(),
        Padding(padding: EdgeInsets.only(right: 15)),
        Text('Teste',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
