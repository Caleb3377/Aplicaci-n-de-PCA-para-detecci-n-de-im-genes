function [media, A, nuevaBase] = aprendeBase(X)
    %crear R con X reshape de las dimensiones de pixeles x numeroImagenes
    R = reshape(X(:,:,1,:), [size(X, 1)*size(X, 2), size(X,4)]);
    %normalizar los datos si no lo estaban
    if ~all((1 >= R) & (0 <= R))
        R = normalize(R);
    end 
    %Calcular media por filas de R
    media = mean(R, 2);
    % Crear la matriz A
    A = zeros(size(R));
    % Restar la media por filas a cada columna de R
    for j = 1:size(R, 2)
      A(:, j) = R(:, j) - media;
    end
    %Calcular matriz de correlacion
    C = A'*A;
    %Obtener vectores y valores propios
    [v, lambdaVar] = eig(C);
    %Obtener una nueva Base
    nuevaBase = zeros(size(A));
    for i = 1:size(A, 2)
      nuevaBase(:, i) = real((1/(sqrt(lambdaVar(i,i)))))*A*v(:, i);
    end 
end