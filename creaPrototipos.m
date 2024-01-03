function prototipos = creaPrototipos(A, Y, nuevaBase)
    % Vectores proyectados de cada imagen
    W = nuevaBase'*A;
    % Prototipos de cada clase
    clases = unique(Y);
    prototipos = zeros(size(A, 2), size(clases, 1));
    for j = 1:size(clases, 1)
        prototipos(:, j) = mean(W(:,Y == clases(j)), 2);
    end 
end