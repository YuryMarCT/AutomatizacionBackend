function fn() {
  var env = karate.env; // get java system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev'; // default
  }

  // Mejora la legibilidad de los logs en la consola y reporte HTML
  karate.configure('logPrettyRequest', true);
  karate.configure('logPrettyResponse', true);

  // No perder tiempo esperando conexiones
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);

  return {}; // Retorna un objeto vacío si no hay configuraciones necesarias
}