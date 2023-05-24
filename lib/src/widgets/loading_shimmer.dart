import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../extensions/context.dart';

/// Loading list shimmer effect
class LoadingShimmer extends StatelessWidget {
  /// Build a shimmer list to indicate a loading list
  const LoadingShimmer({super.key});

  @override
  Widget build(final BuildContext context) => SizedBox(
        width: min(context.widthTransformer(percentage: 80), 1080),
        height: context.height,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.white38,
                  child: ListView.builder(
                    itemBuilder: (final _, final __) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              width: 48,
                              height: 48,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 2,
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 8,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 2,
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 8,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 8,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    itemCount: 6,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
