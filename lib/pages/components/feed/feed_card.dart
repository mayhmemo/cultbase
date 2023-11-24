import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          margin: const EdgeInsets.only(bottom: 20),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CardProfile(),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      child: const Icon(Icons.more_vert),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const CardContent(),
                const Divider(
                  height: 1,
                  thickness: 0.5,
                ),
                CardButtons(
                  isFavorite: isFavorite,
                  onPressedFavorite: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
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
    Key? key,
    required this.isFavorite,
    required this.onPressedFavorite,
  }) : super(key: key);

  final bool isFavorite;
  final VoidCallback onPressedFavorite;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10, 15, 10, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                },
                child: const Icon(Icons.comment_outlined),
              ),
              InkWell(
                onTap: () {
                },
                child: const Icon(Icons.trending_up_outlined),
              ),
              InkWell(
                onTap: () {
                  onPressedFavorite();
                },
                child: isFavorite
                  ? const Icon(Icons.favorite)
                  : const Icon(Icons.favorite_outline),
              ),
              InkWell(
                onTap: () {
                },
                child: const Icon(Icons.share_outlined),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CardContent extends StatelessWidget {
  const CardContent({Key? key}) : super(key: key);

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
  const CardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(),
        Padding(padding: EdgeInsets.only(right: 15)),
        Text('Teste', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
