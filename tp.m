function tp
  A = generador_matriz();
  b = generador_vector();
  x_directo = A\b;
  plotear(x_directo, "Directo");
  [x_jacobi, k_jacobi] = jacobi(A,b);
  plotear(x_jacobi, "Jacobi");
  [x_gauss_seidel, k_gauss_seidel] = gauss_seidel(A,b);
  plotear(x_gauss_seidel, "Gauss Saidel");

end  