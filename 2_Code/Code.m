X=xlsread('X.xlsx');	% read Features from X matrix (Main Data)
Y=xlsread('Y.xlsx');	% read Activity from Y matrix 




[~,~,Xname] = xlsread('X.xlsx');	% read the name of Features from X matrix
Xname=Xname(1,:);	% select just first row (just names of features)





XX=zeros(size(X));	% normalization data between -100 and 100
a=-100;
b=100;
for i=1:size(X,2)
    XX(:,i)=((( (b-a)*(X(:,i) - min(X(:,i)) ) )) / (max(X(:,i))-min(X(:,i))))+(a);
end



XXX=[];	% first method of feature selection
XXXname=[];
for j=1:size(XX,2)
    m=unique(XX(:,j));
    if(size(m,1)>200)
        XXX=cat(2,XXX,XX(:,j));
        XXXname=cat(2,XXXname,Xname(:,j));
    else
        fprintf('Removing column %d: %s\n', j, Xname{j});
    end
end




R=corrcoef(XXX);	% second method of feature selection
x1=ones(1,size(R,2));
for i=1:size(R,2)
    for j=i:size(R,2)
        if( i~=j && R(i,j)>0.9 )
            x1(1,j)=0;
              fprintf('Removing column %d: %s (highly correlated with column %d: %s, corr = %.2f)\n', ...
                    j, XXXname{j}, i, XXXname{i}, R(i,j));
        end
   end
end


newXname=[];
newXX=[];
for j=1:size(x1,2)
    if(x1(1,j)==1)
        newXname=cat(2,newXname,XXXname(:,j));
        newXX=cat(2,newXX,XXX(:,j));
    end
end




%stepwise(newXX,Y);	% third method of feature selection (stepwise)


newnewX=newXX(:,[15,43,45,27,12,24,22,17]);
newnewXname=newXname(:,[15,43,45,27,12,24,22,17]);

RnewnewX=corrcoef(newnewX);

Xlast=[ones(size(newnewX,1),1) newnewX];
B=(inv(Xlast'*Xlast))*(Xlast'*Y);


Yhad=Xlast*B;	% validation
R=(corrcoef(Y,Yhad));
R2=R(1,2).^2;



%{
RMSE = sqrt(mean((Y - Yhad).^2));
NRMSE_range = RMSE / (max(Y) - min(Y));
NRMSE_mean = RMSE / mean(abs(Y));


SS_res = sum((Y - Yhad).^2);          % Residual sum of squares
SS_tot = sum((Y - mean(Y)).^2);       % Total sum of squares
R2 = 1 - (SS_res / SS_tot);

RelativeError = mean(abs(Y - Yhad) ./ (max(Y) - min(Y)));


%}

