function main1(XT, YT, XTe, YTe, distribution)
    classes = [1, 7; 2, 7; 4, 9];
    accuracys = zeros(size(classes, 1));
    fprintf("Distribucion Datos => [NumElemTrain = %d, NumElemTest = %d ]\n", distribution(1), distribution(2));
    fprintf('++++++++++++++++++++++++++++++++++++++++++++\n');
    for i = 1:size(classes, 1)
        fprintf('Las clases = ');
        for j = 1:length(classes(i,:))
            fprintf('%d ', classes(i, j));
        end
        accuracys(i) = main(creaDatos(distribution, classes(i,:), XT, YT, XTe, YTe));
        fprintf('-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+\n');
    end    
end