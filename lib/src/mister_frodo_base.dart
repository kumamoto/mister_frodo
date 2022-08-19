import 'package:universal_io/io.dart';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:mister_frodo/src/api/rest_client.dart';
import 'package:mister_frodo/src/models/book.dart';
import 'package:mister_frodo/src/models/book_chapter.dart';
import 'package:mister_frodo/src/models/character.dart';
import 'package:mister_frodo/src/models/movie.dart';
import 'package:mister_frodo/src/models/quote.dart';
import 'package:mister_frodo/src/models/response_wrapper.dart';

class MisterFrodo implements RestClient {
  final String apiKey;
  final String? baseUrl;
  final _dio = Dio();

  late RestClient _internalRestClient;

  get dio => _dio;

  MisterFrodo(
      {required this.apiKey,
      this.baseUrl,
      bool cache = true,
      bool debug = false}) {
    if (debug) {
      _dio.interceptors.add(HttpFormatter());
    }

    if (cache) {

      if (Platform.isAndroid || Platform.isIOS) {
        var systemTempDir = Directory.systemTemp;
        final options = CacheOptions(
          store: HiveCacheStore(systemTempDir.path),
          policy: CachePolicy.forceCache,
          hitCacheOnErrorExcept: [401, 403, 429],
          maxStale: const Duration(days: 7),
          priority: CachePriority.normal,
          cipher: null,
          keyBuilder: CacheOptions.defaultCacheKeyBuilder,
          allowPostMethod: false,
        );
        _dio.interceptors.add(DioCacheInterceptor(options: options));
      } else {
        final options = CacheOptions(
          store: MemCacheStore(maxSize: 10485760, maxEntrySize: 1048576),
          policy: CachePolicy.forceCache,
          hitCacheOnErrorExcept: [401, 403, 429],
          maxStale: const Duration(days: 7),
          priority: CachePriority.normal,
          cipher: null,
          keyBuilder: CacheOptions.defaultCacheKeyBuilder,
          allowPostMethod: false,
        );
        _dio.interceptors.add(DioCacheInterceptor(options: options));
      }

    }

    _dio.options.headers["Authorization"] = "Bearer $apiKey";
    _dio.options.headers["Content-Type"] = "application/json";

    if (baseUrl != null) {
      _internalRestClient = RestClient(_dio, baseUrl: baseUrl!);
    } else {
      _internalRestClient = RestClient(_dio);
    }
  }

  @override
  Future<ResponseWrapper<Book>> getBookById(String id) {
    return _internalRestClient.getBookById(id);
  }

  @override
  Future<ResponseWrapper<Book>> getBooks(
      {int limit = 100,
      int offset = 0,
      String? sort,
      Map<String, dynamic>? filter}) {
    return _internalRestClient.getBooks(
        limit: limit, offset: offset, sort: sort, filter: filter);
  }

  @override
  Future<ResponseWrapper<BookChapter>> getChapterById(String id) {
    return _internalRestClient.getChapterById(id);
  }

  @override
  Future<ResponseWrapper<BookChapter>> getChapters(
      {int limit = 100,
      int offset = 0,
      String? sort,
      Map<String, dynamic>? filter}) {
    return _internalRestClient.getChapters(
        limit: limit, offset: offset, sort: sort, filter: filter);
  }

  @override
  Future<ResponseWrapper<BookChapter>> getChaptersByBookId(String id,
      {int limit = 100,
      int offset = 0,
      String? sort,
      Map<String, dynamic>? filter}) {
    return _internalRestClient.getChaptersByBookId(id,
        limit: limit, offset: offset, sort: sort, filter: filter);
  }

  @override
  Future<ResponseWrapper<Character>> getCharacterById(String id) {
    return _internalRestClient.getCharacterById(id);
  }

  @override
  Future<ResponseWrapper<Character>> getCharacters(
      {int limit = 100,
      int offset = 0,
      String? sort,
      Map<String, dynamic>? filter}) {
    return _internalRestClient.getCharacters(
        limit: limit, offset: offset, sort: sort, filter: filter);
  }

  @override
  Future<ResponseWrapper<Movie>> getMovieById(String id) {
    return _internalRestClient.getMovieById(id);
  }

  @override
  Future<ResponseWrapper<Movie>> getMovies(
      {int limit = 100,
      int offset = 0,
      String? sort,
      Map<String, dynamic>? filter}) {
    return _internalRestClient.getMovies(
        limit: limit, offset: offset, sort: sort, filter: filter);
  }

  @override
  Future<ResponseWrapper<Quote>> getQuoteById(String id) {
    return _internalRestClient.getQuoteById(id);
  }

  @override
  Future<ResponseWrapper<Quote>> getQuotes(
      {int limit = 100,
      int offset = 0,
      String? sort,
      Map<String, dynamic>? filter}) {
    return _internalRestClient.getQuotes(
        limit: limit, offset: offset, sort: sort, filter: filter);
  }

  @override
  Future<ResponseWrapper<Quote>> getQuotesByCharacterId(String id,
      {int limit = 100,
      int offset = 0,
      String? sort,
      Map<String, dynamic>? filter}) {
    return _internalRestClient.getQuotesByCharacterId(id,
        limit: limit, offset: offset, sort: sort, filter: filter);
  }

  @override
  Future<ResponseWrapper<Quote>> getQuotesByMovieId(String id,
      {int limit = 100,
      int offset = 0,
      String? sort,
      Map<String, dynamic>? filter}) {
    return _internalRestClient.getQuotesByMovieId(id,
        limit: limit, offset: offset, sort: sort, filter: filter);
  }
}
