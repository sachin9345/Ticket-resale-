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
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ConcertSEllModel extends FlutterFlowModel {
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
  TextEditingController? movietimeController;
  String? Function(BuildContext, String?)? movietimeControllerValidator;
  DateTime? datePicked2;
  // State field(s) for venue widget.
  TextEditingController? venueController;
  String? Function(BuildContext, String?)? venueControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    moviedateController1?.dispose();
    moviedateController2?.dispose();
    moviedateController3?.dispose();
    movietimeController?.dispose();
    venueController?.dispose();
    textController9?.dispose();
    textController10?.dispose();
  }

  /// Additional helper methods are added here.

}
