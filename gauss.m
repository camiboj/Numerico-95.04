function resultado = gauss()
  matriz = generador_matriz();
  vector = generador_vector();
  resultado = matriz\vector;
end