// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://the-one-api.dev/v2';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ResponseWrapper<Book>> getBooks(
      {limit = 1000, offset = 0, sort, filter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'limit': limit,
      r'offset': offset,
      r'sort': sort
    };
    queryParameters.addAll(filter ?? <String, dynamic>{});
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseWrapper<Book>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/book',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseWrapper<Book>.fromJson(
      _result.data!,
      (json) => Book.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResponseWrapper<Book>> getBookById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseWrapper<Book>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/book/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseWrapper<Book>.fromJson(
      _result.data!,
      (json) => Book.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResponseWrapper<BookChapter>> getChaptersByBookId(id,
      {limit = 1000, offset = 0, sort, filter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'limit': limit,
      r'offset': offset,
      r'sort': sort
    };
    queryParameters.addAll(filter ?? <String, dynamic>{});
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseWrapper<BookChapter>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/book/${id}/chapter',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseWrapper<BookChapter>.fromJson(
      _result.data!,
      (json) => BookChapter.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResponseWrapper<Movie>> getMovies(
      {limit = 1000, offset = 0, sort, filter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'limit': limit,
      r'offset': offset,
      r'sort': sort
    };
    queryParameters.addAll(filter ?? <String, dynamic>{});
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseWrapper<Movie>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/movie',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseWrapper<Movie>.fromJson(
      _result.data!,
      (json) => Movie.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResponseWrapper<Movie>> getMovieById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseWrapper<Movie>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/movie/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseWrapper<Movie>.fromJson(
      _result.data!,
      (json) => Movie.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResponseWrapper<Quote>> getQuotesByMovieId(id,
      {limit = 1000, offset = 0, sort, filter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'limit': limit,
      r'offset': offset,
      r'sort': sort
    };
    queryParameters.addAll(filter ?? <String, dynamic>{});
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseWrapper<Quote>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/movie/${id}/quote',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseWrapper<Quote>.fromJson(
      _result.data!,
      (json) => Quote.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResponseWrapper<Character>> getCharacters(
      {limit = 1000, offset = 0, sort, filter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'limit': limit,
      r'offset': offset,
      r'sort': sort
    };
    queryParameters.addAll(filter ?? <String, dynamic>{});
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseWrapper<Character>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/character',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseWrapper<Character>.fromJson(
      _result.data!,
      (json) => Character.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResponseWrapper<Character>> getCharacterById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseWrapper<Character>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/character/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseWrapper<Character>.fromJson(
      _result.data!,
      (json) => Character.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResponseWrapper<Quote>> getQuotesByCharacterId(id,
      {limit = 1000, offset = 0, sort, filter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'limit': limit,
      r'offset': offset,
      r'sort': sort
    };
    queryParameters.addAll(filter ?? <String, dynamic>{});
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseWrapper<Quote>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/character/${id}/quote',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseWrapper<Quote>.fromJson(
      _result.data!,
      (json) => Quote.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResponseWrapper<Quote>> getQuotes(
      {limit = 1000, offset = 0, sort, filter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'limit': limit,
      r'offset': offset,
      r'sort': sort
    };
    queryParameters.addAll(filter ?? <String, dynamic>{});
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseWrapper<Quote>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/quote',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseWrapper<Quote>.fromJson(
      _result.data!,
      (json) => Quote.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResponseWrapper<Quote>> getQuoteById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseWrapper<Quote>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/quote/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseWrapper<Quote>.fromJson(
      _result.data!,
      (json) => Quote.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResponseWrapper<BookChapter>> getChapters(
      {limit = 1000, offset = 0, sort, filter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'limit': limit,
      r'offset': offset,
      r'sort': sort
    };
    queryParameters.addAll(filter ?? <String, dynamic>{});
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseWrapper<BookChapter>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/chapter',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseWrapper<BookChapter>.fromJson(
      _result.data!,
      (json) => BookChapter.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResponseWrapper<BookChapter>> getChapterById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseWrapper<BookChapter>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/chapter/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseWrapper<BookChapter>.fromJson(
      _result.data!,
      (json) => BookChapter.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
