function accuracy = main(datos)
    [media, A, nuevaBase] = aprendeBase(datos.XTrain);
    prototipos = creaPrototipos(A, datos.YTrain, nuevaBase);
    [accuracy, y_pred] = clasificar(nuevaBase, media, prototipos, datos.XTest, datos.YTest, datos.Classes);
    fprintf("\nEl accuracy es = %d \n", accuracy);
    
    
    
    y_real = int32(datos.YTest);
    y_pred = int32(y_pred);
    % Crear un gráfico de dispersión para clase_real
    figure;
    scatter(1:length(y_real), y_real, 'o', 'MarkerFaceColor', 'b', 'DisplayName', 'Clase Real');
    hold on;
    scatter(1:length(y_pred), y_pred, 's', 'MarkerFaceColor', 'r', 'DisplayName', 'Clase Predicha');
    title(sprintf('Clasificador con %0.2f%% de precisión', accuracy));
    legend('show');
    xlabel('Imagen');
    ylabel('Clase');
    xlim([1, length(y_real)]);
    ylim([min(datos.Classes), max(datos.Classes)+1]);
    set(gca, 'YTick', datos.Classes);
end