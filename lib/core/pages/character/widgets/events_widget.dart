import 'package:flutter/material.dart';
import 'package:marvelapk01/core/models/marvel_moder_events.dart';

import '../../../controllers/events_controller.dart';

class EventsWidget extends StatefulWidget {
  const EventsWidget({Key? key, required this.characterID}) : super(key: key);
  final int characterID;

  @override
  State<EventsWidget> createState() => _EventsWidgetState();
}

class _EventsWidgetState extends State<EventsWidget> {
  final EventsController eventsController = EventsController();

  @override
  void initState() {
    super.initState();
    eventsController.loadCurrentEvents(id: widget.characterID.toString());
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: eventsController,
      builder: (context, child) {
        return Container(
          width: double.infinity,
          height: 340,
          color: Colors.transparent,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: eventsController.listEvents.length,
            itemBuilder: (context, index) {
              ResultsEvents events = eventsController.listEvents[index];
              String image = '${eventsController.listEvents[index].thumbnail?.path}.${eventsController.listEvents[index].thumbnail?.extension}';
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/events', arguments: events);
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
                                '${eventsController.listEvents[index].thumbnail?.path}.${eventsController.listEvents[index].thumbnail?.extension}',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        eventsController.listEvents[index].title.toString(),
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
      },
    );
  }
}
