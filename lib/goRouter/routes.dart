import 'package:destino_quisqueya_front/goRouter/routerScreentest.dart';
import 'package:go_router/go_router.dart';

final GoRouter _router = GoRouter(
  initialLocation: "/home",
  routes: <RouteBase>[
    GoRoute(
      path: "/home",
      name: "home",
      builder: (context, state) => const Routerscreentest(),
    ),

    GoRoute(
      path: "/anotherPage",
      name: "anotherPage",
      builder: (context, state) {
        // final User user = state.extra as User;  This is how to pass data between routes
        return const Routerscreentest();
      },
    ),
  ],
);



//Added redacted to test it 

/* Example use of another route:

Configurar rutas adicionales en el archivo routes.dart

GoRoute(
      path: "/anotherPage",
      name: "/anotherPage",
      builder: (context, state) {
        // final User user = state.extra as User;  This is how to pass data between routes
        return const Routerscreentest();
      },
)


Pasando un solo parametro en la ruta:
GoRoute(
      path: "/anotherPage",
      name: "/anotherPage/:userId",
      builder: (context, state) {
        final String userId = state.pathParameters['userId']!;
        return const Routerscreentest(userId: userId);
      },
)

Navegar a otra página desde cualquier parte de la aplicación:
context.goNamed("/anotherPage");

pasar objetos entre rutas:
context.goNamed("/anotherPage", extra: user);

pasar parametros entre rutas:
context.goNamed("/anotherPage", pathParameters: {'userId': '1234567890'});



*/