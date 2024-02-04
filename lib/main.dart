import 'provider/navigation_provider.dart';
import 'provider/order_provider.dart';
import 'screens/body.dart';
import 'package:coffe_shop_ui_challenge/utils/colors.dart';
import 'package:coffe_shop_ui_challenge/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

void initConstant() {
  kPadding = 16.w;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
        ChangeNotifierProvider(create: (_) => OrderProvider()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(393, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) => MaterialApp(
          title: 'Coffee shop challenge',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              color: const Color(0xffF9F9F9),
              titleTextStyle: TextStyle(
                fontFamily: 'Sora',
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            scaffoldBackgroundColor: scaffoldColor,
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xffC67C4E),
            ),
            useMaterial3: true,
            textTheme: _textTheme(),
          ),
          home: const Body(),
        ),
      ),
    );
  }

  TextTheme _textTheme() {
    return TextTheme(
      bodySmall: TextStyle(
        fontFamily: 'Sora',
        color: Colors.black,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Sora',
        color: Colors.black,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Sora',
        color: Colors.black87,
        fontSize: 14.sp,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Sora',
        color: Colors.white,
        fontSize: 32.sp,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: const TextStyle(
        fontFamily: 'Sora',
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: const TextStyle(
        fontFamily: 'Sora',
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      displayLarge: const TextStyle(
        fontFamily: 'Sora',
        color: Colors.black,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Sora',
        color: textColor2,
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Sora',
        color: textColor1,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}