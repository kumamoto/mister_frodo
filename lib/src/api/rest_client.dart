import 'package:dio/dio.dart';
import 'package:mister_frodo/src/models/book.dart';
import 'package:mister_frodo/src/models/book_chapter.dart';
import 'package:mister_frodo/src/models/character.dart';
import 'package:mister_frodo/src/models/movie.dart';
import 'package:mister_frodo/src/models/quote.dart';
import 'package:mister_frodo/src/models/response_wrapper.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://the-one-api.dev/v2")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/book")
  Future<ResponseWrapper<Book>> getBooks({
    @Query("limit") int limit = 100,
    @Query("offset") int offset = 0,
    @Query("sort") String? sort,
    @Queries() Map<String, dynamic>? filter,
  });

  @GET("/book/{id}")
  Future<ResponseWrapper<Book>> getBookById(@Path() String id);

  @GET("/book/{id}/chapter")
  Future<ResponseWrapper<BookChapter>> getChaptersByBookId(
    @Path() String id, {
    @Query("limit") int limit = 100,
    @Query("offset") int offset = 0,
    @Query("sort") String? sort,
    @Queries() Map<String, dynamic>? filter,
  });

  @GET("/movie")
  Future<ResponseWrapper<Movie>> getMovies({
    @Query("limit") int limit = 100,
    @Query("offset") int offset = 0,
    @Query("sort") String? sort,
    @Queries() Map<String, dynamic>? filter,
  });

  @GET("/movie/{id}")
  Future<ResponseWrapper<Movie>> getMovieById(@Path() String id);

  @GET("/movie/{id}/quote")
  Future<ResponseWrapper<Quote>> getQuotesByMovieId(
    @Path() String id, {
    @Query("limit") int limit = 100,
    @Query("offset") int offset = 0,
    @Query("sort") String? sort,
    @Queries() Map<String, dynamic>? filter,
  });

  @GET("/character")
  Future<ResponseWrapper<Character>> getCharacters({
    @Query("limit") int limit = 100,
    @Query("offset") int offset = 0,
    @Query("sort") String? sort,
    @Queries() Map<String, dynamic>? filter,
  });

  @GET("/character/{id}")
  Future<ResponseWrapper<Character>> getCharacterById(@Path() String id);

  @GET("/character/{id}/quote")
  Future<ResponseWrapper<Quote>> getQuotesByCharacterId(
    @Path() String id, {
    @Query("limit") int limit = 100,
    @Query("offset") int offset = 0,
    @Query("sort") String? sort,
    @Queries() Map<String, dynamic>? filter,
  });

  @GET("/quote")
  Future<ResponseWrapper<Quote>> getQuotes({
    @Query("limit") int limit = 100,
    @Query("offset") int offset = 0,
    @Query("sort") String? sort,
    @Queries() Map<String, dynamic>? filter,
  });

  @GET("/quote/{id}")
  Future<ResponseWrapper<Quote>> getQuoteById(@Path() String id);

  @GET("/chapter")
  Future<ResponseWrapper<BookChapter>> getChapters({
    @Query("limit") int limit = 100,
    @Query("offset") int offset = 0,
    @Query("sort") String? sort,
    @Queries() Map<String, dynamic>? filter,
  });

  @GET("/chapter/{id}")
  Future<ResponseWrapper<BookChapter>> getChapterById(@Path() String id);
}
