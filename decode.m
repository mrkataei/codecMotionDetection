%kourosh Ahmadzadeh Ataei%
%6/1/2021%
%9512762583%
function quan = decode(outputStream)
quan =zeros(544,960,50);
idct = @(block_struct) idct2(block_struct.data);
for i=1:1:50
    quan(:,:, i) = izigsc(outputStream(i,:) , 544 ,960);
end
video = VideoWriter('multimedia.avi');
open(video);
for i = 1 :5:45
    frame = blockproc(quan(:,:, i) ,[8 8] ,idct);
    frame = rescale(frame);
    writeVideo(video, frame);
    for j= i+1:1:i+5
         fe = quan(:,:, j) + quan(:,:, j+1) ;
         ne = blockproc(fe ,[8 8] ,idct);
         ne = rescale(ne);
         writeVideo(video, ne);
    end
  
end
close(video);
end

