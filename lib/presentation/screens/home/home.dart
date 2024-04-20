import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/app/consts/colors.dart';
import 'package:todoapp/app/consts/icons.dart';
import 'package:todoapp/app/consts/strings.dart';
import 'package:todoapp/app/consts/svgs.dart';
import 'package:todoapp/app/consts/text_styles.dart';
import 'package:todoapp/app/router/router.dart';
import 'package:todoapp/app/services/get_it.dart';
import 'package:todoapp/presentation/blocs/todos/todos_bloc.dart';
import 'package:todoapp/presentation/blocs/user/user_bloc.dart';
import 'package:todoapp/presentation/common_widgets/horizontal_screen_padding.dart';

import '../../../domain/entities/todo/todo.dart';
import '../../common_widgets/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _todosBloc = it<TodosBloc>();

  bool _searchFieldShown = false;

  @override
  void initState() {
    _todosBloc.add(TodosEvent.fetchTodos(
        userUid: context.read<UserBloc>().state.user!.id));
    _searchController.addListener(_searchTermChanged);
    super.initState();
  }

  void _searchTermChanged() {
    _todosBloc
        .add(TodosEvent.changeSearchTerm(searchTerm: _searchController.text));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodosBloc, TodosState>(
      bloc: _todosBloc,
      builder: (context, state) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _searchFieldShown
                ? _buildAppBarSearch()
                : _buildAppBarInitial(),
            floatingActionButton: _buildAddButton(),
            body: state.isLoaded
                ? (state.allTodos.isEmpty
                    ? _buildNoTodos()
                    : _buildTodosList(state.filteredTodos))
                : const Center(
                    child: CircularProgressIndicator(),
                  ));
      },
    );
  }

  final TextEditingController _searchController = TextEditingController();

  final FocusNode _focusNode = FocusNode();

  PreferredSizeWidget _buildAppBarSearch() => CustomAppBar(
        titleWidget: TextField(
          controller: _searchController,
          focusNode: _focusNode,
          style: AppTextStyles.robotoMedium16,
          cursorColor: AppColors.black,
          cursorWidth: 0.5,
          decoration: InputDecoration(
            hintText: AppStrings.search,
            hintStyle: AppTextStyles.robotoMedium16Opacity05,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: const EdgeInsets.all(10),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                _searchFieldShown = false;
                _searchController.clear();
                _focusNode.unfocus();
              });
            },
            child: const Icon(
              AppIcons.close,
              color: AppColors.black,
              size: 24,
            ),
          ),
        ],
      );

  PreferredSizeWidget _buildAppBarInitial() => CustomAppBar(
        titleText: AppStrings.todos,
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                _searchFieldShown = true;
                _focusNode.requestFocus();
              });
            },
            child: const Icon(
              AppIcons.search,
              color: AppColors.black,
              size: 24,
            ),
          ),
        ],
      );

  Widget _buildAddButton() => Padding(
        padding: const EdgeInsets.only(bottom: 30, right: 20),
        child: Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
            BoxShadow(
                offset: const Offset(0, 14),
                blurRadius: 50,
                color: const Color(0xFF001924).withOpacity(0.2))
          ]),
          child: Material(
            shape: const CircleBorder(),
            color: AppColors.mainAccent,
            child: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  context.push(AppRoutes.addTodo);
                },
                splashColor: AppColors.white.withOpacity(0.5),
                child: const Icon(
                  AppIcons.plus,
                  size: 32,
                  color: AppColors.white,
                )),
          ),
        ),
      );

  Widget _buildTodosList(List<TodoEntity> todos) => SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            todos.isEmpty
                ? const SizedBox.shrink()
                : HorizontalScreenPadding(
                    child: LayoutGrid(
                      gridFit: GridFit.loose,
                      columnSizes: [1.fr, 1.fr],
                      rowSizes: List.generate(
                          (todos.length / 2).ceilToDouble().toInt(),
                          (index) => auto),
                      rowGap: 20,
                      columnGap: 20,
                      children: todos
                          .map((e) => GestureDetector(
                        onTap: (){
                          context.push(AppRoutes.view, extra: e);
                        },
                        child: _buildCardTile(
                                text: e.title, subtext: e.subtitle),
                          ))
                          .toList(),
                    ),
                  ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      );

  Widget _buildNoTodos() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppSvgs.openedBox,
              width: 105,
              height: 100,
              color: AppColors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              AppStrings.noTodos,
              style: AppTextStyles.robotoMedium16Opacity04,
            )
          ],
        ),
      );

  Widget _buildCardTile({required String text, required String subtext}) =>
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 4),
                  blurRadius: 24,
                  color: AppColors.black.withOpacity(0.1))
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                text,
                maxLines: 2,
                style: AppTextStyles.robotoMedium16,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                subtext,
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
                style: AppTextStyles.timesNewRoman16,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      );

  @override
  void dispose() {
    _focusNode.dispose();
    _searchController.removeListener(_searchTermChanged);
    _searchController.dispose();
    super.dispose();
  }
}
