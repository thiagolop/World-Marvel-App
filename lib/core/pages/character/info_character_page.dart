import 'package:flutter/material.dart';
import 'package:marvelapk01/core/pages/character/widgets/additional_information_widget.dart';
import 'package:marvelapk01/core/pages/character/widgets/circle_avatar_widget.dart';
import 'package:marvelapk01/core/pages/character/widgets/description_widget.dart';
import 'package:marvelapk01/core/pages/character/widgets/signature_widget.dart';
import '../../models/marvel_model_characters.dart';
import 'widgets/comics_widget.dart';

class InfoCharacterPage extends StatefulWidget {
  const InfoCharacterPage({Key? key, required this.character}) : super(key: key);
  final Character character;

  @override
  State<InfoCharacterPage> createState() => _InfoCharacterPageState();
}

class _InfoCharacterPageState extends State<InfoCharacterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          const Positioned.fill(
            child: Image(
              image: AssetImage('assets/FundoPreto.webp'),
              fit: BoxFit.fill,
            ),
          ),
          CircleAvatarWidget(character: widget.character),
          Positioned(
            top: 310,
            left: 10,
            right: 10,
            bottom: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    DescriptionWidget(character: widget.character),
                    const SizedBox(height: 24),
                    ExpansionTile(title: AdditionalInformationWidget(title: 'Comics', description: '${widget.character.comics.available}'), children: [
                      const SizedBox(height: 16),
                      ComicsWidget(characterID: widget.character.id),
                    ]),
                    const SizedBox(height: 24),
                    ExpansionTile(title: AdditionalInformationWidget(title: 'Series', description: '${widget.character.series.available}'), children: const [
                      SizedBox(height: 16),
                    ]),
                    const SizedBox(height: 24),
                    ExpansionTile(title: AdditionalInformationWidget(title: 'Stories', description: '${widget.character.stories.available}'), children: const [
                      SizedBox(height: 16),
                    ]),
                    const SizedBox(height: 24),
                    ExpansionTile(title: AdditionalInformationWidget(title: 'Events', description: '${widget.character.events.available}'), children: const [
                      SizedBox(height: 16),
                    ]),
                    const SizedBox(height: 24),
                    const SignatureWidget(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
