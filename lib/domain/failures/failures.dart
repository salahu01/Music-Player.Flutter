class AppErrors {
  AppErrors.unknownError({String message = 'Something went wrong ! Please try again later '});
  AppErrors.noInternet({required String message});
  AppErrors.clientError({required String message});
  AppErrors.sereverError({required String message});
}
