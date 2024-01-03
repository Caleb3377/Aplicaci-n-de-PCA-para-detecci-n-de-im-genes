function [porcentajeAciertos, Y_Pred] = clasificar(nuevaBase, media, prototipos, imagenes, Y, clases)
    % Inicializar el contador de aciertos
    contadorAciertos = 0;
    m = size(imagenes, 1)*size(imagenes, 2);
    n = 1;
    % Obtener el número de clases y el número de imágenes
    numClases = size(prototipos, 2);
    numImagenes = size(imagenes, 4);
    %Guardar las predicciones
    Y_Pred = zeros(length(Y), 1);
    %Recorrer las imágenes
    for i = 1:numImagenes
        % Paso 1: Transformar la imagen de matriz a vector
        imagen = reshape(imagenes(:,:,1,i), [m, n]);
        % Paso 2: Proyectar la imagen en la nueva base
        W = nuevaBase' * (imagen - media);
        % Paso 3: Calcular la distancia entre el vector w y los prototipos
        distancias = zeros(1, numClases);
        for j = 1:numClases
            %distancias(j) = norm(W - prototipos(:, j));
            distancias(j) = sum((W - prototipos(:, j)).^2);
        end
        % Paso 4: Encontrar el mínimo de las distancias y obtener la clase
        [~, clasePredicha] = min(distancias);
        %fprintf("%d", clasePredicha);
        % Comprobar si la predicción es correcta
        Y_Pred(i) = clases(clasePredicha);
        if Y_Pred(i) == Y(i)
            contadorAciertos = contadorAciertos + 1;
        else
            fprintf('\nImagen %d = {Clase real: %d, Clase predicha: %d}\n', i, Y(i), clases(clasePredicha));
        end
    end
    % Calcular el porcentaje de aciertos
    porcentajeAciertos = (contadorAciertos / numImagenes) * 100;
end