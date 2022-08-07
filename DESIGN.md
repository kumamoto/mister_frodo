# Mister Frodo (Design)

- SDK is pure dart so it can be used either by flutter app or on the server side in dart
- SDK is intended to be used as a singleton
- Uses [Dio](https://pub.dev/packages/dio) HTTP Client internally and leverages
  existing [Dio interceptors](https://pub.dev/packages/dio_cache_interceptor) such
  as https://pub.dev/packages/dio_cache_interceptor_hive_store (set `cache: false` to disable)
- Uses a pretty print HTTP request debugger to inspect requests in the logs if needed (set `debug: true`)
- The instance of Dio is exposed by the `MisterFrodo` class to potentially add additional (Dio
  interceptors)[https://pub.dev/packages?q=dio+interceptor]
- Uses Retrofit to quickly generate boilerplate code internally (https://pub.dev/packages/retrofit)
