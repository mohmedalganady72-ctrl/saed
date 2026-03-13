class ApiEndpoint {
  static const String apiBaseUrl = "Your-site.com";

  // Authentication Endpoints

  static const String login = "${apiBaseUrl}auth/login";
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
