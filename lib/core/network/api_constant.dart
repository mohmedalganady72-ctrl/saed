class ApiConstants {
  static const String apiBaseUrl = "ADD_YOUR_BASE_URL_HERE";

  // Authentication Endpoints

  static const String login = "auth/login";
  static const String signup = "auth/register";
  static const String refreshToken = "auth/refresh";

  // User Endpoints

  static const String userProfile = "me";
  static const String userNotifications = "me/notifications";
  static const String readAllNotifications = "me/notifications/read-all";

  // static String getUserNotificationsByLimit({required int id}) =>
  //     "me/notifications?limit=$id";

  // static String markNotificationAsRead({required int id}) =>
  //     "me/notifications/$id/read";

  //catagory
  static const String allCategories = "categories";
  // listing

  static const String allListings = "listings";
  static const String userListing = "listings/mine";
  // static String getListing({required int id}) => "/listings/$id";
  //Request

  static const String order = "requests";
  static const String orderIncome = "requests/incoming";
  static const String orderOut = "requests/outgoing";
  // Chate
  static const String message = "messages";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
