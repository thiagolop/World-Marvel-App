import 'package:flutter/material.dart';
import 'package:marvelapk01/core/pages/character/widgets/additional_information_widget.dart';
import 'package:marvelapk01/core/pages/character/widgets/circle_avatar_widget.dart';
import 'package:marvelapk01/core/pages/character/widgets/description_widget.dart';
import 'package:marvelapk01/core/pages/character/widgets/signature_widget.dart';
import '../../models/marvel_model_characters.dart';

class InfoCharacterPage extends StatelessWidget {
  const InfoCharacterPage({Key? key, required this.character}) : super(key: key);
  final Character character;

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
          CircleAvatarWidget(character: character),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DescriptionWidget(character: character),
                    const SizedBox(height: 24),
                    AdditionalInformationWidget(characterID: character.id, title: 'Comics', description: '${character.comics.available}'),
                    const SizedBox(height: 24),
                    AdditionalInformationWidget(characterID: character.id, title: 'Series', description: '${character.series.available}'),
                    const SizedBox(height: 24),
                    AdditionalInformationWidget(characterID: character.id, title: 'Stories', description: '${character.stories.available}'),
                    const SizedBox(height: 24),
                    AdditionalInformationWidget(characterID: character.id, title: 'Events', description: '${character.events.available}'),
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
