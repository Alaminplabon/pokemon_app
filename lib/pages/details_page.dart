import 'package:flutter/material.dart';
import 'package:pokemon_app/widget/my_title.dart';
import 'package:pokemon_app/widget/power_badge.dart';

import '../widget/feature_title_text.dart';
import '../widget/feature_value_text copy.dart';

class DetailsPage extends StatelessWidget {
  final Map? data;
  const DetailsPage({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4ad0b0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      children: [
                        Container(
                            width: double.infinity,
                            child: MyTitle(
                                text: "${data!["name"]}", color: Colors.white)),
                        Row(
                          children: data!["type"]
                              .map<Widget>((e) => PowerBadge(text: "$e"))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(34.0),
                        topRight: Radius.circular(34.0),
                      ),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 100.0,
                            ),
                            height: double.infinity,
                            child: const Column(
                              children: [
                                FeatureTitleText(text: "Height"),
                                FeatureTitleText(text: "Weight"),
                                FeatureTitleText(text: "Candy"),
                                FeatureTitleText(text: "CandyCount"),
                                FeatureTitleText(text: "Egg"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 100.0,
                            ),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FeatureValueText(text: "${data!["height"]}"),
                                FeatureValueText(text: "${data!["weight"]}"),
                                FeatureValueText(text: "${data!["candy"]}"),
                                FeatureValueText(
                                    text: "${data!["candy_count"]}"),
                                FeatureValueText(text: "${data!["egg"]}"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 150.0,
              child: Container(
                child: Hero(
                  tag: "pokecard1-${data!["name"]}",
                  child: Image.network(
                    "${data!["img"]}",
                    fit: BoxFit.fill,
                    height: 300.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
