clc 
clear all

path2csv = "filtered_seizures18channels.csv"
cdata = csvread(path2csv,1,0);
noSec= 10;  %10 seconds was found to be the ideal
noRows = noSec*256;
l = length(cdata)
i = 1;
rowEnd = noRows;
count = 1;
columns = [1:19];
while i < l 
    %creating figures
    figure(1)
    [~,eLag,eDim] = phaseSpaceReconstruction(cdata(i:rowEnd,columns))
    eDim = 2;
    phaseSpaceReconstruction(cdata(i:rowEnd,1),eLag,eDim);
    filename = "results/seizures_10sec/"+count+".fig"
    savefig(filename)
    
    %save rps data
    xr = phaseSpaceReconstruction(cdata(i:rowEnd,columns),eLag,eDim);
    csvfile = "results/seizures_10sec/csv/"+count+ ".csv"
    csvwrite(csvfile,xr)

    %incrememnt counters
    count = count+1
    i = rowEnd+1
    if rowEnd + noRows< l
        rowEnd = rowEnd + noRows
    else
        rowEnd = l
    end

end


