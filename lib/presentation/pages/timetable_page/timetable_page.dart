import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/presentation/pages/timetable_page/date_time_action_tile.dart';
import 'package:school_app/presentation/viewmodels/timetable_page_viewmodel.dart';
import 'package:school_app/utils/time_utils.dart';

class TimetablePage extends StatelessWidget {
  const TimetablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TimetablePageViewmodel>(
      builder: (context, viewModel, child) {
        // fetch data just when not already existing
        if (!viewModel.dataFetched && !viewModel.isLoading) {
          viewModel.loadCurrentDay();
        }

        // loading page whenever no data is existing
        if (viewModel.isLoading &&
            !viewModel.dataFetched &&
            viewModel.pages.isEmpty) {
          return Scaffold(
            appBar: AppBar(title: Text("Timetable")),
            body: Center(child: CircularProgressIndicator()),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: Text("Timetable"),
            actions: [DateInfoTileAppBar(viewModel: viewModel)],
            actionsPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            elevation: 1,
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.today_rounded),
            onPressed: () {
              viewModel.loadCurrentDay();
            },
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              // main timetable content
              Expanded(
                child: PageView.builder(
                  controller: viewModel.controller,
                  pageSnapping: true,
                  physics: PageScrollPhysics(),
                  itemCount: viewModel.pages.length,
                  onPageChanged: (index) async {
                    await viewModel.onPageChange(index);
                  },
                  itemBuilder: (context, index) {
                    return viewModel.pages[index];
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}