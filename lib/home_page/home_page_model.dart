import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for celcius_input widget.
  FocusNode? celciusInputFocusNode;
  TextEditingController? celciusInputTextController;
  String? Function(BuildContext, String?)? celciusInputTextControllerValidator;
  // State field(s) for fahrenheit_input widget.
  FocusNode? fahrenheitInputFocusNode;
  TextEditingController? fahrenheitInputTextController;
  String? Function(BuildContext, String?)?
      fahrenheitInputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    celciusInputFocusNode?.dispose();
    celciusInputTextController?.dispose();

    fahrenheitInputFocusNode?.dispose();
    fahrenheitInputTextController?.dispose();
  }
}
