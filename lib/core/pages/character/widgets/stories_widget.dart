import 'package:flutter/material.dart';
import 'package:marvelapk01/core/controllers/stories_controller.dart';
import 'package:marvelapk01/core/models/marvel_model_stories.dart';

class StoriesWidget extends StatefulWidget {
  const StoriesWidget({Key? key, required this.characterID}) : super(key: key);
  final int characterID;

  @override
  State<StoriesWidget> createState() => _StoriesWidgetState();
}

class _StoriesWidgetState extends State<StoriesWidget> {
  final StoriesController storiesController = StoriesController();

  @override
  void initState() {
    super.initState();
    storiesController.loadCurrentStories(id: widget.characterID.toString());
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: storiesController,
        builder: (context, child) {
          return Container(
            width: double.infinity,
            height: 340,
            color: Colors.transparent,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: storiesController.listStories.length,
              itemBuilder: (context, index) {
                ResultsStories stories = storiesController.listStories[index];
                String image = '${storiesController.listStories[index].thumbnail}.${storiesController.listStories[index].thumbnail}';
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/stories', arguments: stories);
                  },
                  child: Hero(
                    tag: image,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            width: 230,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                  '${storiesController.listStories[index].thumbnail}.${storiesController.listStories[index].thumbnail}',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          storiesController.listStories[index].titleShort.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        });
  }
}
