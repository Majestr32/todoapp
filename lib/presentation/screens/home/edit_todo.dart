import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/domain/entities/todo/todo.dart';
import 'package:todoapp/presentation/blocs/edit_todo/edit_todo_bloc.dart';
import 'package:todoapp/presentation/common_widgets/custom_appbar.dart';
import 'package:todoapp/presentation/common_widgets/horizontal_screen_padding.dart';

import '../../../app/consts/colors.dart';
import '../../../app/consts/icons.dart';
import '../../../app/consts/strings.dart';
import '../../../app/consts/text_styles.dart';
import '../../../app/services/get_it.dart';
import '../../../app/utils/toast.dart';
import '../../blocs/user/user_bloc.dart';

class EditTodoScreen extends StatefulWidget {
  final TodoEntity todo;

  const EditTodoScreen({Key? key, required this.todo}) : super(key: key);

  @override
  State<EditTodoScreen> createState() => _EditTodoScreenState();
}

class _EditTodoScreenState extends State<EditTodoScreen> {
  final EditTodoBloc _editTodoBloc = it<EditTodoBloc>();

  late final _titleController = TextEditingController(text: widget.todo.title);

  late final _subtitleController =
      TextEditingController(text: widget.todo.subtitle);

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditTodoBloc, EditTodoState>(
      bloc: _editTodoBloc,
      listener: (context, state) {
        state.maybeMap(
            success: (state) {
              showToastMessage(context, AppStrings.successfullySaved);
              context.pop<TodoEntity>(state.newTodo);
            },
            error: (state) {
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

  @override
  void dispose() {
    _titleController.dispose();
    _subtitleController.dispose();
    super.dispose();
  }

  Widget _buildBody() => HorizontalScreenPadding(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 24,
                          color: AppColors.blackOpacity01)
                    ]),
                child: Column(
                  children: [
                    TextField(
                      controller: _titleController,
                      style: AppTextStyles.robotoMedium20,
                      cursorColor: AppColors.black,
                      cursorWidth: 0.5,
                      textInputAction: TextInputAction.newline,
                      minLines: 1,
                      maxLines: null,
                      maxLength: 70,
                      inputFormatters: [
                        TextInputFormatter.withFunction((oldValue, newValue) {
                          int newLines = newValue.text.split('\n').length;
                          if (newLines > 2) {
                            return oldValue;
                          } else {
                            return newValue;
                          }
                        }),
                      ],
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: AppStrings.title,
                        counterText: '',
                        hintStyle: AppTextStyles.robotoBold20Opacity05,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 14),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      child: LayoutBuilder(
                        builder: (context, constraints) => Scrollbar(
                          child: TextField(
                            controller: _subtitleController,
                            style: AppTextStyles.timesNewRoman16,
                            cursorWidth: 0.5,
                            cursorColor: AppColors.black,
                            textInputAction: TextInputAction.newline,
                            maxLines: (constraints.maxHeight -
                                        MediaQuery.of(context)
                                            .viewInsets
                                            .bottom) ~/
                                    24,
                            decoration: InputDecoration(
                              isDense: true,

                              hintText: AppStrings.description,
                              hintStyle: AppTextStyles.robotoMedium16Opacity05,
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 14)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      );

  PreferredSizeWidget _buildAppBar() => CustomAppBar(
        showBackButton: true,
        titleText: AppStrings.edit,
        actions: [
          GestureDetector(
            onTap: () {
              if(_titleController.text.isEmpty || _subtitleController.text.isEmpty){
                showToastMessage(context, AppStrings.fieldsNotFilled);
                return;
              }
              final userUid = context.read<UserBloc>().state.user!.id;
              _editTodoBloc.add(EditTodoEvent.editTodo(
                  userUid: userUid,
                  todoUid: widget.todo.id,
                  title: _titleController.text,
                  subtitle: _subtitleController.text));
            },
            child: const Icon(
              AppIcons.save,
              color: AppColors.black,
              size: 24,
            ),
          ),
        ],
      );
}
