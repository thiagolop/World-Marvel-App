import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controllers/series_controller.dart';
import '../../../models/marvel_model_series.dart';

class SeriesWidget extends StatefulWidget {
  const SeriesWidget({
    Key? key,
    required this.characterID,
  }) : super(key: key);
  final int characterID;

  @override
  State<SeriesWidget> createState() => _SeriesWidgetState();
}

class _SeriesWidgetState extends State<SeriesWidget> {
  final SeriesController seriesController = SeriesController();

  @override
  void initState() {
    super.initState();
    seriesController.loadCurrentSeries(id: widget.characterID.toString());
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: seriesController,
      builder: (context, child) {
        return Container(
          width: double.infinity,
          height: 340,
          color: Colors.transparent,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: seriesController.listSeries.length,
            itemBuilder: (context, index) {
              ResultsSeries series = seriesController.listSeries[index];
              String image = '${seriesController.listSeries[index].thumbnail.path}.${seriesController.listSeries[index].thumbnail.extension}';
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/series', arguments: series);
                },
                child: Hero(
                  tag: image,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CachedNetworkImage(
                          imageUrl: '${seriesController.listSeries[index].thumbnail.path}.${seriesController.listSeries[index].thumbnail.extension}',
                          width: 230,
                          height: 300,
                          fit: BoxFit.scaleDown,
                          progressIndicatorBuilder: (context, url, progress) => const Center(
                            child: CircularProgressIndicator(
                              value: null,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          ),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        seriesController.listSeries[index].title,
                        style: GoogleFonts.lato(color: Colors.white, fontSize: 20, fontStyle: FontStyle.italic),
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
