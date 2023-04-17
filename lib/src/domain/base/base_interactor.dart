abstract interface class BaseInteractor<R, P> {
  Future<R> call(P param);
}
