import 'dart:io';

import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:common_backend/result.dart';

Future process(context, Future<Result> Function(Client) process) async {
  if (context.req.url.endsWith("favicon.ico")) {
    return context.res.empty();
  }

  final startTime = DateTime.now();
  final client = Client()
      .setEndpoint(Platform.environment["APPWRITE_FUNCTION_API_ENDPOINT"]!)
      .setProject(Platform.environment["APPWRITE_FUNCTION_PROJECT_ID"])
      .setKey(context.req.headers["x-appwrite-key"]);

  final result = await process(client);
  final code = result.when(
    success: (data) {
      context.log("Success: $data");
      return 200;
    },
    error: (code, error) {
      context.error("Error: $code - $error");
      return code;
    },
  );
  context.log(
      "Total time: ${DateTime.now().difference(startTime).inMilliseconds} ms");
  return context.res.json(result.toJson(), code);
}
