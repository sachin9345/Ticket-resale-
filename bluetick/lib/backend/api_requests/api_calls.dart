import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GeetRespCall {
  static Future<ApiCallResponse> call({
    String? q = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'geetResp',
      apiUrl: 'https://online-movie-database.p.rapidapi.com/auto-complete',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': 'dfe3d1258emsh3198cd9908ad116p1d3b44jsn7ad783ecad13',
        'X-RapidAPI-Host': 'online-movie-database.p.rapidapi.com',
      },
      params: {
        'q': q,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic imgAdd(dynamic response) => getJsonField(
        response,
        r'''$.d[:].i.imageUrl''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
