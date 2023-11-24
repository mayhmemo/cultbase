import 'package:flutter/material.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  @override
  State<NotificationWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<NotificationWidget> {
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
                CardProfile(),
                SizedBox(height: 10),
                CardContent(),

                // CardButtons()
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
                  'Lorem ipsaokpdmsap dmsoamdps aomdpoasmdpomaspd mpasomdpoasmd poasmdpaosmdpoasmdpoamspdomaspodm',
                  overflow: TextOverflow.clip,
                  style: TextStyle(),
                ),
              ),
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
        Column(children: [
          Text('Categoria'),
          Text('Nome do usuário', style: TextStyle(fontSize: 18)),
        ])
      ],
    );
  }
}
