import 'package:application/schema/response.dart';

export "config.dart";
export "history.dart";
export "message.dart";
export "response.dart";
export "user.dart";

typedef Json = Map<String, dynamic>;
typedef FromJsonFunction<T> = T Function(Json json);
typedef ToJsonFunction<T> = Json Function(T);