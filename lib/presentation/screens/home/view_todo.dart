import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/app/router/router.dart';
import 'package:todoapp/domain/entities/todo/todo.dart';
import 'package:todoapp/presentation/blocs/delete_todo/delete_todo_bloc.dart';
import 'package:todoapp/presentation/blocs/user/user_bloc.dart';
import 'package:todoapp/presentation/common_widgets/custom_appbar.dart';
import 'package:todoapp/presentation/common_widgets/horizontal_screen_padding.dart';
import 'package:todoapp/presentation/popups/confirm_operation.dart';

import '../../../app/consts/colors.dart';
import '../../../app/consts/icons.dart';
import '../../../app/consts/strings.dart';
import '../../../app/consts/text_styles.dart';
import '../../../app/services/get_it.dart';
import '../../../app/utils/toast.dart';

class ViewTodoScreen extends StatefulWidget {
  final TodoEntity todo;

  const ViewTodoScreen({Key? key, required this.todo}) : super(key: key);

  @override
  State<ViewTodoScreen> createState() => _ViewTodoScreenState();
}

class _ViewTodoScreenState extends State<ViewTodoScreen> {
  final DeleteTodoBloc _deleteTodoBloc = it<DeleteTodoBloc>();

  late TodoEntity todo = widget.todo;

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteTodoBloc, DeleteTodoState>(
      bloc: _deleteTodoBloc,
      listener: (context,state){
        state.maybeMap(
            success: (_) {
              showToastMessage(context, AppStrings.successfullyDeleted);
              context.pop();
            },
            error: (state){
              showToastMessage(context, state.e.message);
            },
            orElse: () {});
      },
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() => HorizontalScreenPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 24,
                        color: AppColors.blackOpacity01)
                  ]),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      todo.title,
                      maxLines: null,
                      style: AppTextStyles.robotoMedium20,
                    ),
                    Expanded(
                      child: Scrollbar(
                        child: Text(
                          todo.subtitle,
                          style: AppTextStyles.timesNewRoman16,
                          maxLines: null,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );

  PreferredSizeWidget _buildAppBar() => CustomAppBar(
        showBackButton: true,
        titleText: AppStrings.view,
        actions: [
          GestureDetector(
            onTap: () async {
              final newTodo =
                  await context.push<TodoEntity?>(AppRoutes.edit, extra: todo);
              if (newTodo == null) return;
              setState(() {
                todo = newTodo;
              });
            },
            child: const Icon(
              AppIcons.pen,
              color: AppColors.black,
              size: 24,
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          GestureDetector(
            onTap: () async{
              final confirmed = await showConfirmOperationPopup(
                context,
                title: AppStrings.deleteTodo,
                subtitle: AppStrings.confirmRemoveTodo,
                yes: AppStrings.yes,
                no: AppStrings.no,
              );
              if(!confirmed || !mounted) return;
              final userUid = context.read<UserBloc>().state.user!.id;
              _deleteTodoBloc.add(DeleteTodoEvent.deleteTodo(userUid: userUid, todoUid: todo.id));
            },
            child: const Icon(
              AppIcons.delete,
              color: AppColors.black,
              size: 24,
            ),
          ),
        ],
      );
}
