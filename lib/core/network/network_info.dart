import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class NetworkInfo {
  Future<bool> get checkInternetConnection;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  final Connectivity _connectivity;
  final InternetConnection _connectionChecker;

  NetworkInfoImpl(
      {required Connectivity connectivity,
      required InternetConnection connectionChecker})
      : _connectivity = connectivity,
        _connectionChecker = connectionChecker;

  @override
  Future<bool> get checkInternetConnection async {
    final result = await _connectivity.checkConnectivity();

    if (result == ConnectivityResult.none) {
      return false;
    }

    return await _connectionChecker.hasInternetAccess;
  }
}
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

// Future<bool> checkInternetConnection() async {
//   final result = await Connectivity().checkConnectivity();

//   if (result == ConnectivityResult.none) {
//     return false;
//   }

//   return await InternetConnection().hasInternetAccess;
// }
