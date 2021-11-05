import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:state_manage_sample/data/game_model.dart';
import 'package:state_manage_sample/data/radio_button_model.dart';
import 'package:state_manage_sample/logic/cubit/category_cubit.dart';
import 'package:state_manage_sample/logic/cubit/platform_cubit.dart';
import 'package:state_manage_sample/presentation/components/radio_button.dart';
import '../components/game_cell.dart';
import 'package:state_manage_sample/presentation/components/filter_row.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameListPage extends StatelessWidget {
  const GameListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _platformButtons() {
      Set<GamePlatform> platforms = {};
      for (GameData game in GameData.mock) {
        platforms.add(game.platform);
      }
      return platforms.map((e) {
        switch (e) {
          case GamePlatform.ns:
            return BlocBuilder<PlatformCubit, PlatformState>(
              buildWhen: (previous, current) =>
                  previous.value == GamePlatform.ns || current.value == GamePlatform.ns,
              builder: (context, state) {
                return RadioButton(
                  color: Colors.red.shade800,
                  content: "Switch",
                  isSelected: state.value == GamePlatform.ns,
                  size: RadioButtonSize.small,
                  onTap: () {
                    BlocProvider.of<PlatformCubit>(context).toggleFilterPlatformNS();
                  },
                );
              },
            );
          case GamePlatform.ps4:
            return BlocBuilder<PlatformCubit, PlatformState>(
              buildWhen: (previous, current) =>
                  previous.value == GamePlatform.ps4 || current.value == GamePlatform.ps4,
              builder: (context, state) {
                return RadioButton(
                  color: Colors.blue.shade500,
                  content: "PlayStation4",
                  isSelected: state.value == GamePlatform.ps4,
                  size: RadioButtonSize.small,
                  onTap: () {
                    BlocProvider.of<PlatformCubit>(context).toggleFilterPlatformPS4();
                  },
                );
              },
            );
          case GamePlatform.ps5:
            return BlocBuilder<PlatformCubit, PlatformState>(
              buildWhen: (previous, current) =>
                  previous.value == GamePlatform.ps5 || current.value == GamePlatform.ps5,
              builder: (context, state) {
                return RadioButton(
                  color: Colors.blue.shade900,
                  content: "PlayStation5",
                  isSelected: state.value == GamePlatform.ps5,
                  size: RadioButtonSize.small,
                  onTap: () {
                    BlocProvider.of<PlatformCubit>(context).toggleFilterPlatformPS5();
                  },
                );
              },
            );
          default:
            return Container();
        }
      }).toList();
    }

    List<Widget> _categoryButtons() {
      Set<String> categories = {};
      for (GameData game in GameData.mock) {
        categories.addAll(game.tags);
      }
      return categories
          .map((e) => BlocBuilder<CategoryCubit, CategoryState>(
                builder: (context, state) {
                  return RadioButton(
                    color: Colors.green.shade700,
                    content: e,
                    isSelected: state.value.contains(e),
                    size: RadioButtonSize.small,
                    onTap: () {
                      BlocProvider.of<CategoryCubit>(context).toggleFilterCategory(e);
                    },
                  );
                },
              ))
          .toList();
    }

    List<GameData> _filterGameMockDataBy(GamePlatform platform, List<String> categories) {
      var filteredByPlatform = GameData.mock
          .where((element) => platform == GamePlatform.all || element.platform == platform);
      return filteredByPlatform
          .where((element) =>
              categories.isEmpty ||
              element.tags.toSet().intersection(categories.toSet()).length ==
                  categories.toSet().length)
          .toList();
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider<PlatformCubit>(
          create: (context) => PlatformCubit(),
        ),
        BlocProvider<CategoryCubit>(
          create: (context) => CategoryCubit(),
        ),
      ],
      child: CupertinoApp(
        title: "State manage sample",
        localizationsDelegates: const [
          DefaultMaterialLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
          DefaultWidgetsLocalizations.delegate,
        ],
        home: CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text("GAME LIST"),
          ),
          child: SafeArea(
            child: Column(
              children: [
                FilterView(title: "平台", options: _platformButtons(), size: RadioButtonSize.small),
                FilterView(title: "類型", options: _categoryButtons(), size: RadioButtonSize.small),
                Builder(
                  builder: (context) {
                    final platformState = context.watch<PlatformCubit>().state;
                    final categoryState = context.watch<CategoryCubit>().state;
                    return Flexible(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        child: ListView.separated(
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 10,
                            );
                          },
                          itemCount: _filterGameMockDataBy(platformState.value, categoryState.value)
                              .length,
                          itemBuilder: (context, index) => GameCell(
                            game: _filterGameMockDataBy(
                                platformState.value, categoryState.value)[index],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
