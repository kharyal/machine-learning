function [Y,prob] = guessNumber(X)

%identify Number function, uses auto generated number classifier
%function created by Chaitanya Kharyal using MATLAB

    % inputs:
    % X, a row vector of 784 elements describing an image;
    %
    % outputs:
    % Y, the output of the classifier
    % prob, confidence of the output
    
     imagesc(vec2mat(X,28,0)); colorbar; colormap gray;
     temp=imptraining(X);
     [n,I]=max(temp);
     Y=I-1;
     prob=temp(I);
     clear temp n I;
end