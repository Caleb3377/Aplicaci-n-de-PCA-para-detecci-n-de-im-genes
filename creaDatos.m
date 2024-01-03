
function datos = creaDatos(dimDatos, classes, XTrain, YTrain, XTest, YTest)
    samples_per_class_train = int32((fix(dimDatos(1)/length(classes))));
    [XTrain, YTrain] = get_n_samples_per_class(XTrain, YTrain, samples_per_class_train);
    samples_per_class_test = int32((fix(dimDatos(2)/length(classes))));
    [XTest, YTest] = get_n_samples_per_class(XTest, YTest, samples_per_class_test);

    YTrain = grp2idx(YTrain) - 1;
    YTest = grp2idx(YTest) - 1;
    %%fprintf("%s %s", class(YTest), class(YTrain));

    [X_Train, Y_Train] = filter_classes(XTrain, YTrain, classes);
    [X_Test, Y_Test] = filter_classes(XTest, YTest, classes);

    [Y_Train, args_train] = sort(Y_Train);
    [Y_Test, args_test] = sort(Y_Test);
    X_Train = X_Train(:,:,:,args_train);
    X_Test = X_Test(:,:,:,args_test);
    datos = struct('XTrain', X_Train, 'YTrain', Y_Train, 'XTest', X_Test, 'YTest', Y_Test, 'Classes', classes);
end
