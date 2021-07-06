%kourosh Ahmadzadeh Ataei%
%6/1/2021%
%9512762583%
function DCTsAllFrames = DCTFrames(path)
dct = @(block_struct) dct2(block_struct.data);

vid=VideoReader(path);
n = vid.NumFrames;
DCTsAllFrames=zeros(540,960,n);

for i = 1:5:n-5
    frames = read(vid,i);
    I = im2gray(frames);
    J = blockproc(I ,[8 8] ,dct);
    %J = dct2(I ,[540 540]);
    DCTsAllFrames(:,:, i) = J;
    for j= i+1:1:i+5
         frame =  mov(read(vid,j),read(vid,j+1));
         gray = im2gray(frame);
         dctgray = blockproc(gray ,[8 8] ,dct);
         DCTsAllFrames(:,:, i) = dctgray;
    end
end 
end
