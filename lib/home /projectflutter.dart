import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Flutterphotos extends StatelessWidget {
  const Flutterphotos({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
        itemCount: 19,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), // SliverSimpleGridDelegateWithFixedCrossAx.
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(4),
              child: ClipRRect(borderRadius: BorderRadius.circular(8), child: Image.asset("assets/projectphotos/flutter/img${index + 1}.jpeg")),
            ) // Padding
        );
  }
}
