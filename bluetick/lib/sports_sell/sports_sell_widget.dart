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
import 'sports_sell_model.dart';
export 'sports_sell_model.dart';

class SportsSellWidget extends StatefulWidget {
  const SportsSellWidget({Key? key}) : super(key: key);

  @override
  _SportsSellWidgetState createState() => _SportsSellWidgetState();
}

class _SportsSellWidgetState extends State<SportsSellWidget> {
  late SportsSellModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SportsSellModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.movienameController1 ??= TextEditingController();
    _model.movienameController2 ??= TextEditingController();
    _model.moviedateController1 ??= TextEditingController();
    _model.moviedateController2 ??= TextEditingController();
    _model.moviedateController3 ??= TextEditingController(
        text: dateTimeFormat('d/M/y', _model.datePicked1));
    _model.movietimeController ??=
        TextEditingController(text: dateTimeFormat('jm', _model.datePicked2));
    _model.textController9 ??= TextEditingController();
    _model.textController10 ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Container(
                    width: 390.0,
                    height: 770.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F4F8),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    borderRadius: BorderRadius.circular(13.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).platinum,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        7.0, 6.0, 0.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed('appWorking');
                                      },
                                      child: FaIcon(
                                        FontAwesomeIcons.solidQuestionCircle,
                                        color: Color(0xFF03045E),
                                        size: 21.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/Blue_Tick.png',
                                  width: 180.0,
                                  height: 100.0,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    borderRadius: BorderRadius.circular(13.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      context.pushNamed('profile');
                                    },
                                    child: Icon(
                                      Icons.person,
                                      color: Color(0xFF03045E),
                                      size: 22.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 390.0,
                            height: 130.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, -0.95),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 10.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.4, -0.35),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: GradientText(
                                                    'Hello ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 48.0,
                                                        ),
                                                    colors: [
                                                      Color(0xFF0077B6),
                                                      Color(0xFF48CAE4)
                                                    ],
                                                    gradientDirection:
                                                        GradientDirection.ltr,
                                                    gradientType:
                                                        GradientType.linear,
                                                  ),
                                                ),
                                              ),
                                              GradientText(
                                                'What are you upto ?',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF48CAE4),
                                                        ),
                                                colors: [
                                                  Color(0xFF0077B6),
                                                  Color(0xFF48CAE4)
                                                ],
                                                gradientDirection:
                                                    GradientDirection.ttb,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30.0, 0.0, 0.0, 0.0),
                                        child: Image.asset(
                                          'assets/images/Asset_1.png',
                                          width: 180.0,
                                          height: 130.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 15.0, 7.0, 12.0),
                            child: Text(
                              'Categories',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF023E8A),
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 10.0),
                            child: Container(
                              width: 390.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF1F4F8),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      context.pushNamed('movieSell');
                                    },
                                    child: Container(
                                      width: 75.0,
                                      height: 95.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x0F000000),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              'assets/images/film-reel_(1).png',
                                              width: 35.0,
                                              height: 35.0,
                                              fit: BoxFit.cover,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 3.0, 0.0, 0.0),
                                              child: Text(
                                                'Movie',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF0077B6),
                                                          fontSize: 13.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      context.pushNamed('busSell');
                                    },
                                    child: Container(
                                      width: 75.0,
                                      height: 95.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              'assets/images/bus.png',
                                              width: 35.0,
                                              height: 35.0,
                                              fit: BoxFit.cover,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 3.0, 0.0, 0.0),
                                              child: Text(
                                                'Bus',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF0077B6),
                                                          fontSize: 13.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      context.pushNamed('concertSEll');
                                    },
                                    child: Container(
                                      width: 75.0,
                                      height: 95.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x0F000000),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Image.asset(
                                              'assets/images/music.png',
                                              width: 35.0,
                                              height: 35.0,
                                              fit: BoxFit.cover,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 3.0, 0.0, 0.0),
                                              child: Text(
                                                'Concert',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF0077B6),
                                                          fontSize: 13.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 75.0,
                                    height: 95.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x2990E0EF),
                                      borderRadius: BorderRadius.circular(18.0),
                                      border: Border.all(
                                        color: Color(0x2990E0EF),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 10.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset(
                                            'assets/images/running.png',
                                            width: 40.0,
                                            height: 40.0,
                                            fit: BoxFit.cover,
                                          ),
                                          Text(
                                            'Sports',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF0077B6),
                                                  fontSize: 13.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            indent: 10.0,
                            endIndent: 10.0,
                            color: Color(0x34023E8A),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 10.0, 0.0, 15.0),
                            child: Text(
                              'Personal details',
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF023E8A),
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 50.0),
                            child: Container(
                              width: 380.0,
                              height: 1000.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 15.0, 0.0, 0.0),
                                          child: Text(
                                            'Contact information',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF3284D6),
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 15.0, 15.0, 15.0),
                                          child: TextFormField(
                                            controller: _model.textController1,
                                            onFieldSubmitted: (_) async {
                                              final sportsCreateData =
                                                  createSportsRecordData(
                                                name:
                                                    _model.textController1.text,
                                              );
                                              await SportsRecord.collection
                                                  .doc()
                                                  .set(sportsCreateData);
                                            },
                                            autofocus: true,
                                            textCapitalization:
                                                TextCapitalization.words,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Name',
                                              hintText: 'Enter your name',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF023E8A),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF023E8A),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF0000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF0000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                ),
                                            validator: _model
                                                .textController1Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 15.0, 15.0, 15.0),
                                          child: TextFormField(
                                            controller: _model.textController2,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textController2',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            onFieldSubmitted: (_) async {
                                              final sportsCreateData =
                                                  createSportsRecordData(
                                                phnnum: int.tryParse(_model
                                                    .textController2.text),
                                              );
                                              await SportsRecord.collection
                                                  .doc()
                                                  .set(sportsCreateData);
                                            },
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'phone number',
                                              hintText:
                                                  'Enter your phone number',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF023E8A),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF0000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF0000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                              suffixIcon: _model
                                                      .textController2!
                                                      .text
                                                      .isNotEmpty
                                                  ? InkWell(
                                                      onTap: () async {
                                                        _model.textController2
                                                            ?.clear();
                                                        setState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.clear,
                                                        color:
                                                            Color(0xFF757575),
                                                        size: 22.0,
                                                      ),
                                                    )
                                                  : null,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                ),
                                            keyboardType: TextInputType.phone,
                                            validator: _model
                                                .textController2Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 15.0, 0.0, 10.0),
                                          child: Text(
                                            'Ticket information',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF3284D6),
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 15.0, 15.0, 15.0),
                                          child: Autocomplete<String>(
                                            initialValue: TextEditingValue(),
                                            optionsBuilder: (textEditingValue) {
                                              if (textEditingValue.text == '') {
                                                return const Iterable<
                                                    String>.empty();
                                              }
                                              return ['Option 1']
                                                  .where((option) {
                                                final lowercaseOption =
                                                    option.toLowerCase();
                                                return lowercaseOption.contains(
                                                    textEditingValue.text
                                                        .toLowerCase());
                                              });
                                            },
                                            optionsViewBuilder:
                                                (context, onSelected, options) {
                                              return AutocompleteOptionsList(
                                                textFieldKey:
                                                    _model.movienameKey1,
                                                textController: _model
                                                    .movienameController1!,
                                                options: options.toList(),
                                                onSelected: onSelected,
                                                textStyle: TextStyle(),
                                                textHighlightStyle: TextStyle(),
                                                elevation: 6.0,
                                                optionBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                optionHighlightColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                maxHeight: double.infinity,
                                              );
                                            },
                                            onSelected: (String selection) {
                                              setState(() => _model
                                                      .movienameSelectedOption1 =
                                                  selection);
                                              FocusScope.of(context).unfocus();
                                            },
                                            fieldViewBuilder: (
                                              context,
                                              textEditingController,
                                              focusNode,
                                              onEditingComplete,
                                            ) {
                                              _model.movienameController1 =
                                                  textEditingController;
                                              return TextFormField(
                                                key: _model.movienameKey1,
                                                controller:
                                                    textEditingController,
                                                focusNode: focusNode,
                                                onEditingComplete:
                                                    onEditingComplete,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.movienameController1',
                                                  Duration(milliseconds: 100),
                                                  () => setState(() {}),
                                                ),
                                                onFieldSubmitted: (_) async {
                                                  final sportsCreateData =
                                                      createSportsRecordData(
                                                    teama: _model
                                                        .movienameController1
                                                        .text,
                                                  );
                                                  await SportsRecord.collection
                                                      .doc()
                                                      .set(sportsCreateData);
                                                },
                                                autofocus: true,
                                                textCapitalization:
                                                    TextCapitalization
                                                        .characters,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'TEAM A',
                                                  hintText:
                                                      'Enter the name of team 1',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFF023E8A),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFF023E8A),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFFF0000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFFF0000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(10.0, 10.0,
                                                              10.0, 10.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                        ),
                                                validator: _model
                                                    .movienameController1Validator
                                                    .asValidator(context),
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 15.0, 15.0, 15.0),
                                          child: Autocomplete<String>(
                                            initialValue: TextEditingValue(),
                                            optionsBuilder: (textEditingValue) {
                                              if (textEditingValue.text == '') {
                                                return const Iterable<
                                                    String>.empty();
                                              }
                                              return ['Option 1']
                                                  .where((option) {
                                                final lowercaseOption =
                                                    option.toLowerCase();
                                                return lowercaseOption.contains(
                                                    textEditingValue.text
                                                        .toLowerCase());
                                              });
                                            },
                                            optionsViewBuilder:
                                                (context, onSelected, options) {
                                              return AutocompleteOptionsList(
                                                textFieldKey:
                                                    _model.movienameKey2,
                                                textController: _model
                                                    .movienameController2!,
                                                options: options.toList(),
                                                onSelected: onSelected,
                                                textStyle: TextStyle(),
                                                textHighlightStyle: TextStyle(),
                                                elevation: 6.0,
                                                optionBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                optionHighlightColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                maxHeight: double.infinity,
                                              );
                                            },
                                            onSelected: (String selection) {
                                              setState(() => _model
                                                      .movienameSelectedOption2 =
                                                  selection);
                                              FocusScope.of(context).unfocus();
                                            },
                                            fieldViewBuilder: (
                                              context,
                                              textEditingController,
                                              focusNode,
                                              onEditingComplete,
                                            ) {
                                              _model.movienameController2 =
                                                  textEditingController;
                                              return TextFormField(
                                                key: _model.movienameKey2,
                                                controller:
                                                    textEditingController,
                                                focusNode: focusNode,
                                                onEditingComplete:
                                                    onEditingComplete,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.movienameController2',
                                                  Duration(milliseconds: 100),
                                                  () => setState(() {}),
                                                ),
                                                onFieldSubmitted: (_) async {
                                                  final sportsCreateData =
                                                      createSportsRecordData(
                                                    teamb: _model
                                                        .movienameController2
                                                        .text,
                                                  );
                                                  await SportsRecord.collection
                                                      .doc()
                                                      .set(sportsCreateData);
                                                },
                                                autofocus: true,
                                                textCapitalization:
                                                    TextCapitalization
                                                        .characters,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'TEAM B',
                                                  hintText:
                                                      'Enter the name of team 2',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFF023E8A),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFF023E8A),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFFF0000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFFF0000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(10.0, 10.0,
                                                              10.0, 10.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                        ),
                                                validator: _model
                                                    .movienameController2Validator
                                                    .asValidator(context),
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 15.0, 15.0, 15.0),
                                          child: TextFormField(
                                            controller:
                                                _model.moviedateController1,
                                            onFieldSubmitted: (_) async {
                                              final sportsCreateData =
                                                  createSportsRecordData(
                                                seat: _model
                                                    .moviedateController1.text,
                                              );
                                              await SportsRecord.collection
                                                  .doc()
                                                  .set(sportsCreateData);
                                            },
                                            autofocus: true,
                                            textCapitalization:
                                                TextCapitalization.words,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Seatnumbers',
                                              hintText:
                                                  'Enter the seat Numbers',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF023E8A),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF023E8A),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF0000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF0000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                ),
                                            validator: _model
                                                .moviedateController1Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 15.0, 15.0, 15.0),
                                          child: TextFormField(
                                            controller:
                                                _model.moviedateController2,
                                            onFieldSubmitted: (_) async {
                                              final sportsCreateData =
                                                  createSportsRecordData(
                                                sporttype: _model
                                                    .moviedateController2.text,
                                              );
                                              await SportsRecord.collection
                                                  .doc()
                                                  .set(sportsCreateData);
                                            },
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Sport type',
                                              hintText: 'Eg:Football',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF023E8A),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF023E8A),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF0000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF0000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                ),
                                            validator: _model
                                                .moviedateController2Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Enter the date and time',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 15.0, 15.0, 15.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .moviedateController3,
                                                  onFieldSubmitted: (_) async {
                                                    final sportsCreateData =
                                                        createSportsRecordData(
                                                      spodate:
                                                          _model.datePicked1,
                                                    );
                                                    await SportsRecord
                                                        .collection
                                                        .doc()
                                                        .set(sportsCreateData);
                                                  },
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: dateTimeFormat(
                                                        'd/M/y',
                                                        _model.datePicked1),
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF023E8A),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF023E8A),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFFFF0000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFFFF0000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10.0,
                                                                10.0,
                                                                10.0,
                                                                10.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                      ),
                                                  keyboardType:
                                                      TextInputType.datetime,
                                                  validator: _model
                                                      .moviedateController3Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 20.0, 0.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  final _datePicked1Date =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate:
                                                        getCurrentTimestamp,
                                                    firstDate:
                                                        getCurrentTimestamp,
                                                    lastDate: DateTime(2050),
                                                  );

                                                  if (_datePicked1Date !=
                                                      null) {
                                                    setState(() {
                                                      _model.datePicked1 =
                                                          DateTime(
                                                        _datePicked1Date.year,
                                                        _datePicked1Date.month,
                                                        _datePicked1Date.day,
                                                      );
                                                    });
                                                  }
                                                },
                                                child: Icon(
                                                  Icons.date_range_sharp,
                                                  color: Color(0xFF023E8A),
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 15.0, 15.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .movietimeController,
                                                  onFieldSubmitted: (_) async {
                                                    final sportsCreateData =
                                                        createSportsRecordData(
                                                      spotime:
                                                          _model.datePicked2,
                                                    );
                                                    await SportsRecord
                                                        .collection
                                                        .doc()
                                                        .set(sportsCreateData);
                                                  },
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: dateTimeFormat(
                                                        'jm',
                                                        _model.datePicked2),
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF023E8A),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF023E8A),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFFFF0000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFFFF0000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10.0,
                                                                10.0,
                                                                10.0,
                                                                10.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                      ),
                                                  keyboardType:
                                                      TextInputType.datetime,
                                                  validator: _model
                                                      .movietimeControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 18.0, 15.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  final _datePicked2Time =
                                                      await showTimePicker(
                                                    context: context,
                                                    initialTime:
                                                        TimeOfDay.fromDateTime(
                                                            getCurrentTimestamp),
                                                  );
                                                  if (_datePicked2Time !=
                                                      null) {
                                                    setState(() {
                                                      _model.datePicked2 =
                                                          DateTime(
                                                        getCurrentTimestamp
                                                            .year,
                                                        getCurrentTimestamp
                                                            .month,
                                                        getCurrentTimestamp.day,
                                                        _datePicked2Time.hour,
                                                        _datePicked2Time.minute,
                                                      );
                                                    });
                                                  }
                                                },
                                                child: Icon(
                                                  Icons.more_time,
                                                  color: Color(0xFF023E8A),
                                                  size: 34.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 15.0, 15.0, 15.0),
                                          child: TextFormField(
                                            controller: _model.textController9,
                                            onFieldSubmitted: (_) async {
                                              final sportsCreateData =
                                                  createSportsRecordData(
                                                place:
                                                    _model.textController9.text,
                                              );
                                              await SportsRecord.collection
                                                  .doc()
                                                  .set(sportsCreateData);
                                            },
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'venue',
                                              hintText: 'Enter the venue',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF023E8A),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF0000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF0000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                ),
                                            validator: _model
                                                .textController9Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 15.0, 15.0, 15.0),
                                          child: TextFormField(
                                            controller: _model.textController10,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textController10',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            onFieldSubmitted: (_) async {
                                              final sportsCreateData =
                                                  createSportsRecordData(
                                                price: int.tryParse(_model
                                                    .textController10.text),
                                              );
                                              await SportsRecord.collection
                                                  .doc()
                                                  .set(sportsCreateData);
                                            },
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Price',
                                              hintText: 'Enter total price',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF023E8A),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF023E8A),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF0000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF0000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                              suffixIcon: _model
                                                      .textController10!
                                                      .text
                                                      .isNotEmpty
                                                  ? InkWell(
                                                      onTap: () async {
                                                        _model.textController10
                                                            ?.clear();
                                                        setState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.clear,
                                                        color:
                                                            Color(0xFF757575),
                                                        size: 22.0,
                                                      ),
                                                    )
                                                  : null,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                ),
                                            keyboardType: TextInputType.number,
                                            validator: _model
                                                .textController10Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Container(
                                          height: 200.0,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(115.0, 10.0,
                                                          115.0, 5.0),
                                                  child: StreamBuilder<
                                                      List<SportsRecord>>(
                                                    stream: querySportsRecord(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<SportsRecord>
                                                          buttonSportsRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final buttonSportsRecord =
                                                          buttonSportsRecordList
                                                                  .isNotEmpty
                                                              ? buttonSportsRecordList
                                                                  .first
                                                              : null;
                                                      return FFButtonWidget(
                                                        onPressed: () async {
                                                          final sportsCreateData =
                                                              {
                                                            ...createSportsRecordData(
                                                              name: _model
                                                                  .textController1
                                                                  .text,
                                                              phnnum: int
                                                                  .tryParse(_model
                                                                      .textController2
                                                                      .text),
                                                              seat: _model
                                                                  .moviedateController1
                                                                  .text,
                                                              sporttype: _model
                                                                  .moviedateController2
                                                                  .text,
                                                              place: _model
                                                                  .textController9
                                                                  .text,
                                                              tickets: int
                                                                  .tryParse(_model
                                                                      .textController9
                                                                      .text),
                                                              price: int.tryParse(
                                                                  _model
                                                                      .textController10
                                                                      .text),
                                                              userref:
                                                                  currentUserReference,
                                                              teama: _model
                                                                  .movienameController1
                                                                  .text,
                                                              teamb: _model
                                                                  .movienameController2
                                                                  .text,
                                                              spodate: _model
                                                                  .datePicked1,
                                                              spotime: _model
                                                                  .datePicked2,
                                                            ),
                                                            'lastupdated':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          };
                                                          await SportsRecord
                                                              .collection
                                                              .doc()
                                                              .set(
                                                                  sportsCreateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'posted Successfully!',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                            ),
                                                          );
                                                        },
                                                        text: 'Post',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 130.0,
                                                          height: 38.6,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color:
                                                              Color(0xFF3284D6),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                          elevation: 2.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 200.0,
                                          decoration: BoxDecoration(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
