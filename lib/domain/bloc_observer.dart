import 'package:bloc/bloc.dart';
import 'package:converter/presentation/uikit/snack_bar.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@injectable
class AppBlocObserver extends BlocObserver {
  const AppBlocObserver(this._logger);

  final Logger _logger;

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _logger.e(error, stackTrace: stackTrace);
    showErrorSnackBar(error);
    super.onError(bloc, error, stackTrace);
  }
}
