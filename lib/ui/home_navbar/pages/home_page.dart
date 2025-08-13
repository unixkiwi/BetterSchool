import 'package:betterschool/ui/home_navbar/bloc/home_bloc.dart';
import 'package:betterschool/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageNavBar extends StatelessWidget {
  const HomePageNavBar({super.key});

  Widget _getPage(BuildContext context, HomeState state) {
    if (state is HomePageSelectedState) {
      logger.d("HomePageSelected state received");
      return state.page;
    }
    return Center(child: CircularProgressIndicator());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: _getPage(context, state),
          bottomNavigationBar: state is HomePageLoading
              ? null
              : NavigationBar(
                  selectedIndex: state is HomePageSelectedState
                      ? state.index
                      : 0,
                  onDestinationSelected: (int index) => context
                      .read<HomeBloc>()
                      .add(DestinationTappedEvent(index: index)),
                  destinations: context.watch<HomeBloc>().destinations,
                ),
        );
      },
    );
  }
}
