import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/presentation/viewmodels/overview_page_viewmodel.dart';

class TodaysLessonsSection extends StatelessWidget {
  const TodaysLessonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OverviewPageViewmodel>(
      builder: (context, viewModel, child) {
        print(viewModel.isLoading);

        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // heading for this section
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 8.0,
              ),
              child: Text(
                "Today's lessons",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // horizontal list of lessons of the day
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: viewModel.lessons.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      viewModel.lessons[index].shortName,
                      style: TextStyle(
                        fontSize:
                            Theme.of(
                              context,
                            ).textTheme.headlineSmall!.fontSize ??
                            26,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
