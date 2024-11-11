enum RouteValue {
  splash(
    path: '/',
  ),
  chellenge(
    path: '/chellenge',
  ),
  tips(
    path: '/tips',
  ),
  home(
    path: '/home',
  ),
  goals(
    path: '/goals',
  ),
  transaction(
    path: '/transaction',
  ),
  unknown(
    path: '',
  );

  final String path;
  const RouteValue({
    required this.path,
  });
}
