import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/app/services/get_it.dart';
import 'package:todoapp/app/utils/toast.dart';
import 'package:todoapp/presentation/blocs/add_todo/add_todo_bloc.dart';
import 'package:todoapp/presentation/blocs/user/user_bloc.dart';
import 'package:todoapp/presentation/common_widgets/custom_appbar.dart';

import '../../../app/consts/colors.dart';
import '../../../app/consts/icons.dart';
import '../../../app/consts/strings.dart';
import '../../../app/consts/text_styles.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  final _addTodoBloc = it<AddTodoBloc>();

  final _titleController = TextEditingController();

  final _subtitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddTodoBloc, AddTodoState>(
      bloc: _addTodoBloc,
      listener: (context, state) {
        state.maybeMap(
            success: (_) {
              showToastMessage(context, AppStrings.successfullySaved);
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

  @override
  void dispose() {
    _titleController.dispose();
    _subtitleController.dispose();
    super.dispose();
  }

  Widget _buildBody() => Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _titleController,
            style: AppTextStyles.robotoBold20,
            cursorColor: AppColors.black,
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
              hintText: AppStrings.title,
              counterText: '',
              hintStyle: AppTextStyles.robotoBold20Opacity05,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding: EdgeInsets.all(10),
            ),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) => Scrollbar(
                child: TextField(
                  controller: _subtitleController,
                  style: AppTextStyles.timesNewRoman16,
                  cursorColor: AppColors.black,
                  textInputAction: TextInputAction.newline,
                  maxLines: (constraints.maxHeight -
                              MediaQuery.of(context).viewInsets.bottom) ~/
                          24 -
                      2,
                  decoration: InputDecoration(
                    hintText: AppStrings.description,
                    hintStyle: AppTextStyles.robotoMedium16Opacity05,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
            ),
          ),
        ],
      );

  PreferredSizeWidget _buildAppBar() => CustomAppBar(
        showBackButton: true,
        titleText: AppStrings.add,
        actions: [
          GestureDetector(
            onTap: () {
              if(_titleController.text.isEmpty || _subtitleController.text.isEmpty){
                showToastMessage(context, AppStrings.fieldsNotFilled);
                return;
              }
              final userUid = context.read<UserBloc>().state.user!.id;
              _addTodoBloc.add(AddTodoEvent.addTodo(
                  userUid: userUid,
                  title: _titleController.text,
                  subtitle: _subtitleController.text));
            },
            child: const Icon(
              AppIcons.check,
              color: AppColors.black,
              size: 24,
            ),
          ),
        ],
      );
}
