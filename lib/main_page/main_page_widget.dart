import '/backend/backend.dart';
import '/utilities/theme.dart';
import '/utilities/util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:styled_divider/styled_divider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main_page_model.dart';
export 'main_page_model.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({super.key});

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  late MainPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainPageModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.02, 1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.45,
                          height: MediaQuery.sizeOf(context).height * 0.3,
                          decoration: BoxDecoration(
                            color: FlutterTheme.of(context).alternate,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(10000.0),
                              topRight: Radius.circular(10000.0),
                            ),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, -0.56),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'I\'m ',
                                style: FlutterTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily),
                                    ),
                              ),
                              TextSpan(
                                text: ' Avaneesh ',
                                style: FlutterTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displaySmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displaySmallFamily),
                                    ),
                              ),
                              const TextSpan(
                                text: ',\n',
                                style: TextStyle(),
                              ),
                              const TextSpan(
                                text: 'Developer and Analyst',
                                style: TextStyle(),
                              )
                            ],
                            style: FlutterTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 50.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2FAvaneesh_ai_portfoilio.png?alt=media&token=9da13176-adca-4d75-bae4-2c835f4aa734',
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 0.6,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.85),
                        child: Container(
                          width: 250.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: const Color(0x8DFFFFFF),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(35.0),
                              bottomRight: Radius.circular(35.0),
                              topLeft: Radius.circular(35.0),
                              topRight: Radius.circular(35.0),
                            ),
                            border: Border.all(
                              color: FlutterTheme.of(context).primary,
                              width: 1.5,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(
                                        'https://drive.google.com/file/d/1U-lz5p_1uaLu23yUv_ACiOUWaj2-WPF5/view?usp=sharing');
                                  },
                                  child: Container(
                                    width: 150.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterTheme.of(context)
                                          .secondaryText,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(35.0),
                                        bottomRight: Radius.circular(35.0),
                                        topLeft: Radius.circular(35.0),
                                        topRight: Radius.circular(35.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Resume',
                                          style: FlutterTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .titleMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .titleMediumFamily),
                                              ),
                                        ),
                                        Icon(
                                          Icons.arrow_outward,
                                          color: FlutterTheme.of(context)
                                              .primaryBackground,
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await launchURL(
                                          'https://drive.google.com/file/d/1jr6zw9ux1nBRMZfaFRViPxcKVFODYU6D/view?usp=drive_link ');
                                    },
                                    child: Text(
                                      'View',
                                      style: FlutterTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily:
                                                FlutterTheme.of(context)
                                                    .titleMediumFamily,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterTheme.of(context)
                                                        .titleMediumFamily),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, -0.77),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          height: MediaQuery.sizeOf(context).height * 0.05,
                          decoration: BoxDecoration(
                            color: FlutterTheme.of(context)
                                .secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(35.0),
                              bottomRight: Radius.circular(35.0),
                              topLeft: Radius.circular(35.0),
                              topRight: Radius.circular(35.0),
                            ),
                            border: Border.all(
                              color: FlutterTheme.of(context).secondary,
                            ),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Hello!',
                              style: FlutterTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.93, -0.1),
                        child: FaIcon(
                          FontAwesomeIcons.quoteLeft,
                          color: FlutterTheme.of(context).secondary,
                          size: 35.0,
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(0.0, 0.12),
                        child: Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.9, 0.1),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '3 Years',
                                style: FlutterTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily),
                                    ),
                              ),
                              TextSpan(
                                text: '\nExperience',
                                style: FlutterTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .bodyLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .bodyLargeFamily),
                                    ),
                              )
                            ],
                            style: FlutterTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterTheme.of(context)
                                          .bodyLargeFamily),
                                ),
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.9, -0.1),
                        child: Container(
                          width: 175.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    FlutterTheme.of(context).secondaryText,
                                size: 35.0,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    FlutterTheme.of(context).secondaryText,
                                size: 35.0,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    FlutterTheme.of(context).secondaryText,
                                size: 35.0,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    FlutterTheme.of(context).secondaryText,
                                size: 35.0,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    FlutterTheme.of(context).secondaryText,
                                size: 35.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.9, 0.1),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.27,
                          decoration: const BoxDecoration(),
                          child: Text(
                            'Software developer crafting dynamic cross-platform experiences with UI/UX expertise, and data analyst skills.',
                            textAlign: TextAlign.start,
                            style: FlutterTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterTheme.of(context)
                                          .bodyLargeFamily),
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.6,
                          height: MediaQuery.sizeOf(context).height * 0.3,
                          decoration: BoxDecoration(
                            color: FlutterTheme.of(context).alternate,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(1000.0),
                              topRight: Radius.circular(1000.0),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, -0.65),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'I\'m ',
                                style: FlutterTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily),
                                    ),
                              ),
                              TextSpan(
                                text: ' Avaneesh ',
                                style: FlutterTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displaySmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displaySmallFamily),
                                    ),
                              ),
                              const TextSpan(
                                text: ',\n',
                                style: TextStyle(),
                              ),
                              const TextSpan(
                                text: 'Developer and Analyst',
                                style: TextStyle(),
                              )
                            ],
                            style: FlutterTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 50.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2FAvaneesh_ai_portfoilio.png?alt=media&token=9da13176-adca-4d75-bae4-2c835f4aa734',
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 0.7,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.85),
                        child: Container(
                          width: 250.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: const Color(0x8DFFFFFF),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(35.0),
                              bottomRight: Radius.circular(35.0),
                              topLeft: Radius.circular(35.0),
                              topRight: Radius.circular(35.0),
                            ),
                            border: Border.all(
                              color: FlutterTheme.of(context).primary,
                              width: 1.5,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(
                                        'https://drive.google.com/file/d/1U-lz5p_1uaLu23yUv_ACiOUWaj2-WPF5/view?usp=sharing');
                                  },
                                  child: Container(
                                    width: 140.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterTheme.of(context)
                                          .secondaryText,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(35.0),
                                        bottomRight: Radius.circular(35.0),
                                        topLeft: Radius.circular(35.0),
                                        topRight: Radius.circular(35.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Resume',
                                          style: FlutterTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .titleMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .titleMediumFamily),
                                              ),
                                        ),
                                        Icon(
                                          Icons.arrow_outward,
                                          color: FlutterTheme.of(context)
                                              .primaryBackground,
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await launchURL(
                                          'https://drive.google.com/file/d/1jr6zw9ux1nBRMZfaFRViPxcKVFODYU6D/view?usp=drive_link ');
                                    },
                                    child: Text(
                                      'View',
                                      style: FlutterTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily:
                                                FlutterTheme.of(context)
                                                    .titleMediumFamily,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterTheme.of(context)
                                                        .titleMediumFamily),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, -0.85),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          height: MediaQuery.sizeOf(context).height * 0.05,
                          decoration: BoxDecoration(
                            color: FlutterTheme.of(context)
                                .secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(35.0),
                              bottomRight: Radius.circular(35.0),
                              topLeft: Radius.circular(35.0),
                              topRight: Radius.circular(35.0),
                            ),
                            border: Border.all(
                              color: FlutterTheme.of(context).secondary,
                            ),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Hello!',
                              style: FlutterTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.93, -0.1),
                        child: FaIcon(
                          FontAwesomeIcons.quoteLeft,
                          color: FlutterTheme.of(context).secondary,
                          size: 35.0,
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(0.0, 0.12),
                        child: Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.9, 0.1),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '3 Years',
                                style: FlutterTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily),
                                    ),
                              ),
                              TextSpan(
                                text: '\nExperience',
                                style: FlutterTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .bodyLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .bodyLargeFamily),
                                    ),
                              )
                            ],
                            style: FlutterTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterTheme.of(context)
                                          .bodyLargeFamily),
                                ),
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.9, 0.0),
                        child: Container(
                          width: 175.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    FlutterTheme.of(context).secondaryText,
                                size: 35.0,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    FlutterTheme.of(context).secondaryText,
                                size: 35.0,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    FlutterTheme.of(context).secondaryText,
                                size: 35.0,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    FlutterTheme.of(context).secondaryText,
                                size: 35.0,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    FlutterTheme.of(context).secondaryText,
                                size: 35.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.9, 0.1),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.27,
                          decoration: const BoxDecoration(),
                          child: Text(
                            'Software developer crafting dynamic cross-platform experiences with UI/UX expertise, and data analyst skills.',
                            textAlign: TextAlign.start,
                            style: FlutterTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterTheme.of(context)
                                          .bodyLargeFamily),
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.7,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.75,
                          height: MediaQuery.sizeOf(context).height * 0.22,
                          decoration: BoxDecoration(
                            color: FlutterTheme.of(context).alternate,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(1000.0),
                              topRight: Radius.circular(1000.0),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, -0.65),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'I\'m ',
                                style: FlutterTheme.of(context)
                                    .displayLarge
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayLargeFamily,
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayLargeFamily),
                                    ),
                              ),
                              TextSpan(
                                text: ' Avaneesh',
                                style: FlutterTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .headlineLargeFamily,
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .headlineLargeFamily),
                                    ),
                              ),
                              TextSpan(
                                text: ',\n',
                                style: FlutterTheme.of(context)
                                    .displayLarge
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayLargeFamily,
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayLargeFamily),
                                    ),
                              ),
                              TextSpan(
                                text: 'Andorid Developer',
                                style: FlutterTheme.of(context)
                                    .displayLarge
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayLargeFamily,
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayLargeFamily),
                                    ),
                              )
                            ],
                            style: FlutterTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 50.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2FAvaneesh_ai_portfoilio.png?alt=media&token=9da13176-adca-4d75-bae4-2c835f4aa734',
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 0.5,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.85),
                        child: Container(
                          width: 154.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: const Color(0x8DFFFFFF),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(35.0),
                              bottomRight: Radius.circular(35.0),
                              topLeft: Radius.circular(35.0),
                              topRight: Radius.circular(35.0),
                            ),
                            border: Border.all(
                              color: FlutterTheme.of(context).primary,
                              width: 1.5,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(
                                        'https://drive.google.com/file/d/1U-lz5p_1uaLu23yUv_ACiOUWaj2-WPF5/view?usp=sharing');
                                  },
                                  child: Container(
                                    width: 80.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterTheme.of(context)
                                          .secondaryText,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(35.0),
                                        bottomRight: Radius.circular(35.0),
                                        topLeft: Radius.circular(35.0),
                                        topRight: Radius.circular(35.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Resume',
                                          style: FlutterTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .titleMediumFamily,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .titleMediumFamily),
                                              ),
                                        ),
                                        Icon(
                                          Icons.arrow_outward,
                                          color: FlutterTheme.of(context)
                                              .primaryBackground,
                                          size: 20.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await launchURL(
                                          'https://drive.google.com/file/d/1jr6zw9ux1nBRMZfaFRViPxcKVFODYU6D/view?usp=drive_link ');
                                    },
                                    child: Text(
                                      'View',
                                      style: FlutterTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterTheme.of(context)
                                                    .titleSmallFamily,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, -0.9),
                        child: Container(
                          width: 80.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                            color: FlutterTheme.of(context)
                                .secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(35.0),
                              bottomRight: Radius.circular(35.0),
                              topLeft: Radius.circular(35.0),
                              topRight: Radius.circular(35.0),
                            ),
                            border: Border.all(
                              color: FlutterTheme.of(context).secondary,
                            ),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Hello!',
                              style: FlutterTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.94, -0.36),
                        child: FaIcon(
                          FontAwesomeIcons.quoteLeft,
                          color: FlutterTheme.of(context).secondary,
                          size: 35.0,
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(0.0, 0.12),
                        child: Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.9, -0.05),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '3 Years',
                                style: FlutterTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily),
                                    ),
                              ),
                              TextSpan(
                                text: '\nExperience',
                                style: FlutterTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .bodyLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .bodyLargeFamily),
                                    ),
                              )
                            ],
                            style: FlutterTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterTheme.of(context)
                                          .bodyLargeFamily),
                                ),
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.9, -0.2),
                        child: Container(
                          width: 100.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    FlutterTheme.of(context).secondaryText,
                                size: 20.0,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    FlutterTheme.of(context).secondaryText,
                                size: 20.0,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    FlutterTheme.of(context).secondaryText,
                                size: 20.0,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    FlutterTheme.of(context).secondaryText,
                                size: 20.0,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    FlutterTheme.of(context).secondaryText,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.9, -0.1),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          decoration: const BoxDecoration(),
                          child: Text(
                            'Software developer crafting dynamic cross-platform experiences with UI/UX expertise, and data analyst skills.',
                            textAlign: TextAlign.start,
                            style: FlutterTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterTheme.of(context)
                                          .bodyLargeFamily),
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.25,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2FFrame%2058%20(1).jpg?alt=media&token=d98b8c80-f70e-4913-aa61-429095059c12',
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.25,
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        decoration: BoxDecoration(
                          color: const Color(0x62FFFFFF),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Text(
                                  'UI/UX Design',
                                  textAlign: TextAlign.start,
                                  style: FlutterTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .titleSmallFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .titleSmallFamily),
                                      ),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterTheme.of(context).accent4,
                            ),
                            Expanded(
                              flex: 4,
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.25,
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.21,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF757575),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.5),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.23,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF9E9D9D),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.25,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: Image.network(
                                              'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2FUI_DESIGNER_with_light_brown_background_3d_rend-removebg-preview.png?alt=media&token=bca798f5-73fa-4dc8-9f31-b1244c249366',
                                            ).image,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.9, 0.88),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'Projects',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration: Duration(
                                                    milliseconds: 1000),
                                              ),
                                            },
                                          );
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.04,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.04,
                                          decoration: BoxDecoration(
                                            color: FlutterTheme.of(context)
                                                .secondary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.arrow_outward,
                                              color:
                                                  FlutterTheme.of(context)
                                                      .secondaryBackground,
                                              size: 10.0,
                                            ),
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
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.25,
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        decoration: BoxDecoration(
                          color: const Color(0x62FFFFFF),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Text(
                                  'Development',
                                  textAlign: TextAlign.start,
                                  style: FlutterTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .titleSmallFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .titleSmallFamily),
                                      ),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterTheme.of(context).accent4,
                            ),
                            Expanded(
                              flex: 4,
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.25,
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.21,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF757575),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.5),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.23,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF9E9D9D),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.25,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: Image.network(
                                              'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fapp_development_in_flutter_this_which_is_of_ligh__3_-removebg-preview.png?alt=media&token=49c3f373-e9fd-4dce-8e4d-c76ad3aebd63',
                                            ).image,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.9, 0.88),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'Projects',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration: Duration(
                                                    milliseconds: 1000),
                                              ),
                                            },
                                          );
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.04,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.04,
                                          decoration: BoxDecoration(
                                            color: FlutterTheme.of(context)
                                                .secondary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.arrow_outward,
                                              color:
                                                  FlutterTheme.of(context)
                                                      .secondaryBackground,
                                              size: 10.0,
                                            ),
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
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.25,
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        decoration: BoxDecoration(
                          color: const Color(0x62FFFFFF),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Text(
                                  'Data Analysis',
                                  textAlign: TextAlign.start,
                                  style: FlutterTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .titleSmallFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .titleSmallFamily),
                                      ),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterTheme.of(context).accent4,
                            ),
                            Expanded(
                              flex: 4,
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.25,
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.21,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF757575),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.5),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.23,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF9E9D9D),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.25,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: Image.network(
                                              'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fweb_developer_with_light_brown_background_3d_re-removebg-preview.png?alt=media&token=45a9505b-1ab5-419a-8641-607f3fb6764b',
                                            ).image,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.9, 0.88),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'Projects',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration: Duration(
                                                    milliseconds: 1000),
                                              ),
                                            },
                                          );
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.04,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.04,
                                          decoration: BoxDecoration(
                                            color: FlutterTheme.of(context)
                                                .secondary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.arrow_outward,
                                              color:
                                                  FlutterTheme.of(context)
                                                      .secondaryBackground,
                                              size: 10.0,
                                            ),
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
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2FFrame%2058%20(1).jpg?alt=media&token=d98b8c80-f70e-4913-aa61-429095059c12',
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.25,
                        height: MediaQuery.sizeOf(context).height * 0.18,
                        decoration: BoxDecoration(
                          color: const Color(0x62FFFFFF),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'UI/UX Design',
                                  textAlign: TextAlign.start,
                                  style: FlutterTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .titleSmallFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .titleSmallFamily),
                                      ),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterTheme.of(context).accent4,
                            ),
                            Expanded(
                              flex: 4,
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.25,
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.21,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.12,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF757575),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.5),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.23,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.12,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF9E9D9D),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.25,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.12,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: Image.network(
                                              'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2FUI_DESIGNER_with_light_brown_background_3d_rend-removebg-preview.png?alt=media&token=bca798f5-73fa-4dc8-9f31-b1244c249366',
                                            ).image,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.9, 0.88),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'Projects',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration: Duration(
                                                    milliseconds: 1000),
                                              ),
                                            },
                                          );
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.04,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.04,
                                          decoration: BoxDecoration(
                                            color: FlutterTheme.of(context)
                                                .secondary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.arrow_outward,
                                              color:
                                                  FlutterTheme.of(context)
                                                      .secondaryBackground,
                                              size: 20.0,
                                            ),
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
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.25,
                        height: MediaQuery.sizeOf(context).height * 0.18,
                        decoration: BoxDecoration(
                          color: const Color(0x62FFFFFF),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Development',
                                  textAlign: TextAlign.start,
                                  style: FlutterTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .titleSmallFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .titleSmallFamily),
                                      ),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterTheme.of(context).accent4,
                            ),
                            Expanded(
                              flex: 4,
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.25,
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.21,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.12,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF757575),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.5),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.23,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.12,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF9E9D9D),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.25,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.12,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: Image.network(
                                              'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fapp_development_in_flutter_this_which_is_of_ligh__3_-removebg-preview.png?alt=media&token=49c3f373-e9fd-4dce-8e4d-c76ad3aebd63',
                                            ).image,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.9, 0.88),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'Projects',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration: Duration(
                                                    milliseconds: 1000),
                                              ),
                                            },
                                          );
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.04,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.04,
                                          decoration: BoxDecoration(
                                            color: FlutterTheme.of(context)
                                                .secondary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.arrow_outward,
                                              color:
                                                  FlutterTheme.of(context)
                                                      .secondaryBackground,
                                              size: 20.0,
                                            ),
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
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.25,
                        height: MediaQuery.sizeOf(context).height * 0.18,
                        decoration: BoxDecoration(
                          color: const Color(0x62FFFFFF),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Data Analysis',
                                  textAlign: TextAlign.start,
                                  style: FlutterTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .titleSmallFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .titleSmallFamily),
                                      ),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterTheme.of(context).accent4,
                            ),
                            Expanded(
                              flex: 4,
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.25,
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.21,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.12,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF757575),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.5),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.23,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.12,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF9E9D9D),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.25,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.12,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: Image.network(
                                              'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fweb_developer_with_light_brown_background_3d_re-removebg-preview.png?alt=media&token=45a9505b-1ab5-419a-8641-607f3fb6764b',
                                            ).image,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.9, 0.88),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'Projects',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration: Duration(
                                                    milliseconds: 1000),
                                              ),
                                            },
                                          );
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.04,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.04,
                                          decoration: BoxDecoration(
                                            color: FlutterTheme.of(context)
                                                .secondary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.arrow_outward,
                                              color:
                                                  FlutterTheme.of(context)
                                                      .secondaryBackground,
                                              size: 20.0,
                                            ),
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
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2FFrame%2077%20(1).jpg?alt=media&token=0666888b-73bb-4bd3-8e6d-e950894a8c51',
                      ).image,
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              75.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'My field of expertise',
                            style: FlutterTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterTheme.of(context)
                                      .titleSmallFamily,
                                  color: FlutterTheme.of(context)
                                      .primaryBackground,
                                  fontSize: 35.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterTheme.of(context)
                                          .titleSmallFamily),
                                ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.25,
                            height: MediaQuery.sizeOf(context).height * 0.45,
                            decoration: BoxDecoration(
                              color: const Color(0x62FFFFFF),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'UI/UX Design',
                                      textAlign: TextAlign.start,
                                      style: FlutterTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily:
                                                FlutterTheme.of(context)
                                                    .titleMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterTheme.of(context)
                                                        .titleMediumFamily),
                                          ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1.0,
                                  color: FlutterTheme.of(context).accent4,
                                ),
                                Expanded(
                                  flex: 4,
                                  child: SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.25,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.3,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.21,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.3,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF757575),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.5),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.23,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.3,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF9E9D9D),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 1.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.25,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.3,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: Image.network(
                                                  'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2FUI_DESIGNER_with_light_brown_background_3d_rend-removebg-preview.png?alt=media&token=bca798f5-73fa-4dc8-9f31-b1244c249366',
                                                ).image,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.9, 0.88),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'Projects',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 1000),
                                                  ),
                                                },
                                              );
                                            },
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.04,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.04,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterTheme.of(context)
                                                        .secondary,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Icon(
                                                  Icons.arrow_outward,
                                                  color: FlutterTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  size: 30.0,
                                                ),
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
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.25,
                            height: MediaQuery.sizeOf(context).height * 0.45,
                            decoration: BoxDecoration(
                              color: const Color(0x62FFFFFF),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Development',
                                      textAlign: TextAlign.start,
                                      style: FlutterTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily:
                                                FlutterTheme.of(context)
                                                    .titleMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterTheme.of(context)
                                                        .titleMediumFamily),
                                          ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1.0,
                                  color: FlutterTheme.of(context).accent4,
                                ),
                                Expanded(
                                  flex: 4,
                                  child: SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.25,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.3,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.21,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.3,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF757575),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.5),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.23,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.3,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF9E9D9D),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 1.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.25,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.3,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: Image.network(
                                                  'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fapp_development_in_flutter_this_which_is_of_ligh__3_-removebg-preview.png?alt=media&token=49c3f373-e9fd-4dce-8e4d-c76ad3aebd63',
                                                ).image,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.9, 0.88),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'Projects',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 1000),
                                                  ),
                                                },
                                              );
                                            },
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.04,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.04,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterTheme.of(context)
                                                        .secondary,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Icon(
                                                  Icons.arrow_outward,
                                                  color: FlutterTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  size: 30.0,
                                                ),
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
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.25,
                            height: MediaQuery.sizeOf(context).height * 0.45,
                            decoration: BoxDecoration(
                              color: const Color(0x62FFFFFF),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Data Analysis',
                                      textAlign: TextAlign.start,
                                      style: FlutterTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily:
                                                FlutterTheme.of(context)
                                                    .titleMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterTheme.of(context)
                                                        .titleMediumFamily),
                                          ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1.0,
                                  color: FlutterTheme.of(context).accent4,
                                ),
                                Expanded(
                                  flex: 4,
                                  child: SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.25,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.3,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.21,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.3,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF757575),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.5),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.23,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.3,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF9E9D9D),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 1.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.25,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.3,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: Image.network(
                                                  'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fweb_developer_with_light_brown_background_3d_re-removebg-preview.png?alt=media&token=45a9505b-1ab5-419a-8641-607f3fb6764b',
                                                ).image,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.9, 0.88),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'Projects',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 1000),
                                                  ),
                                                },
                                              );
                                            },
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.04,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.04,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterTheme.of(context)
                                                        .secondary,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Icon(
                                                  Icons.arrow_outward,
                                                  color: FlutterTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  size: 30.0,
                                                ),
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 500.0,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'My',
                                  style: FlutterTheme.of(context)
                                      .displayLarge
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .displayLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .displayLargeFamily),
                                      ),
                                ),
                                TextSpan(
                                  text: ' Work Experience',
                                  style: FlutterTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineLargeFamily),
                                      ),
                                )
                              ],
                              style: FlutterTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 10,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 0.0, 50.0, 0.0),
                                  child: Text(
                                    'Tailor Apps,Delhi',
                                    textAlign: TextAlign.center,
                                    style: FlutterTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .headlineMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .headlineMediumFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.dotCircle,
                              color: FlutterTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 50.0, 0.0),
                                child: Text(
                                  'Software Development Intern',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 10,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 0.0, 50.0, 0.0),
                                  child: Text(
                                    'April 2024 - Present \nRemote',
                                    textAlign: TextAlign.center,
                                    style: FlutterTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .headlineSmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .headlineSmallFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 75.0,
                              child: StyledVerticalDivider(
                                thickness: 2.0,
                                color: FlutterTheme.of(context).secondary,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 50.0, 0.0),
                                child: Text(
                                  'Empowering ideas with Flutter development, transforming concepts into dynamic and visually stunning cross-platform applications with efficiency and creativity',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 10,
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 50.0, 0.0),
                                child: Text(
                                  'Aviz HealthCare,Jaipur',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.dotCircle,
                            color: FlutterTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Expanded(
                            flex: 10,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  50.0, 0.0, 50.0, 0.0),
                              child: Text(
                                'Software Development Intern',
                                textAlign: TextAlign.center,
                                style: FlutterTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .headlineMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .headlineMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 10,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 0.0, 50.0, 0.0),
                                  child: Text(
                                    'Oct 2023 - Mar 2024\nRemote',
                                    textAlign: TextAlign.center,
                                    style: FlutterTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .headlineSmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .headlineSmallFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 75.0,
                              child: StyledVerticalDivider(
                                thickness: 2.0,
                                color: FlutterTheme.of(context).secondary,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 50.0, 0.0),
                                child: Text(
                                  'Driving innovation in software development by leading teams to build scalable and secure backend solutions using Firebase, while enhancing user engagement through intuitive UI design and responsive principles.',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 10,
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 50.0, 0.0),
                                child: Text(
                                  'Maharani Chai,Prayagraj',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.dotCircle,
                            color: FlutterTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Expanded(
                            flex: 10,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  50.0, 0.0, 50.0, 0.0),
                              child: Text(
                                'Flutter Developer',
                                textAlign: TextAlign.center,
                                style: FlutterTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .headlineMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .headlineMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 10,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 0.0, 50.0, 0.0),
                                  child: Text(
                                    'Aug 2023 - Oct 2023\nOn-Site',
                                    textAlign: TextAlign.center,
                                    style: FlutterTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .headlineSmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .headlineSmallFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 75.0,
                              child: StyledVerticalDivider(
                                thickness: 2.0,
                                color: FlutterTheme.of(context)
                                    .primaryBackground,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 50.0, 0.0),
                                child: Text(
                                  'Streamlining operations through innovative inventory management solutions, integrating Flutter and Firebase to automate processes and enhance collaborative efficiency.',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 500.0,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'My',
                                  style: FlutterTheme.of(context)
                                      .displayLarge
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .displayLargeFamily,
                                        fontSize: 30.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .displayLargeFamily),
                                      ),
                                ),
                                TextSpan(
                                  text: ' Work Experience',
                                  style: FlutterTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineLargeFamily,
                                        fontSize: 30.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineLargeFamily),
                                      ),
                                )
                              ],
                              style: FlutterTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 7,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: Text(
                                    'Tailor Apps\nDelhi',
                                    textAlign: TextAlign.center,
                                    style: FlutterTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .headlineMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .headlineMediumFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.dotCircle,
                              color: FlutterTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Text(
                                  'Software Development Intern',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 7,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: Text(
                                    'April 2024 - Present \nRemote',
                                    textAlign: TextAlign.center,
                                    style: FlutterTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .headlineSmallFamily,
                                          color: FlutterTheme.of(context)
                                              .tertiary,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .headlineSmallFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 75.0,
                              child: StyledVerticalDivider(
                                thickness: 2.0,
                                color: FlutterTheme.of(context).secondary,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Text(
                                  'Empowering ideas with Flutter development, transforming concepts into dynamic and visually stunning cross-platform applications with efficiency and creativity',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineSmallFamily,
                                        color: FlutterTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Text(
                                  'Aviz HealthCare\nJaipur',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.dotCircle,
                            color: FlutterTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Expanded(
                            flex: 10,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Text(
                                'Software Development Intern',
                                textAlign: TextAlign.center,
                                style: FlutterTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .headlineMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .headlineMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 7,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: Text(
                                    'Oct 2023 - Mar 2024\nRemote',
                                    textAlign: TextAlign.center,
                                    style: FlutterTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .headlineSmallFamily,
                                          color: FlutterTheme.of(context)
                                              .tertiary,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .headlineSmallFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 75.0,
                              child: StyledVerticalDivider(
                                thickness: 2.0,
                                color: FlutterTheme.of(context).secondary,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Text(
                                  'Driving innovation in software development by leading teams to build scalable and secure backend solutions using Firebase, while enhancing user engagement through intuitive UI design and responsive principles.',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineSmallFamily,
                                        color: FlutterTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Text(
                                  'Maharani Chai\nPrayagraj',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.dotCircle,
                            color: FlutterTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Expanded(
                            flex: 10,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Text(
                                'Flutter Developer Intern',
                                textAlign: TextAlign.center,
                                style: FlutterTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .headlineMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .headlineMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 7,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: Text(
                                    'Aug 2023 - Oct 2023\nOn-Site',
                                    textAlign: TextAlign.center,
                                    style: FlutterTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .headlineSmallFamily,
                                          color: FlutterTheme.of(context)
                                              .tertiary,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .headlineSmallFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 75.0,
                              child: StyledVerticalDivider(
                                thickness: 2.0,
                                color: FlutterTheme.of(context)
                                    .primaryBackground,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Text(
                                  'Streamlining operations through innovative inventory management solutions, integrating Flutter and Firebase to automate processes and enhance collaborative efficiency.',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineSmallFamily,
                                        color: FlutterTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 500.0,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'My',
                                  style: FlutterTheme.of(context)
                                      .displayLarge
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .displayLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .displayLargeFamily),
                                      ),
                                ),
                                TextSpan(
                                  text: ' Work Experience',
                                  style: FlutterTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineLargeFamily),
                                      ),
                                )
                              ],
                              style: FlutterTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 10,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 0.0, 50.0, 0.0),
                                  child: Text(
                                    'Tailor Apps,Delhi',
                                    textAlign: TextAlign.center,
                                    style: FlutterTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .headlineMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .headlineMediumFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.dotCircle,
                              color: FlutterTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 50.0, 0.0),
                                child: Text(
                                  'Software Development Intern',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 10,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 0.0, 50.0, 0.0),
                                  child: Text(
                                    'April 2024 - Present \nRemote',
                                    textAlign: TextAlign.center,
                                    style: FlutterTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .headlineSmallFamily,
                                          color: FlutterTheme.of(context)
                                              .tertiary,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .headlineSmallFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 75.0,
                              child: StyledVerticalDivider(
                                thickness: 2.0,
                                color: FlutterTheme.of(context).secondary,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 50.0, 0.0),
                                child: Text(
                                  'Empowering ideas with Flutter development, transforming concepts into dynamic and visually stunning cross-platform applications with efficiency and creativity',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineSmallFamily,
                                        color: FlutterTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 10,
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 50.0, 0.0),
                                child: Text(
                                  'Aviz HealthCare,Jaipur',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.dotCircle,
                            color: FlutterTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Expanded(
                            flex: 10,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  50.0, 0.0, 50.0, 0.0),
                              child: Text(
                                'Software Development Intern',
                                textAlign: TextAlign.center,
                                style: FlutterTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .headlineMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .headlineMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 10,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 0.0, 50.0, 0.0),
                                  child: Text(
                                    'Oct 2023 - Mar 2024\nRemote',
                                    textAlign: TextAlign.center,
                                    style: FlutterTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .headlineSmallFamily,
                                          color: FlutterTheme.of(context)
                                              .tertiary,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .headlineSmallFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 75.0,
                              child: StyledVerticalDivider(
                                thickness: 2.0,
                                color: FlutterTheme.of(context).secondary,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 50.0, 0.0),
                                child: Text(
                                  'Driving innovation in software development by leading teams to build scalable and secure backend solutions using Firebase, while enhancing user engagement through intuitive UI design and responsive principles.',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineSmallFamily,
                                        color: FlutterTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 10,
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 50.0, 0.0),
                                child: Text(
                                  'Maharani Chai,Prayagraj',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.dotCircle,
                            color: FlutterTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Expanded(
                            flex: 10,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  50.0, 0.0, 50.0, 0.0),
                              child: Text(
                                'Flutter Developer Intern',
                                textAlign: TextAlign.center,
                                style: FlutterTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .headlineMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .headlineMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 10,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 0.0, 50.0, 0.0),
                                  child: Text(
                                    'Aug 2023 - Oct 2023\nOn-Site',
                                    textAlign: TextAlign.center,
                                    style: FlutterTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .headlineSmallFamily,
                                          color: FlutterTheme.of(context)
                                              .tertiary,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .headlineSmallFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 75.0,
                              child: StyledVerticalDivider(
                                thickness: 2.0,
                                color: FlutterTheme.of(context)
                                    .primaryBackground,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 50.0, 0.0),
                                child: Text(
                                  'Streamlining operations through innovative inventory management solutions, integrating Flutter and Firebase to automate processes and enhance collaborative efficiency.',
                                  textAlign: TextAlign.center,
                                  style: FlutterTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineSmallFamily,
                                        color: FlutterTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F4F7),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.2,
                                      decoration: BoxDecoration(
                                        color: FlutterTheme.of(context)
                                            .alternate,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2FAvaneesh_ai_portfoilio.png?alt=media&token=9da13176-adca-4d75-bae4-2c835f4aa734',
                                      width: MediaQuery.sizeOf(context).width *
                                          0.35,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.674,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'My ',
                                          style: FlutterTheme.of(context)
                                              .displayLarge
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .displayLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .displayLargeFamily),
                                              ),
                                        ),
                                        TextSpan(
                                          text: 'Skills',
                                          style: FlutterTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .headlineLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(FlutterTheme
                                                            .of(context)
                                                        .headlineLargeFamily),
                                              ),
                                        )
                                      ],
                                      style: FlutterTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Languages',
                                    style: FlutterTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .displaySmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .displaySmallFamily),
                                        ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fdart-programming-language-icon.png?alt=media&token=dce67766-aa07-49c8-8be0-05a0ce0ad341',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.1,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fjava-programming-language-icon.png?alt=media&token=dcf77856-932e-4591-bd54-61f851b373f7',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.1,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fpython-programming-language-icon.png?alt=media&token=fa9564cd-e3a1-4799-8d64-675d1b485305',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.1,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fc-plus-plus-programming-language-icon.png?alt=media&token=8dfa241a-c25a-4679-9a7f-dcb9cb765193',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.1,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Tools',
                                    style: FlutterTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .displaySmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .displaySmallFamily),
                                        ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fandroid-studio-icon.png?alt=media&token=eb8c37c3-6709-42d6-a587-211a51f8cbb1',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.1,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fvisual-studio-code-icon.png?alt=media&token=807c4ce7-e3f1-4308-94a1-df8b9ba8fdcd',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.1,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Ffigma-icon.png?alt=media&token=49a441d2-3966-4c56-aaf8-919ec480453f',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.1,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fcanva-icon.png?alt=media&token=9a9cdcf8-16ee-4a83-a3d1-cf86792712f0',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.1,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Platforms',
                                    style: FlutterTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .displaySmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .displaySmallFamily),
                                        ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fandroid-robot-bot-icon.png?alt=media&token=47d63c06-78a0-4668-ac42-799a59c82358',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.1,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fapple-icon.png?alt=media&token=57bf9a89-4a38-41af-ad07-cc47f910e384',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.1,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fprogrammer-computer-icon.png?alt=media&token=11944325-38c0-417d-8d0c-a26e8941e4c0',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.1,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F4F7),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.2,
                                      decoration: BoxDecoration(
                                        color: FlutterTheme.of(context)
                                            .alternate,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2FAvaneesh_ai_portfoilio.png?alt=media&token=9da13176-adca-4d75-bae4-2c835f4aa734',
                                      width: MediaQuery.sizeOf(context).width *
                                          0.35,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.4,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'My ',
                                          style: FlutterTheme.of(context)
                                              .displayLarge
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .displayLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .displayLargeFamily),
                                              ),
                                        ),
                                        TextSpan(
                                          text: 'Skills',
                                          style: FlutterTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .headlineLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(FlutterTheme
                                                            .of(context)
                                                        .headlineLargeFamily),
                                              ),
                                        )
                                      ],
                                      style: FlutterTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Languages',
                                    style: FlutterTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .headlineLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .headlineLargeFamily),
                                        ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fdart-programming-language-icon.png?alt=media&token=dce67766-aa07-49c8-8be0-05a0ce0ad341',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.05,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.05,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fjava-programming-language-icon.png?alt=media&token=dcf77856-932e-4591-bd54-61f851b373f7',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.05,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.05,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fpython-programming-language-icon.png?alt=media&token=fa9564cd-e3a1-4799-8d64-675d1b485305',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.05,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.05,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fc-plus-plus-programming-language-icon.png?alt=media&token=8dfa241a-c25a-4679-9a7f-dcb9cb765193',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.05,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.05,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Tools',
                                    style: FlutterTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .headlineLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .headlineLargeFamily),
                                        ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fandroid-studio-icon.png?alt=media&token=eb8c37c3-6709-42d6-a587-211a51f8cbb1',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.05,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.05,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fvisual-studio-code-icon.png?alt=media&token=807c4ce7-e3f1-4308-94a1-df8b9ba8fdcd',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.05,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.05,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Ffigma-icon.png?alt=media&token=49a441d2-3966-4c56-aaf8-919ec480453f',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.05,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.05,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fcanva-icon.png?alt=media&token=9a9cdcf8-16ee-4a83-a3d1-cf86792712f0',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.05,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.05,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Platforms',
                                    style: FlutterTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .headlineLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .headlineLargeFamily),
                                        ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fandroid-robot-bot-icon.png?alt=media&token=47d63c06-78a0-4668-ac42-799a59c82358',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.05,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.05,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fapple-icon.png?alt=media&token=57bf9a89-4a38-41af-ad07-cc47f910e384',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.05,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.05,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fprogrammer-computer-icon.png?alt=media&token=11944325-38c0-417d-8d0c-a26e8941e4c0',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.05,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.05,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F4F7),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 7,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.32,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.32,
                                        decoration: BoxDecoration(
                                          color: FlutterTheme.of(context)
                                              .alternate,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Image.network(
                                        'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2FAvaneesh_ai_portfoilio.png?alt=media&token=9da13176-adca-4d75-bae4-2c835f4aa734',
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.35,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.4,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 9,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'My ',
                                            style: FlutterTheme.of(context)
                                                .displayLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterTheme.of(
                                                              context)
                                                          .displayLargeFamily,
                                                  fontSize: 30.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterTheme.of(
                                                                  context)
                                                              .displayLargeFamily),
                                                ),
                                          ),
                                          TextSpan(
                                            text: 'Skills',
                                            style: FlutterTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterTheme.of(
                                                              context)
                                                          .headlineLargeFamily,
                                                  fontSize: 30.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(FlutterTheme
                                                              .of(context)
                                                          .headlineLargeFamily),
                                                ),
                                          )
                                        ],
                                        style: FlutterTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'Languages',
                                      style: FlutterTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily:
                                                FlutterTheme.of(context)
                                                    .displaySmallFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterTheme.of(context)
                                                        .displaySmallFamily),
                                          ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fdart-programming-language-icon.png?alt=media&token=dce67766-aa07-49c8-8be0-05a0ce0ad341',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.03,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fjava-programming-language-icon.png?alt=media&token=dcf77856-932e-4591-bd54-61f851b373f7',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.05,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fpython-programming-language-icon.png?alt=media&token=fa9564cd-e3a1-4799-8d64-675d1b485305',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.05,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fc-plus-plus-programming-language-icon.png?alt=media&token=8dfa241a-c25a-4679-9a7f-dcb9cb765193',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.05,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'Tools',
                                      style: FlutterTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily:
                                                FlutterTheme.of(context)
                                                    .displaySmallFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterTheme.of(context)
                                                        .displaySmallFamily),
                                          ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fandroid-studio-icon.png?alt=media&token=eb8c37c3-6709-42d6-a587-211a51f8cbb1',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.05,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fvisual-studio-code-icon.png?alt=media&token=807c4ce7-e3f1-4308-94a1-df8b9ba8fdcd',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.05,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Ffigma-icon.png?alt=media&token=49a441d2-3966-4c56-aaf8-919ec480453f',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.05,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fcanva-icon.png?alt=media&token=9a9cdcf8-16ee-4a83-a3d1-cf86792712f0',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.05,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'Platforms',
                                      style: FlutterTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily:
                                                FlutterTheme.of(context)
                                                    .displaySmallFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterTheme.of(context)
                                                        .displaySmallFamily),
                                          ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fandroid-robot-bot-icon.png?alt=media&token=47d63c06-78a0-4668-ac42-799a59c82358',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.05,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fapple-icon.png?alt=media&token=57bf9a89-4a38-41af-ad07-cc47f910e384',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.05,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2Fprogrammer-computer-icon.png?alt=media&token=11944325-38c0-417d-8d0c-a26e8941e4c0',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.05,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ],
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
              if (responsiveVisibility(
                context: context,
                phone: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 740.0,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 100.0,
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                70.0, 0.0, 70.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Lets have a look at',
                                        style: FlutterTheme.of(context)
                                            .displayMedium
                                            .override(
                                              fontFamily:
                                                  FlutterTheme.of(context)
                                                      .displayMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterTheme.of(
                                                              context)
                                                          .displayMediumFamily),
                                            ),
                                      ),
                                      TextSpan(
                                        text: ' my',
                                        style: FlutterTheme.of(context)
                                            .displayMedium
                                            .override(
                                              fontFamily:
                                                  FlutterTheme.of(context)
                                                      .displayMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterTheme.of(
                                                              context)
                                                          .displayMediumFamily),
                                            ),
                                      ),
                                      TextSpan(
                                        text: ' Work',
                                        style: FlutterTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily:
                                                  FlutterTheme.of(context)
                                                      .displaySmallFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterTheme.of(
                                                              context)
                                                          .displaySmallFamily),
                                            ),
                                      )
                                    ],
                                    style: FlutterTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'Projects',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration:
                                              Duration(milliseconds: 1000),
                                        ),
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: 100.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterTheme.of(context)
                                          .secondaryText,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(35.0),
                                        bottomRight: Radius.circular(35.0),
                                        topLeft: Radius.circular(35.0),
                                        topRight: Radius.circular(35.0),
                                      ),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'See All',
                                        style: FlutterTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterTheme.of(context)
                                                      .titleSmallFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 40.0),
                            child: StreamBuilder<List<ProjectsRecord>>(
                              stream: queryProjectsRecord(
                                queryBuilder: (projectsRecord) =>
                                    projectsRecord.orderBy('ranking'),
                                limit: 4,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<ProjectsRecord>
                                    pageViewProjectsRecordList = snapshot.data!;

                                return SizedBox(
                                  width: double.infinity,
                                  height: 500.0,
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 40.0),
                                        child: PageView.builder(
                                          controller: _model
                                                  .pageViewController1 ??=
                                              PageController(
                                                  initialPage: max(
                                                      0,
                                                      min(
                                                          0,
                                                          pageViewProjectsRecordList
                                                                  .length -
                                                              1))),
                                          scrollDirection: Axis.horizontal,
                                          itemCount:
                                              pageViewProjectsRecordList.length,
                                          itemBuilder:
                                              (context, pageViewIndex) {
                                            final pageViewProjectsRecord =
                                                pageViewProjectsRecordList[
                                                    pageViewIndex];
                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.3,
                                                      height: 200.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        image: DecorationImage(
                                                          fit: BoxFit.contain,
                                                          image: Image.network(
                                                            pageViewProjectsRecord
                                                                .image1,
                                                          ).image,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.3,
                                                      height: 200.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        image: DecorationImage(
                                                          fit: BoxFit.contain,
                                                          image: Image.network(
                                                            pageViewProjectsRecord
                                                                .image2,
                                                          ).image,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final tagsTab =
                                                              pageViewProjectsRecord
                                                                  .tags
                                                                  .toList();

                                                          return Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: List.generate(
                                                                tagsTab.length,
                                                                (tagsTabIndex) {
                                                              final tagsTabItem =
                                                                  tagsTab[
                                                                      tagsTabIndex];
                                                              return Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    color: Color(
                                                                        0xFFF2F4F7),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              35.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              35.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              35.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              35.0),
                                                                    ),
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      tagsTabItem,
                                                                      style: FlutterTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Project Name',
                                                        style:
                                                            FlutterTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .override(
                                                                  fontFamily: FlutterTheme.of(
                                                                          context)
                                                                      .headlineMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterTheme.of(context)
                                                                              .headlineMediumFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      if (pageViewProjectsRecord
                                                                  .github !=
                                                              '')
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await launchURL(
                                                                  pageViewProjectsRecord
                                                                      .github);
                                                            },
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .github,
                                                              color: FlutterTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              size: 25.0,
                                                            ),
                                                          ),
                                                        ),
                                                      if (pageViewProjectsRecord
                                                                  .figma !=
                                                              '')
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await launchURL(
                                                                  pageViewProjectsRecord
                                                                      .figma);
                                                            },
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .figma,
                                                              color: FlutterTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              size: 25.0,
                                                            ),
                                                          ),
                                                        ),
                                                      if (pageViewProjectsRecord
                                                                  .youtube !=
                                                              '')
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await launchURL(
                                                                  pageViewProjectsRecord
                                                                      .youtube);
                                                            },
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .youtube,
                                                              color: FlutterTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              size: 25.0,
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.07,
                                                  decoration: const BoxDecoration(),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  150.0,
                                                                  0.0,
                                                                  150.0,
                                                                  0.0),
                                                      child: Text(
                                                        pageViewProjectsRecord
                                                            .description,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 16.0),
                                          child: smooth_page_indicator
                                              .SmoothPageIndicator(
                                            controller: _model
                                                    .pageViewController1 ??=
                                                PageController(
                                                    initialPage: max(
                                                        0,
                                                        min(
                                                            0,
                                                            pageViewProjectsRecordList
                                                                    .length -
                                                                1))),
                                            count: pageViewProjectsRecordList
                                                .length,
                                            axisDirection: Axis.horizontal,
                                            onDotClicked: (i) async {
                                              await _model.pageViewController1!
                                                  .animateToPage(
                                                i,
                                                duration:
                                                    const Duration(milliseconds: 500),
                                                curve: Curves.ease,
                                              );
                                              setState(() {});
                                            },
                                            effect: smooth_page_indicator
                                                .ExpandingDotsEffect(
                                              expansionFactor: 3.0,
                                              spacing: 8.0,
                                              radius: 16.0,
                                              dotWidth: 16.0,
                                              dotHeight: 8.0,
                                              dotColor: const Color(0xFFE4E7EC),
                                              activeDotColor:
                                                  FlutterTheme.of(context)
                                                      .secondaryText,
                                              paintStyle: PaintingStyle.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 600.0,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 100.0,
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Lets have a look at',
                                    style: FlutterTheme.of(context)
                                        .displayMedium
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .displayMediumFamily),
                                        ),
                                  ),
                                  TextSpan(
                                    text: ' my',
                                    style: FlutterTheme.of(context)
                                        .displayMedium
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .displayMediumFamily),
                                        ),
                                  ),
                                  TextSpan(
                                    text: ' Work',
                                    style: FlutterTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .displaySmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .displaySmallFamily),
                                        ),
                                  )
                                ],
                                style: FlutterTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'Projects',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 1000),
                                    ),
                                  },
                                );
                              },
                              child: Container(
                                width: 80.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: FlutterTheme.of(context)
                                      .secondaryText,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(35.0),
                                    bottomRight: Radius.circular(35.0),
                                    topLeft: Radius.circular(35.0),
                                    topRight: Radius.circular(35.0),
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'See All',
                                    style: FlutterTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterTheme.of(context)
                                                  .titleMediumFamily,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterTheme.of(context)
                                                      .titleMediumFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: StreamBuilder<List<ProjectsRecord>>(
                            stream: queryProjectsRecord(
                              queryBuilder: (projectsRecord) =>
                                  projectsRecord.orderBy('ranking'),
                              limit: 4,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<ProjectsRecord> pageViewProjectsRecordList =
                                  snapshot.data!;

                              return SizedBox(
                                width: double.infinity,
                                height: 500.0,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 40.0),
                                      child: PageView.builder(
                                        controller: _model
                                                .pageViewController2 ??=
                                            PageController(
                                                initialPage: max(
                                                    0,
                                                    min(
                                                        0,
                                                        pageViewProjectsRecordList
                                                                .length -
                                                            1))),
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            pageViewProjectsRecordList.length,
                                        itemBuilder: (context, pageViewIndex) {
                                          final pageViewProjectsRecord =
                                              pageViewProjectsRecordList[
                                                  pageViewIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.4,
                                                    height: 180.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      image: DecorationImage(
                                                        fit: BoxFit.contain,
                                                        image: Image.network(
                                                          pageViewProjectsRecord
                                                              .image1,
                                                        ).image,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.4,
                                                    height: 180.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      image: DecorationImage(
                                                        fit: BoxFit.contain,
                                                        image: Image.network(
                                                          pageViewProjectsRecord
                                                              .image2,
                                                        ).image,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                height: 100.0,
                                                decoration: const BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Builder(
                                                          builder: (context) {
                                                            final tagsPhone =
                                                                pageViewProjectsRecord
                                                                    .tags
                                                                    .toList();

                                                            return SingleChildScrollView(
                                                              scrollDirection:
                                                                  Axis.horizontal,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: List.generate(
                                                                    tagsPhone
                                                                        .length,
                                                                    (tagsPhoneIndex) {
                                                                  final tagsPhoneItem =
                                                                      tagsPhone[
                                                                          tagsPhoneIndex];
                                                                  return Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.28,
                                                                      height:
                                                                          40.0,
                                                                      decoration:
                                                                          const BoxDecoration(
                                                                        color: Color(
                                                                            0xFFF2F4F7),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(35.0),
                                                                          bottomRight:
                                                                              Radius.circular(35.0),
                                                                          topLeft:
                                                                              Radius.circular(35.0),
                                                                          topRight:
                                                                              Radius.circular(35.0),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          tagsPhoneItem,
                                                                          style: FlutterTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }),
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
                                                height: 40.0,
                                                decoration: const BoxDecoration(),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      pageViewProjectsRecord
                                                          .name,
                                                      style:
                                                          FlutterTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .override(
                                                                fontFamily: FlutterTheme.of(
                                                                        context)
                                                                    .headlineMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterTheme.of(context)
                                                                            .headlineMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 30.0,
                                                decoration: const BoxDecoration(),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    if (pageViewProjectsRecord
                                                                .github !=
                                                            '')
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await launchURL(
                                                                pageViewProjectsRecord
                                                                    .github);
                                                          },
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .github,
                                                            color: FlutterTheme
                                                                    .of(context)
                                                                .secondary,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (pageViewProjectsRecord
                                                                .figma !=
                                                            '')
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await launchURL(
                                                                pageViewProjectsRecord
                                                                    .figma);
                                                          },
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .figma,
                                                            color: FlutterTheme
                                                                    .of(context)
                                                                .secondary,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (pageViewProjectsRecord
                                                                .youtube !=
                                                            '')
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await launchURL(
                                                                pageViewProjectsRecord
                                                                    .youtube);
                                                          },
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .youtube,
                                                            color: FlutterTheme
                                                                    .of(context)
                                                                .secondary,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 100.0,
                                                decoration: const BoxDecoration(),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Text(
                                                      pageViewProjectsRecord
                                                          .description,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterTheme.of(context)
                                                                            .headlineSmallFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 16.0),
                                        child: smooth_page_indicator
                                            .SmoothPageIndicator(
                                          controller: _model
                                                  .pageViewController2 ??=
                                              PageController(
                                                  initialPage: max(
                                                      0,
                                                      min(
                                                          0,
                                                          pageViewProjectsRecordList
                                                                  .length -
                                                              1))),
                                          count:
                                              pageViewProjectsRecordList.length,
                                          axisDirection: Axis.horizontal,
                                          onDotClicked: (i) async {
                                            await _model.pageViewController2!
                                                .animateToPage(
                                              i,
                                              duration:
                                                  const Duration(milliseconds: 500),
                                              curve: Curves.ease,
                                            );
                                            setState(() {});
                                          },
                                          effect: smooth_page_indicator
                                              .ExpandingDotsEffect(
                                            expansionFactor: 3.0,
                                            spacing: 8.0,
                                            radius: 16.0,
                                            dotWidth: 16.0,
                                            dotHeight: 8.0,
                                            dotColor: const Color(0xFFE4E7EC),
                                            activeDotColor:
                                                FlutterTheme.of(context)
                                                    .secondaryText,
                                            paintStyle: PaintingStyle.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 800.0,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.17,
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              70.0, 20.0, 70.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Lets have a look at',
                                      style: FlutterTheme.of(context)
                                          .displayMedium
                                          .override(
                                            fontFamily:
                                                FlutterTheme.of(context)
                                                    .displayMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterTheme.of(context)
                                                        .displayMediumFamily),
                                          ),
                                    ),
                                    TextSpan(
                                      text: ' my',
                                      style: FlutterTheme.of(context)
                                          .displayMedium
                                          .override(
                                            fontFamily:
                                                FlutterTheme.of(context)
                                                    .displayMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterTheme.of(context)
                                                        .displayMediumFamily),
                                          ),
                                    ),
                                    TextSpan(
                                      text: ' Work',
                                      style: FlutterTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily:
                                                FlutterTheme.of(context)
                                                    .displaySmallFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterTheme.of(context)
                                                        .displaySmallFamily),
                                          ),
                                    )
                                  ],
                                  style: FlutterTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Projects',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 1000),
                                      ),
                                    },
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterTheme.of(context)
                                        .secondaryText,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(35.0),
                                      bottomRight: Radius.circular(35.0),
                                      topLeft: Radius.circular(35.0),
                                      topRight: Radius.circular(35.0),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'See All',
                                      style: FlutterTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterTheme.of(context)
                                                    .titleSmallFamily,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: StreamBuilder<List<ProjectsRecord>>(
                            stream: queryProjectsRecord(
                              queryBuilder: (projectsRecord) =>
                                  projectsRecord.orderBy('ranking'),
                              limit: 4,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<ProjectsRecord> pageViewProjectsRecordList =
                                  snapshot.data!;

                              return SizedBox(
                                width: double.infinity,
                                height: 560.0,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 40.0),
                                      child: PageView.builder(
                                        controller: _model
                                                .pageViewController3 ??=
                                            PageController(
                                                initialPage: max(
                                                    0,
                                                    min(
                                                        0,
                                                        pageViewProjectsRecordList
                                                                .length -
                                                            1))),
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            pageViewProjectsRecordList.length,
                                        itemBuilder: (context, pageViewIndex) {
                                          final pageViewProjectsRecord =
                                              pageViewProjectsRecordList[
                                                  pageViewIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    height: 250.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      image: DecorationImage(
                                                        fit: BoxFit.contain,
                                                        image: Image.network(
                                                          pageViewProjectsRecord
                                                              .image1,
                                                        ).image,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    height: 250.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      image: DecorationImage(
                                                        fit: BoxFit.contain,
                                                        image: Image.network(
                                                          pageViewProjectsRecord
                                                              .image2,
                                                        ).image,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.07,
                                                decoration: const BoxDecoration(),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Builder(
                                                      builder: (context) {
                                                        final tags =
                                                            pageViewProjectsRecord
                                                                .tags
                                                                .map((e) => e)
                                                                .toList();

                                                        return Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children:
                                                              List.generate(
                                                                  tags.length,
                                                                  (tagsIndex) {
                                                            final tagsItem =
                                                                tags[tagsIndex];
                                                            return Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 150.0,
                                                                height: 40.0,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  color: Color(
                                                                      0xFFF2F4F7),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            35.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            35.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            35.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            35.0),
                                                                  ),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    tagsItem,
                                                                    style: FlutterTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterTheme.of(context).bodyMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.07,
                                                decoration: const BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        150.0,
                                                                        10.0,
                                                                        150.0,
                                                                        0.0),
                                                            child: Text(
                                                              pageViewProjectsRecord
                                                                  .name,
                                                              style: FlutterTheme
                                                                      .of(context)
                                                                  .headlineMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterTheme.of(context)
                                                                            .headlineMediumFamily,
                                                                    color: FlutterTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterTheme.of(context).headlineMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.07,
                                                decoration: const BoxDecoration(),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    if (pageViewProjectsRecord
                                                                .github !=
                                                            '')
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await launchURL(
                                                                pageViewProjectsRecord
                                                                    .github);
                                                          },
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .github,
                                                            color: FlutterTheme
                                                                    .of(context)
                                                                .secondary,
                                                            size: 29.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (pageViewProjectsRecord
                                                                .figma !=
                                                            '')
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await launchURL(
                                                                pageViewProjectsRecord
                                                                    .figma);
                                                          },
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .figma,
                                                            color: FlutterTheme
                                                                    .of(context)
                                                                .secondary,
                                                            size: 29.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (pageViewProjectsRecord
                                                                .youtube !=
                                                            '')
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await launchURL(
                                                                pageViewProjectsRecord
                                                                    .youtube);
                                                          },
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .youtube,
                                                            color: FlutterTheme
                                                                    .of(context)
                                                                .secondary,
                                                            size: 29.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (pageViewProjectsRecord
                                                                .website !=
                                                            '')
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await launchURL(
                                                                pageViewProjectsRecord
                                                                    .youtube);
                                                          },
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .externalLinkAlt,
                                                            color: FlutterTheme
                                                                    .of(context)
                                                                .secondary,
                                                            size: 29.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (pageViewProjectsRecord
                                                                .playstore !=
                                                            '')
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await launchURL(
                                                                pageViewProjectsRecord
                                                                    .youtube);
                                                          },
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .googlePlay,
                                                            color: FlutterTheme
                                                                    .of(context)
                                                                .secondary,
                                                            size: 29.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (pageViewProjectsRecord
                                                                .appstore !=
                                                            '')
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await launchURL(
                                                                pageViewProjectsRecord
                                                                    .youtube);
                                                          },
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .appStore,
                                                            color: FlutterTheme
                                                                    .of(context)
                                                                .secondary,
                                                            size: 29.0,
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.07,
                                                decoration: const BoxDecoration(),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(150.0, 0.0,
                                                          150.0, 0.0),
                                                  child: Text(
                                                    pageViewProjectsRecord
                                                        .description,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterTheme.of(
                                                                      context)
                                                                  .headlineSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 16.0),
                                        child: smooth_page_indicator
                                            .SmoothPageIndicator(
                                          controller: _model
                                                  .pageViewController3 ??=
                                              PageController(
                                                  initialPage: max(
                                                      0,
                                                      min(
                                                          0,
                                                          pageViewProjectsRecordList
                                                                  .length -
                                                              1))),
                                          count:
                                              pageViewProjectsRecordList.length,
                                          axisDirection: Axis.horizontal,
                                          onDotClicked: (i) async {
                                            await _model.pageViewController3!
                                                .animateToPage(
                                              i,
                                              duration:
                                                  const Duration(milliseconds: 500),
                                              curve: Curves.ease,
                                            );
                                            setState(() {});
                                          },
                                          effect: smooth_page_indicator
                                              .ExpandingDotsEffect(
                                            expansionFactor: 3.0,
                                            spacing: 8.0,
                                            radius: 16.0,
                                            dotWidth: 16.0,
                                            dotHeight: 8.0,
                                            dotColor: const Color(0xFFE4E7EC),
                                            activeDotColor:
                                                FlutterTheme.of(context)
                                                    .secondaryText,
                                            paintStyle: PaintingStyle.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2FFrame%2077%20(1).jpg?alt=media&token=0666888b-73bb-4bd3-8e6d-e950894a8c51',
                      ).image,
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Testimonials That\n',
                                style: FlutterTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayMediumFamily,
                                      color:
                                          FlutterTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily),
                                    ),
                              ),
                              TextSpan(
                                text: 'Speak to',
                                style: FlutterTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayMediumFamily,
                                      color:
                                          FlutterTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily),
                                    ),
                              ),
                              TextSpan(
                                text: ' My Results',
                                style: FlutterTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displaySmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displaySmallFamily),
                                    ),
                              )
                            ],
                            style: FlutterTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.55,
                        decoration: const BoxDecoration(),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Text(
                              'Here Are My Testimonials: Praise from Satisfied Clients. Discover firsthand accounts of exceptional service and results. These glowing reviews reflect the quality and dedication I bring to my work, showcasing the positive impact experienced by those I\'ve served.',
                              textAlign: TextAlign.center,
                              style: FlutterTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterTheme.of(context)
                                        .titleSmallFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: StreamBuilder<List<TestimonialsRecord>>(
                            stream: queryTestimonialsRecord(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<TestimonialsRecord>
                                  carouselTestimonialsRecordList =
                                  snapshot.data!;

                              return SizedBox(
                                width: double.infinity,
                                height: 180.0,
                                child: CarouselSlider.builder(
                                  itemCount:
                                      carouselTestimonialsRecordList.length,
                                  itemBuilder: (context, carouselIndex, _) {
                                    final carouselTestimonialsRecord =
                                        carouselTestimonialsRecordList[
                                            carouselIndex];
                                    return Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.5,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.25,
                                        decoration: const BoxDecoration(
                                          color: Color(0x46FFFFFF),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(35.0),
                                            bottomRight: Radius.circular(35.0),
                                            topLeft: Radius.circular(35.0),
                                            topRight: Radius.circular(35.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  35.0, 10.0, 35.0, 10.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 45.0,
                                                              height: 45.0,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                carouselTestimonialsRecord
                                                                    .image,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    carouselTestimonialsRecord
                                                                        .name,
                                                                    style: FlutterTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterTheme.of(context).labelLargeFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterTheme.of(context).labelLargeFamily),
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    '${carouselTestimonialsRecord.position},${carouselTestimonialsRecord.companyName}',
                                                                    style: FlutterTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterTheme.of(context).titleSmallFamily,
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterTheme.of(context).titleSmallFamily),
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              RatingBarIndicator(
                                                                itemBuilder:
                                                                    (context,
                                                                            index) =>
                                                                        Icon(
                                                                  Icons
                                                                      .star_rounded,
                                                                  color: FlutterTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                                direction: Axis
                                                                    .horizontal,
                                                                rating:
                                                                    carouselTestimonialsRecord
                                                                        .rating,
                                                                unratedColor:
                                                                    FlutterTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                itemCount: 5,
                                                                itemSize: 24.0,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const Icon(
                                                      Icons
                                                          .format_quote_rounded,
                                                      color: Color(0x41FFFFFF),
                                                      size: 70.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  carouselTestimonialsRecord
                                                      .description,
                                                  style: FlutterTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  carouselController:
                                      _model.carouselController1 ??=
                                          CarouselSliderController(),
                                  options: CarouselOptions(
                                    initialPage: max(
                                        0,
                                        min(
                                            1,
                                            carouselTestimonialsRecordList
                                                    .length -
                                                1)),
                                    viewportFraction: 0.5,
                                    disableCenter: true,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.25,
                                    enableInfiniteScroll: true,
                                    scrollDirection: Axis.horizontal,
                                    autoPlay: true,
                                    autoPlayAnimationDuration:
                                        const Duration(milliseconds: 800),
                                    autoPlayInterval:
                                        const Duration(milliseconds: (800 + 4000)),
                                    autoPlayCurve: Curves.linear,
                                    pauseAutoPlayInFiniteScroll: true,
                                    onPageChanged: (index, _) =>
                                        _model.carouselCurrentIndex1 = index,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 500.0,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2FFrame%2077%20(1).jpg?alt=media&token=0666888b-73bb-4bd3-8e6d-e950894a8c51',
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Testimonials That\n',
                                style: FlutterTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayMediumFamily,
                                      color:
                                          FlutterTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily),
                                    ),
                              ),
                              TextSpan(
                                text: 'Speak to',
                                style: FlutterTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayMediumFamily,
                                      color:
                                          FlutterTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily),
                                    ),
                              ),
                              TextSpan(
                                text: ' My Results',
                                style: FlutterTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displaySmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displaySmallFamily),
                                    ),
                              )
                            ],
                            style: FlutterTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.55,
                        decoration: const BoxDecoration(),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Text(
                              'Here Are My Testimonials: Praise from Satisfied Clients. Discover firsthand accounts of exceptional service and results. These glowing reviews reflect the quality and dedication I bring to my work, showcasing the positive impact experienced by those I\'ve served.',
                              textAlign: TextAlign.center,
                              style: FlutterTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterTheme.of(context)
                                        .titleSmallFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: StreamBuilder<List<TestimonialsRecord>>(
                            stream: queryTestimonialsRecord(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<TestimonialsRecord>
                                  carouselTestimonialsRecordList =
                                  snapshot.data!;

                              return SizedBox(
                                width: double.infinity,
                                height: 180.0,
                                child: CarouselSlider.builder(
                                  itemCount:
                                      carouselTestimonialsRecordList.length,
                                  itemBuilder: (context, carouselIndex, _) {
                                    final carouselTestimonialsRecord =
                                        carouselTestimonialsRecordList[
                                            carouselIndex];
                                    return Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.758,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.25,
                                        decoration: BoxDecoration(
                                          color: const Color(0x46FFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 10.0, 15.0, 10.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 45.0,
                                                              height: 45.0,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                carouselTestimonialsRecord
                                                                    .image,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    carouselTestimonialsRecord
                                                                        .name,
                                                                    style: FlutterTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterTheme.of(context).titleSmallFamily,
                                                                          color:
                                                                              FlutterTheme.of(context).secondaryText,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterTheme.of(context).titleSmallFamily),
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    '${carouselTestimonialsRecord.position},${carouselTestimonialsRecord.companyName}',
                                                                    style: FlutterTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterTheme.of(context).titleSmallFamily,
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterTheme.of(context).titleSmallFamily),
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              RatingBarIndicator(
                                                                itemBuilder:
                                                                    (context,
                                                                            index) =>
                                                                        Icon(
                                                                  Icons
                                                                      .star_rounded,
                                                                  color: FlutterTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                                direction: Axis
                                                                    .horizontal,
                                                                rating:
                                                                    carouselTestimonialsRecord
                                                                        .rating,
                                                                unratedColor:
                                                                    FlutterTheme.of(
                                                                            context)
                                                                        .accent2,
                                                                itemCount: 5,
                                                                itemSize: 20.0,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  carouselTestimonialsRecord
                                                                      .rating
                                                                      .toString(),
                                                                  style: FlutterTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterTheme.of(context).titleSmallFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const Icon(
                                                      Icons
                                                          .format_quote_rounded,
                                                      color: Color(0x41FFFFFF),
                                                      size: 70.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  carouselTestimonialsRecord
                                                      .description,
                                                  style: FlutterTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  carouselController:
                                      _model.carouselController2 ??=
                                          CarouselSliderController(),
                                  options: CarouselOptions(
                                    initialPage: max(
                                        0,
                                        min(
                                            1,
                                            carouselTestimonialsRecordList
                                                    .length -
                                                1)),
                                    viewportFraction: 0.75,
                                    disableCenter: true,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.25,
                                    enableInfiniteScroll: true,
                                    scrollDirection: Axis.horizontal,
                                    autoPlay: true,
                                    autoPlayAnimationDuration:
                                        const Duration(milliseconds: 800),
                                    autoPlayInterval:
                                        const Duration(milliseconds: (800 + 4000)),
                                    autoPlayCurve: Curves.linear,
                                    pauseAutoPlayInFiniteScroll: true,
                                    onPageChanged: (index, _) =>
                                        _model.carouselCurrentIndex2 = index,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/avaneesh-maheshwari.appspot.com/o/Images%2FFrame%2077%20(1).jpg?alt=media&token=0666888b-73bb-4bd3-8e6d-e950894a8c51',
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Testimonials That\n',
                                style: FlutterTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayMediumFamily,
                                      color:
                                          FlutterTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily),
                                    ),
                              ),
                              TextSpan(
                                text: 'Speak to',
                                style: FlutterTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayMediumFamily,
                                      color:
                                          FlutterTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily),
                                    ),
                              ),
                              TextSpan(
                                text: ' My Results',
                                style: FlutterTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displaySmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displaySmallFamily),
                                    ),
                              )
                            ],
                            style: FlutterTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.75,
                        decoration: const BoxDecoration(),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Text(
                              'Here Are My Testimonials: Praise from Satisfied Clients. Discover firsthand accounts of exceptional service and results. These glowing reviews reflect the quality and dedication I bring to my work, showcasing the positive impact experienced by those I\'ve served.',
                              textAlign: TextAlign.center,
                              style: FlutterTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterTheme.of(context)
                                        .titleSmallFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: StreamBuilder<List<TestimonialsRecord>>(
                              stream: queryTestimonialsRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<TestimonialsRecord>
                                    carouselTestimonialsRecordList =
                                    snapshot.data!;

                                return SizedBox(
                                  width: double.infinity,
                                  height: 180.0,
                                  child: CarouselSlider.builder(
                                    itemCount:
                                        carouselTestimonialsRecordList.length,
                                    itemBuilder: (context, carouselIndex, _) {
                                      final carouselTestimonialsRecord =
                                          carouselTestimonialsRecordList[
                                              carouselIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.758,
                                          decoration: BoxDecoration(
                                            color: const Color(0x46FFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 35.0,
                                                                height: 35.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  carouselTestimonialsRecord
                                                                      .image,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      carouselTestimonialsRecord
                                                                          .name,
                                                                      style: FlutterTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterTheme.of(context).labelLargeFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterTheme.of(context).labelLargeFamily),
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      '${carouselTestimonialsRecord.position},${carouselTestimonialsRecord.companyName}',
                                                                      style: FlutterTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterTheme.of(context).titleSmallFamily,
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterTheme.of(context).titleSmallFamily),
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                RatingBarIndicator(
                                                                  itemBuilder:
                                                                      (context,
                                                                              index) =>
                                                                          Icon(
                                                                    Icons
                                                                        .star_rounded,
                                                                    color: FlutterTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                  ),
                                                                  direction: Axis
                                                                      .horizontal,
                                                                  rating:
                                                                      carouselTestimonialsRecord
                                                                          .rating,
                                                                  unratedColor:
                                                                      FlutterTheme.of(
                                                                              context)
                                                                          .accent4,
                                                                  itemCount: 5,
                                                                  itemSize:
                                                                      20.0,
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    carouselTestimonialsRecord
                                                                        .rating
                                                                        .toString(),
                                                                    style: FlutterTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterTheme.of(context).titleSmallFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterTheme.of(context).titleSmallFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const Icon(
                                                        Icons
                                                            .format_quote_rounded,
                                                        color:
                                                            Color(0x41FFFFFF),
                                                        size: 30.0,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    carouselTestimonialsRecord
                                                        .description,
                                                    style: FlutterTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    carouselController:
                                        _model.carouselController3 ??=
                                            CarouselSliderController(),
                                    options: CarouselOptions(
                                      initialPage: max(
                                          0,
                                          min(
                                              1,
                                              carouselTestimonialsRecordList
                                                      .length -
                                                  1)),
                                      viewportFraction: 0.95,
                                      disableCenter: true,
                                      enlargeCenterPage: true,
                                      enlargeFactor: 0.25,
                                      enableInfiniteScroll: true,
                                      scrollDirection: Axis.horizontal,
                                      autoPlay: true,
                                      autoPlayAnimationDuration:
                                          const Duration(milliseconds: 800),
                                      autoPlayInterval:
                                          const Duration(milliseconds: (800 + 4000)),
                                      autoPlayCurve: Curves.linear,
                                      pauseAutoPlayInFiniteScroll: true,
                                      onPageChanged: (index, _) =>
                                          _model.carouselCurrentIndex3 = index,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 350.0,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Want to work Together',
                                style: FlutterTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily),
                                    ),
                              ),
                              TextSpan(
                                text: '\nLet\'s connect',
                                style: FlutterTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displaySmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displaySmallFamily),
                                    ),
                              )
                            ],
                            style: FlutterTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Outfit'),
                                ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          height: 150.0,
                          decoration: BoxDecoration(
                            color: FlutterTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: const Color(0xFFE4E7EC),
                            ),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 8.0, 0.0),
                              child: TextFormField(
                                controller: _model.textController1,
                                focusNode: _model.textFieldFocusNode1,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .labelMediumFamily),
                                      ),
                                  hintText:
                                      'Enter you idea or contact details to connect and discuss....',
                                  hintStyle: FlutterTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineSmallFamily,
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                ),
                                style: FlutterTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                textAlign: TextAlign.center,
                                maxLines: 5,
                                validator: _model.textController1Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterTheme.of(context)
                                .secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                              topLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                            ),
                            border: Border.all(
                              color: const Color(0xFFE4E7EC),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                7.0, 0.0, 4.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFFFEAD5),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.email,
                                          color: FlutterTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 0.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.textController2,
                                              focusNode:
                                                  _model.textFieldFocusNode2,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                hintText: 'Enter Email Address',
                                                hintStyle:
                                                    FlutterTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                              ),
                                              style:
                                                  FlutterTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                              validator: _model
                                                  .textController2Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchUrl(Uri(
                                        scheme: 'mailto',
                                        path: 'maheshwari.avaneesh8@gmail.com',
                                        query: {
                                          'subject': 'Contacted on Portfolio',
                                          'body': _model.textController2.text,
                                        }
                                            .entries
                                            .map((MapEntry<String, String> e) =>
                                                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                            .join('&')));
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Email sent',
                                          style: FlutterTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .labelLargeFamily,
                                                color:
                                                    FlutterTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .labelLargeFamily),
                                              ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 70.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterTheme.of(context)
                                          .secondaryText,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(35.0),
                                        bottomRight: Radius.circular(35.0),
                                        topLeft: Radius.circular(35.0),
                                        topRight: Radius.circular(35.0),
                                      ),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Send',
                                        style: FlutterTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterTheme.of(context)
                                                      .titleSmallFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 400.0,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Want to work Together',
                                style: FlutterTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily),
                                    ),
                              ),
                              TextSpan(
                                text: '\nLet\'s connect',
                                style: FlutterTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displaySmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displaySmallFamily),
                                    ),
                              )
                            ],
                            style: FlutterTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Outfit'),
                                ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: FlutterTheme.of(context)
                                .secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(35.0),
                              bottomRight: Radius.circular(35.0),
                              topLeft: Radius.circular(35.0),
                              topRight: Radius.circular(35.0),
                            ),
                            border: Border.all(
                              color: const Color(0xFFE4E7EC),
                            ),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 8.0, 0.0),
                              child: TextFormField(
                                controller: _model.textController3,
                                focusNode: _model.textFieldFocusNode3,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .labelMediumFamily),
                                      ),
                                  hintText:
                                      'Enter you idea or contact details to connect and discuss....',
                                  hintStyle: FlutterTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineSmallFamily,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                ),
                                style: FlutterTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                textAlign: TextAlign.center,
                                maxLines: 5,
                                validator: _model.textController3Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterTheme.of(context)
                                .secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                              topLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                            ),
                            border: Border.all(
                              color: const Color(0xFFE4E7EC),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                7.0, 0.0, 4.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFFFEAD5),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.email,
                                          color: FlutterTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 0.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.textController4,
                                              focusNode:
                                                  _model.textFieldFocusNode4,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                hintText: 'Enter Email Address',
                                                hintStyle:
                                                    FlutterTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                              ),
                                              style:
                                                  FlutterTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                              validator: _model
                                                  .textController4Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchUrl(Uri(
                                        scheme: 'mailto',
                                        path: 'maheshwari.avaneesh8@gmail.com',
                                        query: {
                                          'subject': 'Contacted on Portfolio',
                                          'body': _model.textController4.text,
                                        }
                                            .entries
                                            .map((MapEntry<String, String> e) =>
                                                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                            .join('&')));
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Email sent',
                                          style: FlutterTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .labelLargeFamily,
                                                color:
                                                    FlutterTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .labelLargeFamily),
                                              ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 100.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterTheme.of(context)
                                          .secondaryText,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(35.0),
                                        bottomRight: Radius.circular(35.0),
                                        topLeft: Radius.circular(35.0),
                                        topRight: Radius.circular(35.0),
                                      ),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Send',
                                        style: FlutterTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterTheme.of(context)
                                                      .titleSmallFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.65,
                  decoration: BoxDecoration(
                    color: FlutterTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Want to work Together',
                                style: FlutterTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displayMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displayMediumFamily),
                                    ),
                              ),
                              TextSpan(
                                text: '\nLet\'s connect',
                                style: FlutterTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .displaySmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .displaySmallFamily),
                                    ),
                              )
                            ],
                            style: FlutterTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Outfit'),
                                ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          height: 250.0,
                          decoration: BoxDecoration(
                            color: FlutterTheme.of(context)
                                .secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(35.0),
                              bottomRight: Radius.circular(35.0),
                              topLeft: Radius.circular(35.0),
                              topRight: Radius.circular(35.0),
                            ),
                            border: Border.all(
                              color: FlutterTheme.of(context).tertiary,
                            ),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 8.0, 0.0),
                              child: TextFormField(
                                controller: _model.textController5,
                                focusNode: _model.textFieldFocusNode5,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .labelMediumFamily),
                                      ),
                                  hintText:
                                      'Enter you idea or contact details to connect and discuss....',
                                  hintStyle: FlutterTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .headlineSmallFamily,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                ),
                                style: FlutterTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                textAlign: TextAlign.center,
                                maxLines: 5,
                                validator: _model.textController5Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterTheme.of(context)
                                .secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                              topLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                            ),
                            border: Border.all(
                              color: FlutterTheme.of(context).tertiary,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                7.0, 0.0, 4.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFFFEAD5),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.email,
                                          color: FlutterTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 0.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.textController6,
                                              focusNode:
                                                  _model.textFieldFocusNode6,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                hintText: 'Enter Email Address',
                                                hintStyle:
                                                    FlutterTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                              ),
                                              style:
                                                  FlutterTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                              validator: _model
                                                  .textController6Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchUrl(Uri(
                                        scheme: 'mailto',
                                        path: 'maheshwari.avaneesh8@gmail.com',
                                        query: {
                                          'subject': 'Contacted on Portfolio',
                                          'body': _model.textController6.text,
                                        }
                                            .entries
                                            .map((MapEntry<String, String> e) =>
                                                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                            .join('&')));
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Email sent',
                                          style: FlutterTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .labelLargeFamily,
                                                color:
                                                    FlutterTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .labelLargeFamily),
                                              ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 100.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterTheme.of(context)
                                          .secondaryText,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(35.0),
                                        bottomRight: Radius.circular(35.0),
                                        topLeft: Radius.circular(35.0),
                                        topRight: Radius.circular(35.0),
                                      ),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Send',
                                        style: FlutterTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterTheme.of(context)
                                                      .titleSmallFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.6,
                  decoration: const BoxDecoration(
                    color: Color(0xFF272727),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            50.0, 50.0, 50.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Let\'s Connect',
                                  style: FlutterTheme.of(context)
                                      .displayLarge
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .displayLargeFamily,
                                        color: FlutterTheme.of(context)
                                            .primaryBackground,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .displayLargeFamily),
                                      ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(
                                        'https://drive.google.com/file/d/1U-lz5p_1uaLu23yUv_ACiOUWaj2-WPF5/view?usp=sharing');
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.12,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.05,
                                    decoration: BoxDecoration(
                                      color: FlutterTheme.of(context)
                                          .secondaryText,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(35.0),
                                        bottomRight: Radius.circular(35.0),
                                        topLeft: Radius.circular(35.0),
                                        topRight: Radius.circular(35.0),
                                      ),
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'Blogs',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 1000),
                                            ),
                                          },
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Blogs',
                                            style: FlutterTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterTheme.of(
                                                              context)
                                                          .titleMediumFamily,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterTheme.of(
                                                                  context)
                                                              .titleMediumFamily),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 1.0,
                              color: Color(0xFF475467),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Avaneesh Maheshwari',
                                            style: FlutterTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily:
                                                      FlutterTheme.of(
                                                              context)
                                                          .displaySmallFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterTheme.of(
                                                                  context)
                                                              .displaySmallFamily),
                                                ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.5,
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 20.0),
                                          child: Text(
                                            'Final year student at VIT Vellore (\'25) specializing in software development.Proven expertise through three internships. Skilled software developer, data analyst and competitive programmer.',
                                            textAlign: TextAlign.justify,
                                            style: FlutterTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterTheme.of(
                                                              context)
                                                          .titleSmallFamily,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterTheme.of(
                                                                  context)
                                                              .titleSmallFamily),
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await launchURL(
                                                    'https://www.linkedin.com/in/avaneesh-maheshwari-ba552a275/');
                                              },
                                              child: FaIcon(
                                                FontAwesomeIcons.linkedinIn,
                                                color:
                                                    FlutterTheme.of(context)
                                                        .primaryBackground,
                                                size: 30.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.instagram,
                                                color:
                                                    FlutterTheme.of(context)
                                                        .primaryBackground,
                                                size: 30.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.facebookF,
                                                color:
                                                    FlutterTheme.of(context)
                                                        .primaryBackground,
                                                size: 30.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.twitter,
                                                color:
                                                    FlutterTheme.of(context)
                                                        .primaryBackground,
                                                size: 30.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await launchURL(
                                                      'https://github.com/Avaneesh8');
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.github,
                                                  color: FlutterTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await launchURL(
                                                      'https://github.com/Avaneesh8');
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.youtube,
                                                  color: FlutterTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'Contact',
                                          style: FlutterTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .labelLargeFamily,
                                                fontSize: 30.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .labelLargeFamily),
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Text(
                                          '+917388339828',
                                          style: FlutterTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .titleSmallFamily,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'maheshwari.avaneesh8@gmail.com',
                                          style: FlutterTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .titleSmallFamily,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await launchURL(
                                                'https://avaneesh-maheshwari.flutterflow.app');
                                          },
                                          child: Text(
                                            'Website',
                                            style: FlutterTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterTheme.of(
                                                              context)
                                                          .titleSmallFamily,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterTheme.of(
                                                                  context)
                                                              .titleSmallFamily),
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.35,
                  decoration: const BoxDecoration(
                    color: Color(0xFF272727),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            50.0, 50.0, 50.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Let\'s Connect',
                                  style: FlutterTheme.of(context)
                                      .displayLarge
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .displayLargeFamily,
                                        color: FlutterTheme.of(context)
                                            .primaryBackground,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .displayLargeFamily),
                                      ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(
                                        'https://drive.google.com/file/d/1U-lz5p_1uaLu23yUv_ACiOUWaj2-WPF5/view?usp=sharing');
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.2,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: FlutterTheme.of(context)
                                          .secondaryText,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(35.0),
                                        bottomRight: Radius.circular(35.0),
                                        topLeft: Radius.circular(35.0),
                                        topRight: Radius.circular(35.0),
                                      ),
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'Blogs',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 1000),
                                            ),
                                          },
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Blogs',
                                            style: FlutterTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterTheme.of(
                                                              context)
                                                          .titleMediumFamily,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterTheme.of(
                                                                  context)
                                                              .titleMediumFamily),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 1.0,
                              color: Color(0xFF475467),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Avaneesh Maheshwari',
                                            style: FlutterTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily:
                                                      FlutterTheme.of(
                                                              context)
                                                          .displaySmallFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterTheme.of(
                                                                  context)
                                                              .displaySmallFamily),
                                                ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.5,
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 20.0),
                                          child: Text(
                                            'Final year student at VIT Vellore (\'25) specializing in software development.Proven expertise through three internships. Skilled software developer, data analyst and competitive programmer.',
                                            textAlign: TextAlign.justify,
                                            style: FlutterTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterTheme.of(
                                                              context)
                                                          .titleSmallFamily,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterTheme.of(
                                                                  context)
                                                              .titleSmallFamily),
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await launchURL(
                                                    'https://www.linkedin.com/in/avaneesh-maheshwari-ba552a275/');
                                              },
                                              child: FaIcon(
                                                FontAwesomeIcons.linkedinIn,
                                                color:
                                                    FlutterTheme.of(context)
                                                        .primaryBackground,
                                                size: 30.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.instagram,
                                                color:
                                                    FlutterTheme.of(context)
                                                        .primaryBackground,
                                                size: 30.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.facebookF,
                                                color:
                                                    FlutterTheme.of(context)
                                                        .primaryBackground,
                                                size: 30.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.twitter,
                                                color:
                                                    FlutterTheme.of(context)
                                                        .primaryBackground,
                                                size: 30.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await launchURL(
                                                      'https://github.com/Avaneesh8');
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.github,
                                                  color: FlutterTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await launchURL(
                                                      'https://github.com/Avaneesh8');
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.youtube,
                                                  color: FlutterTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'Contact',
                                          style: FlutterTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .labelLargeFamily,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .labelLargeFamily),
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Text(
                                          '+917388339828',
                                          style: FlutterTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .titleSmallFamily,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'maheshwari.avaneesh8@gmail.com',
                                          textAlign: TextAlign.center,
                                          style: FlutterTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .titleSmallFamily,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await launchURL(
                                                'https://avaneesh-maheshwari.flutterflow.app');
                                          },
                                          child: Text(
                                            'Website',
                                            style: FlutterTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterTheme.of(
                                                              context)
                                                          .titleSmallFamily,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterTheme.of(
                                                                  context)
                                                              .titleSmallFamily),
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 270.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFF272727),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 15.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Let\'s Connect',
                                  style: FlutterTheme.of(context)
                                      .displayMedium
                                      .override(
                                        fontFamily: FlutterTheme.of(context)
                                            .displayMediumFamily,
                                        color: FlutterTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterTheme.of(context)
                                                    .displayMediumFamily),
                                      ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(
                                        'https://drive.google.com/file/d/1U-lz5p_1uaLu23yUv_ACiOUWaj2-WPF5/view?usp=sharing');
                                  },
                                  child: Container(
                                    width: 75.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(
                                      color: FlutterTheme.of(context)
                                          .secondaryText,
                                      borderRadius: BorderRadius.circular(35.0),
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'Blogs',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 1000),
                                            ),
                                          },
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Blogs',
                                            style: FlutterTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterTheme.of(
                                                          context)
                                                      .primary,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 1.0,
                              color: Color(0xFF475467),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Avaneesh Maheshwari',
                                            style: FlutterTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily:
                                                      FlutterTheme.of(
                                                              context)
                                                          .displaySmallFamily,
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterTheme.of(
                                                                  context)
                                                              .displaySmallFamily),
                                                ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.6,
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 10.0, 20.0),
                                          child: Text(
                                            'Final year student at VIT Vellore (\'25) specializing in software development.Proven expertise through three internships. Skilled software developer, data analyst and competitive programmer.',
                                            textAlign: TextAlign.justify,
                                            style: FlutterTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterTheme.of(
                                                              context)
                                                          .titleSmallFamily,
                                                  fontSize: 8.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterTheme.of(
                                                                  context)
                                                              .titleSmallFamily),
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await launchURL(
                                                    'https://www.linkedin.com/in/avaneesh-maheshwari-ba552a275/');
                                              },
                                              child: FaIcon(
                                                FontAwesomeIcons.linkedinIn,
                                                color:
                                                    FlutterTheme.of(context)
                                                        .primaryBackground,
                                                size: 20.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 0.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.instagram,
                                                color:
                                                    FlutterTheme.of(context)
                                                        .primaryBackground,
                                                size: 20.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 0.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.facebookF,
                                                color:
                                                    FlutterTheme.of(context)
                                                        .primaryBackground,
                                                size: 20.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 0.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.twitter,
                                                color:
                                                    FlutterTheme.of(context)
                                                        .primaryBackground,
                                                size: 20.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await launchURL(
                                                      'https://github.com/Avaneesh8');
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.github,
                                                  color: FlutterTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await launchURL(
                                                      'https://github.com/Avaneesh8');
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.youtube,
                                                  color: FlutterTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 7.0, 0.0, 0.0),
                                        child: Text(
                                          'Contact',
                                          style: FlutterTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .labelLargeFamily,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .labelLargeFamily),
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Text(
                                          '+917388339828',
                                          style: FlutterTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .titleSmallFamily,
                                                fontSize: 8.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'maheshwari.avaneesh8@gmail.com',
                                          textAlign: TextAlign.center,
                                          style: FlutterTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterTheme.of(context)
                                                        .titleSmallFamily,
                                                fontSize: 8.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await launchURL(
                                                'https://avaneesh-maheshwari.flutterflow.app');
                                          },
                                          child: Text(
                                            'Website',
                                            style: FlutterTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterTheme.of(
                                                              context)
                                                          .titleSmallFamily,
                                                  fontSize: 8.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterTheme.of(
                                                                  context)
                                                              .titleSmallFamily),
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
