import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pixelfield_test_project/blocs/collection_bloc/collection_bloc.dart';
import 'package:pixelfield_test_project/blocs/collection_bloc/data_provider.dart';
import 'package:pixelfield_test_project/configs/configs.dart';
import 'package:pixelfield_test_project/configs/theme/_text_theme.dart';
import 'package:pixelfield_test_project/router/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppMedia.init(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<CollectionBloc>(
          create: (context) => CollectionBloc.withDefaultRepo(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: 'Crewmeister App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: AppTheme.kPrimaryColor,
              ),
              textTheme: customTextTheme,
              primaryColor: AppTheme.kPrimaryColor,
            ),
            routerDelegate: AppRouter.router.routerDelegate,
            routeInformationParser: AppRouter.router.routeInformationParser,
            routeInformationProvider: AppRouter.router.routeInformationProvider,
          );
        },
      ),
    );
  }
}
