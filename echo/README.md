# Entites and Usecases

## Dependencies

- [equatable](https://pub.dev/packages/equatable) - For value object equality
- [dartz](https://pub.dev/packages/dartz) - For functional programming
- [mockito](https://pub.dev/packages/mockito) - For mocking while testing

## Dev Dependencies

- [build_runner](https://pub.dev/packages/build_runner) - For code generation (for generating mocks)

```bash
flutter pub add equatable
flutter pub add dartz
flutter pub add mockito
flutter pub add dev:build_runner
```

## Testing

When writing test we want to

- make sure that we are testing the right thing.
- test the behavior of the class and not the implementation.
- test the public API of the class and not the private methods.
- test the class in different scenarios.
- test the class in isolation and not the dependencies.

For the last point, we can use mocks to isolate the class from its dependencies.

- We can use the `mockito` package to create mocks.
- We can use the `build_runner` package to generate mocks.

In this repo, we are testing usecase which depends on repository. We will create a mock repository and inject it into the usecase.

Refer to [this](test/features/articles/domain/usecases/get_all_articles_test.dart) test file for the example.

[This](test/features/articles/domain/usecases/get_all_articles_test.mocks.dart) file is generated after writing the test file and running the command.

```bash
dart run build_runner build
```

It contains the mock repository. It is not meant to be edited by hand.
