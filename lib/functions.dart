import 'dart:async';

import 'package:backend_test/user_controller.dart';
import 'package:functions_framework/functions_framework.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

@CloudFunction()
FutureOr<Response> function(Request request) async {
  final router = Router();

  router.get('/', (Request request) {
    return Response.ok('home');
  });

  router.mount('/user/', UserController().router);

  return router.call(request);
}
