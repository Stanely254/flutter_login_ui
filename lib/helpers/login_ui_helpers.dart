import 'package:flutter/cupertino.dart';
import 'package:login_ui/models/login_app_model.dart';
import 'package:provider/provider.dart';

LoginAppModel state({required BuildContext context, bool listen = false}) =>
    Provider.of<LoginAppModel>(context, listen: listen);

Size size(BuildContext context) => MediaQuery.of(context).size;
