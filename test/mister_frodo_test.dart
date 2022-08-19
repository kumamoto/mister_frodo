import 'package:dotenv/dotenv.dart';
import 'package:mister_frodo/mister_frodo.dart';
import 'package:quiver/iterables.dart';
import 'package:test/test.dart';

void main() {
  late MisterFrodo misterFrodo;

  group('A Fellowship of tests', () {
    setUpAll(() {
      var env = DotEnv(includePlatformEnvironment: true)..load();
      if (!env.isEveryDefined(['THE_ONE_API_KEY']) ||
          (env['THE_ONE_API_KEY'] as String).isEmpty) {
        throw Exception("setup env var THE_ONE_API_KEY or create a .env file");
      }
      var apiKey = env['THE_ONE_API_KEY'] as String;
      misterFrodo = MisterFrodo(
          apiKey: apiKey,
          cache: true,
          debug: true,
          baseUrl: "https://the-one-api-cache.127k.workers.dev");
    });

    test('Get Books', () async {
      var bookList = await misterFrodo.getBooks();
      expect(bookList, isNotNull);
      expect(bookList.docs, isNotNull);
      expect(bookList.docs.length, 3);
      for (var book in bookList.docs) {
        expect(book.id, isNotEmpty);
        expect(book.name, isNotEmpty);
      }
    });

    test('Get Book By Id', () async {
      var bookList = await misterFrodo.getBooks();
      expect(bookList, isNotNull);
      for (var book in bookList.docs) {
        expect(book.id, isNotNull);
        var responseWrapper = await misterFrodo.getBookById(book.id);
        expect(book, equals(responseWrapper.docs.first));
      }
    });

    test('Get Book Chapters', () async {
      var bookList = await misterFrodo.getBooks();
      expect(bookList, isNotNull);
      for (var book in bookList.docs) {
        var chaptersList = await misterFrodo.getChaptersByBookId(book.id);
        expect(chaptersList, isNotNull);
        break; // only check the first one as there may be thousands
      }
    });

    test('Get Movies', () async {
      var movieList = await misterFrodo.getMovies();
      expect(movieList, isNotNull);
      expect(movieList.docs, isNotNull);
      expect(movieList.docs.length, 8);
      for (var movie in movieList.docs) {
        expect(movie.id, isNotEmpty);
        expect(movie.name, isNotEmpty);
        expect(movie.runtimeInMinutes, isNotNull);
        expect(movie.budgetInMillions, isNotNull);
        expect(movie.boxOfficeRevenueInMillions, isNotNull);
        expect(movie.academyAwardNominations, isNotNull);
        expect(movie.academyAwardWins, isNotNull);
        expect(movie.rottenTomatoesScore, isNotNull);
      }
    });

    test('Get Movie By Id', () async {
      var movieList = await misterFrodo.getMovies();
      expect(movieList, isNotNull);
      for (var movie in movieList.docs) {
        expect(movie.id, isNotNull);
        var responseWrapper = await misterFrodo.getMovieById(movie.id);
        expect(movie, equals(responseWrapper.docs.first));
        break; // only check the first one as there may be thousands
      }
    });

    test('Get Movie Quotes By Movie Id', () async {
      var movieList = await misterFrodo.getMovies();
      expect(movieList, isNotNull);
      for (var movie in movieList.docs) {
        expect(movie.id, isNotNull);
        var responseWrapper = await misterFrodo.getQuotesByMovieId(movie.id);
        expect(responseWrapper.docs, isNotNull);
        break; // only check the first one as there may be thousands
      }
    });

    test('Get Characters', () async {
      var characterList = await misterFrodo.getCharacters();
      expect(characterList, isNotNull);
      for (var character in characterList.docs) {
        expect(character.id, isNotNull);
        expect(character.name, isNotNull);
      }
    });

    test('Get Character By Id', () async {
      var characterList = await misterFrodo.getCharacters();
      expect(characterList, isNotNull);
      for (var character in characterList.docs) {
        expect(character.id, isNotNull);
        expect(character.name, isNotNull);
        var responseWrapper = await misterFrodo.getCharacterById(character.id);
        expect(character, equals(responseWrapper.docs.first));
        break; // only check the first one as there may be thousands
      }
    });

    test('Get Quotes By Character Id', () async {
      var frodo = "5cd99d4bde30eff6ebccfc15";
      var responseWrapper = await misterFrodo.getQuotesByCharacterId(frodo);
      expect(responseWrapper.docs, isNotNull);
      expect(responseWrapper.docs.first.dialog, "Gandalf?");
    });

    test('Get Quotes', () async {
      var quoteList = await misterFrodo.getQuotes();
      expect(quoteList, isNotNull);
      for (var quote in quoteList.docs) {
        expect(quote.id, isNotNull);
        expect(quote.dialog, isNotNull);
      }
    });

    test('Get Quote By Id', () async {
      var quoteList = await misterFrodo.getQuotes();
      expect(quoteList, isNotNull);
      for (var quote in quoteList.docs) {
        expect(quote.id, isNotNull);
        expect(quote.dialog, isNotNull);
        var responseWrapper = await misterFrodo.getQuoteById(quote.id);
        expect(quote, equals(responseWrapper.docs.first));
        break; // only check the first one as there may be thousands
      }
    });

    test('Get Chapters', () async {
      var chapterList = await misterFrodo.getChapters();
      expect(chapterList, isNotNull);
      for (var chapter in chapterList.docs) {
        expect(chapter.id, isNotNull);
        expect(chapter.chapterName, isNotNull);
        expect(chapter.bookId, isNotNull);
      }
    });

    test('Get Chapter By Id', () async {
      var chapterList = await misterFrodo.getChapters();
      expect(chapterList, isNotNull);
      for (var chapter in chapterList.docs) {
        expect(chapter.id, isNotNull);
        expect(chapter.chapterName, isNotNull);
        expect(chapter.bookId, isNotNull);
        var responseWrapper = await misterFrodo.getChapterById(chapter.id);
        expect(chapter, equals(responseWrapper.docs.first));
        break; // only check the first one as there may be thousands
      }
    });

    test('Paginate Characters', () async {
      var limit = 100;
      var characterList = await misterFrodo.getCharacters(limit: limit);
      expect(characterList, isNotNull);
      expect(characterList.docs.length, limit);

      var total = characterList.total;
      var totalPages = (total / limit).ceil();

      for (var pageNumber in range(0, totalPages)) {
        var offset = pageNumber.toInt() * limit;
        var characterList =
            await misterFrodo.getCharacters(limit: limit, offset: offset);
        expect(characterList, isNotNull);
        expect(characterList.docs.length, greaterThan(0));
      }
    });

    test('Sort Characters', () async {
      var characterList =
          await misterFrodo.getCharacters(sort: "name:asc", limit: 10);
      expect(characterList, isNotNull);
      expect(characterList.docs.length, greaterThan(0));
      expect(characterList.docs.first.name, startsWith("A"));
    });

    test('Filter Characters', () async {
      var characterList = await misterFrodo
          .getCharacters(filter: {"name": "Frodo Baggins"}, limit: 10);
      expect(characterList, isNotNull);
      expect(characterList.docs.length, 1);
      expect(characterList.docs.first.name, startsWith("Frodo"));
    });
  });
}
