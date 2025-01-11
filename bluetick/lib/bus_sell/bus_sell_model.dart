import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class BusSellModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for moviename widget.
  final movienameKey = GlobalKey();
  TextEditingController? movienameController;
  String? movienameSelectedOption;
  String? Function(BuildContext, String?)? movienameControllerValidator;
  // State field(s) for moviedate widget.
  TextEditingController? moviedateController1;
  String? Function(BuildContext, String?)? moviedateController1Validator;
  // State field(s) for moviedate widget.
  TextEditingController? moviedateController2;
  String? Function(BuildContext, String?)? moviedateController2Validator;
  // State field(s) for moviedate widget.
  TextEditingController? moviedateController3;
  String? Function(BuildContext, String?)? moviedateController3Validator;
  DateTime? datePicked1;
  // State field(s) for movietime widget.
  TextEditingController? movietimeController1;
  String? Function(BuildContext, String?)? movietimeController1Validator;
  DateTime? datePicked2;
  // State field(s) for moviedate widget.
  TextEditingController? moviedateController4;
  String? Function(BuildContext, String?)? moviedateController4Validator;
  DateTime? datePicked3;
  // State field(s) for movietime widget.
  TextEditingController? movietimeController2;
  String? Function(BuildContext, String?)? movietimeController2Validator;
  DateTime? datePicked4;
  // State field(s) for pick widget.
  TextEditingController? pickController;
  String? Function(BuildContext, String?)? pickControllerValidator;
  // State field(s) for drop widget.
  TextEditingController? dropController;
  String? Function(BuildContext, String?)? dropControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    moviedateController1?.dispose();
    moviedateController2?.dispose();
    moviedateController3?.dispose();
    movietimeController1?.dispose();
    moviedateController4?.dispose();
    movietimeController2?.dispose();
    pickController?.dispose();
    dropController?.dispose();
    textController12?.dispose();
  }

  /// Additional helper methods are added here.

}
