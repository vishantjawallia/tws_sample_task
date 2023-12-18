// ignore_for_file: prefer_const_constructors_in_immutables

library img_detail_screen_view;

import 'dart:io';


import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:tws_sample_task/helpers/%20extension.dart';
import '../../../models/images_models.dart';
import '../../theme/palettes.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import 'img_detail_screen_view_model.dart';

part 'img_detail_screen_mobile.dart';
part 'img_detail_screen_tablet.dart';
part 'img_detail_screen_desktop.dart';

// ignore: must_be_immutable
class ImgDetailScreenView extends StatelessWidget {
  static const routeName = '/img_detail_screen';
  final Images? imageObj;

  ImgDetailScreenView({super.key, this.imageObj});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ImgDetailScreenViewModel>.reactive(
        viewModelBuilder: () => ImgDetailScreenViewModel(imageObj),
        onViewModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout.builder(
            mobile: (_) => _ImgDetailScreenMobile(viewModel),
            desktop: (_) => _ImgDetailScreenMobile(viewModel),
            tablet: (_) => _ImgDetailScreenMobile(viewModel),

            //Uncomment it if you've planned to support specifically for desktop and tablet
            //desktop: _ImgDetailScreenDesktop(viewModel),
            //tablet: _ImgDetailScreenTablet(viewModel),
          );
        });
  }
}
