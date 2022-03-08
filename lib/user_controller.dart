import 'dart:async';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf.dart';
part 'user_controller.g.dart';

class UserController {
  @Route.get('/')
  FutureOr<Response> getAll(Request request) {
    return Response.ok('get all');
  }

  @Route.get('/<id>')
  FutureOr<Response> getUser(Request request, String id) {
    return Response.ok('get id: $id');
  }

  Router get router => _$UserControllerRouter(this);
}
