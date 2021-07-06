%kourosh Ahmadzadeh Ataei%
%6/1/2021%
%9512762583%
function quantizeDCT2d= Quantize(DCTsAllFrames)
    mask = [1   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0   
            0   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0];
    quantizeDCT2d=DCTsAllFrames .* mask;
end