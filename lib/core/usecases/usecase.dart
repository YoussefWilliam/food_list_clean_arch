abstract class Usecase<Type, Params> {
  Future<Type> call();
}
