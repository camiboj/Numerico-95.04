function tp
  A = generador_matriz();
  b = generador_vector();
  x_directo = A\b;
  [x_jacobi, k_jacobi] = jacobi(A,b);
  [x_gauss_seidel, k_gauss_seidel] = gauss_seidel(A,b);

end  