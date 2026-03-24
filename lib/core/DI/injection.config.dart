// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:device_info_plus/device_info_plus.dart' as _i6;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i5;
import 'package:uuid/uuid.dart' as _i7;

import '../../features/login/data/datasources/login_remot_data_sourc.dart'
    as _i11;
import '../../features/login/data/repository/login_repository.dart' as _i13;
import '../../features/login/domain/repository/login_repository.dart' as _i12;
import '../../features/login/domain/usecase/login_usecase.dart' as _i14;
import '../../features/login/presentation/cubit/login_cubit.dart' as _i15;
import '../network/api_service.dart' as _i10;
import '../network/network_info.dart' as _i9;
import '../services/device_info_service.dart' as _i8;
import 'core_module%20.dart' as _i16;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final coreModule = _$CoreModule();
    gh.lazySingleton<_i3.Dio>(() => coreModule.dio);
    gh.lazySingleton<_i4.Connectivity>(() => coreModule.connectivity);
    gh.lazySingleton<_i5.InternetConnection>(
        () => coreModule.internetConnection);
    gh.lazySingleton<_i6.DeviceInfoPlugin>(() => coreModule.deviceInfo);
    gh.lazySingleton<_i7.Uuid>(() => coreModule.uuid);
    gh.lazySingleton<_i8.DeviceInfoService>(() => _i8.DeviceInfoService(
          uuid: gh<_i7.Uuid>(),
          deviceInfo: gh<_i6.DeviceInfoPlugin>(),
        ));
    gh.lazySingleton<_i9.NetworkInfo>(() => _i9.NetworkInfoImpl(
          connectivity: gh<_i4.Connectivity>(),
          connectionChecker: gh<_i5.InternetConnection>(),
        ));
    gh.lazySingleton<_i10.ApiService>(() => _i10.DioService(
          dio: gh<_i3.Dio>(),
          networkInfo: gh<_i9.NetworkInfo>(),
        ));
    gh.lazySingleton<_i11.LoginRemotDataSource>(
        () => _i11.LoginRemotDataSource(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i12.ILoginRepository>(() => _i13.LoginRepositoryImp(
        loginRemotDataSource: gh<_i11.LoginRemotDataSource>()));
    gh.lazySingleton<_i14.LoginUseCase>(() => _i14.LoginUseCase(
          loginRepository: gh<_i12.ILoginRepository>(),
          deviceInfoHelper: gh<_i8.DeviceInfoService>(),
        ));
    gh.factory<_i15.LoginCubit>(
        () => _i15.LoginCubit(loginUseCase: gh<_i14.LoginUseCase>()));
    return this;
  }
}

class _$CoreModule extends _i16.CoreModule {}
