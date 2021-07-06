%kourosh Ahmadzadeh Ataei%
%6/1/2021%
%9512762583%
function outputSteam = encode(path)
DCT=DCTFrames(path);
%mask =zeros(540,960);
quan = @(block_struct) Quantize(block_struct.data);
DCTsAllFrames=zeros(544,960,50);
for i=1:1:50
    DCTsAllFrames(:,:,i)=blockproc(DCT(:,:,i) ,[8 8] ,quan,'padpartialblocks',true);
end
outputSteam=zeros(50,522240);
for i=1:1:50
    outputSteam(i,:)=ZigZagscan(DCTsAllFrames(:,:,i));
end
end

