abstract interface class BaseBiMapper<From, To> {
  To map(From param);

  From reverseMap(To param);
}
