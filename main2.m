function main2(XT, YT, XTe, YTe, distribution)
    classes = unique(cast(YTe, 'double'))-1;
    fprintf('\nPara las clases = ');
    for i = 1:length(classes)
        fprintf('%d ', classes(i));
    end
    fprintf('\n++++++++++++++++++++++++++++++++++++++++++++\n');
    for j = 1:size(distribution, 1)
        fprintf("Distribucion Datos => [NumElemTrain = %d, NumElemTest = %d ]\n", distribution(j, 1), distribution(j, 2));
        main(creaDatos(distribution(j, :), classes, XT, YT, XTe, YTe));
        fprintf('-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+\n');
    end    
end