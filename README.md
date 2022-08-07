# Mister Frodo

![](./samwise-gamgee.webp)

Another pure dart lib to access the https://the-one-api.dev/v2 APIs.

This lib is named after the way Samwise Gamgee addresses Frodo
Baggins: https://scifi.stackexchange.com/questions/11113/why-does-samwise-gamgee-call-frodo-baggins-mr-frodo

## Features

- Mirrors API exposed by
- Implements most Sorting and Filtering functionalities of https://the-one-api.dev/v2
  see: [The One API Docs](https://the-one-api.dev/documentation)

## Install

Add this to `pubspec.yaml`

```
dependencies:
  mister_frodo: <latest_version>
```

In your library add the following import:

```
import 'package:mister_frodo/mister_frodo.dart';
```

## Usage

```dart

var misterFrodo = MisterFrodo(apiKey: "<YourApiKey>");
ResponseWrapper<Book> responseWrapper = await misterFrodo.getBooks();

print(jsonEncode(responseWrapper));
```

The `ResponseWrapper` object lets you access the following variables (if available)

```dart
final List<T> docs;
final int total;
final int limit;
final int offset;
final int? page;
final int? pages;
```

The SDK supports pagination, sorting, filtering throughout the API using named parameters.

### Pagination

Using `limit` and `offset`.

example:

```dart

ResponseWrapper<Character> responseWrapper = await misterFrodo.getCharacters(limit: 10, offset: 10);
List<Character> characters = response.docs;
```

### Sorting

Results can be sorted according to any attribute exposed by the API.

The sort can be either ascending (`asc`) or descending (`desc`):

```dart
await misterFrodo.getCharacters(sort: "name:asc");
```

### Filtering

You can filter out results only based on matching `key=value`:

```dart
await misterFrodo.getCharacters(filter: {"name": "Frodo Baggins"});
```

For more examples see the `example/` or `test/` folder in this repository

## Additional information

There are api rate limits in place on the API, please check details on https://the-one-api.dev/ and the complete API
docs here: https://the-one-api.dev/documentation

## Design

See [DESIGN.md](DESIGN.md)

## TODO

- Improve filtering capabilities by adding more comparison operators
- Add more unit tests to pagination, filtering and sorting combinations use-cases
- Add Retry Dio Interceptor
- Add a Rate Limiter to prevent 429 errors when accessing the API