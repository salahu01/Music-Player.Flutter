class Environments {
  static const production = 'prod';
  static const qas = 'QAS';
  static const dev = 'dev';
  static const local = 'local';
}

class ConfigEnvironments {
  static const String _currentEnvironments = Environments.local;
  static final List<Map<String, String>> _availableEnvironments = [
    {
      'env': Environments.local,
      'url': 'http://localhost:8080/api/',
    },
    {
      'env': Environments.dev,
      'url': '',
    },
    {
      'env': Environments.qas,
      'url': '',
    },
    {
      'env': Environments.production,
      'url': '',
    },
  ];

  static Map<String, String> getEnvironments() {
    return _availableEnvironments.firstWhere(
      (d) => d['env'] == _currentEnvironments,
    );
  }
}
