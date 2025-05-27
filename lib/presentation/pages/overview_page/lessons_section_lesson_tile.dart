import 'package:flutter/material.dart';
import 'package:school_app/presentation/viewmodels/overview_page_viewmodel.dart';

class LessonTile extends StatelessWidget {
  final int index;
  final OverviewPageViewmodel viewModel;

  const LessonTile({super.key, required this.index, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TODO: Add lesson tile onPress logic
      },

      //FIXME: tap animation is wider than tile
      borderRadius: BorderRadius.circular(7),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 4, left: 4),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(7)
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            viewModel.lessons[index].shortName,
            maxLines: 1,
            overflow: TextOverflow.fade,
          ),
        ),
      ),
    );
  }
}