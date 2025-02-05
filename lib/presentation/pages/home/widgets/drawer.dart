import 'dart:convert';

import 'package:elbek_ai/domain/model/local_models_response.dart';
import 'package:elbek_ai/domain/model/pulling_response.dart';
import 'package:elbek_ai/presentation/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_auth/local_auth.dart';

import '../../../../application/models/models_bloc.dart';
import '../../../../domain/service/helper.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  void initState() {
    AppLifecycleListener(
      onResume: () {
        context.read<ModelsBloc>().add(ModelsEvent.getLocalModels(context));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppHelper.screenSize(context).width * .12,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(47, 46, 46, 1),
        border: Border(
          right: BorderSide(color: Colors.black, width: 1),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              cursorHeight: 16,
              cursorColor: Colors.white.withOpacity(.5),
              cursorWidth: 1,
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (value) {
                context.read<ModelsBloc>().add(
                      ModelsEvent.pullModel(
                        context,
                        value,
                        onSuccess: (p0) {
                          p0.listen(
                            (event) {
                              final pullStatus = PullingResponse.fromRawJson(
                                  utf8.decode(event));
                              if (pullStatus.total != null &&
                                  pullStatus.completed != null) {
                                context.read<ModelsBloc>().add(
                                    ModelsEvent.setLoadingPercent(
                                        (pullStatus.completed!) ~/
                                            (pullStatus.completed!)));
                              }
                            },
                          );
                        },
                      ),
                    );
              },
              scrollPadding: EdgeInsets.zero,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  size: 18,
                  color: Colors.grey.withOpacity(.4),
                ),
                hintText: "Search",
                fillColor: const Color.fromRGBO(51, 50, 50, 1),
                filled: true,
                hintStyle:
                    TextStyle(color: Colors.grey.withOpacity(.4), fontSize: 13),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(57, 56, 56, 1), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(57, 56, 56, 1), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(57, 56, 56, 1), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(57, 56, 56, 1), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          BlocBuilder<ModelsBloc, ModelsState>(
            builder: (context, state) {
              return ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemCount: state.localModels.length,
                itemBuilder: (context, index) {
                  final current = state.localModels[index];
                  final isSelected = state.selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      context
                          .read<ModelsBloc>()
                          .add(ModelsEvent.selectModel(index));
                    },
                    child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isSelected
                              ? const Color.fromRGBO(61, 62, 63, 1)
                              : Colors.transparent,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                if (isSelected)
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Icon(
                                      CupertinoIcons
                                          .bubble_left_bubble_right_fill,
                                      color: Colors.white.withOpacity(.6),
                                      size: 20,
                                    ),
                                  ),
                                Expanded(
                                  child: Text(
                                    current.name ?? '',
                                    style: const TextStyle(
                                      color: CustomStyle.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: FittedBox(
                                    child: IconButton(
                                        onPressed: () async {
                                          final res =
                                              await LocalAuthentication()
                                                  .authenticate(
                                                      localizedReason:
                                                          "delete model");
                                          if (res) {
                                            context.read<ModelsBloc>().add(
                                                  ModelsEvent.deleteModel(
                                                      context,
                                                      current.name ?? ""),
                                                );
                                          }
                                        },
                                        hoverColor: Colors.grey.withOpacity(.1),
                                        style: const ButtonStyle(),
                                        icon: const Icon(
                                          CupertinoIcons.delete,
                                          color: Colors.red,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 8,
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
