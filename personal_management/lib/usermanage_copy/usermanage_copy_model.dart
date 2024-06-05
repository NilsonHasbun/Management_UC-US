import '/backend/backend.dart';
import '/components/crearusuario_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'usermanage_copy_widget.dart' show UsermanageCopyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UsermanageCopyModel extends FlutterFlowModel<UsermanageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<UserRecord>();
  // Model for crearusuario component.
  late CrearusuarioModel crearusuarioModel;

  @override
  void initState(BuildContext context) {
    crearusuarioModel = createModel(context, () => CrearusuarioModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    crearusuarioModel.dispose();
  }
}
