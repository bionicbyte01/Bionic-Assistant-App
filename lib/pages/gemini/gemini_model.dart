import '/backend/api_requests/api_calls.dart';
import '/components/top_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'gemini_widget.dart' show GeminiWidget;
import 'package:flutter/material.dart';

class GeminiModel extends FlutterFlowModel<GeminiWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for top_header component.
  late TopHeaderModel topHeaderModel;
  // State field(s) for chat_listview_scrollable widget.
  ScrollController? chatListviewScrollable;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Gemini)] action in TextField widget.
  ApiCallResponse? response;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Gemini - Text From Image] action in IconButton widget.
  String? geminiResponse;

  @override
  void initState(BuildContext context) {
    topHeaderModel = createModel(context, () => TopHeaderModel());
    chatListviewScrollable = ScrollController();
  }

  @override
  void dispose() {
    topHeaderModel.dispose();
    chatListviewScrollable?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
