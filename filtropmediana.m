%teste filtro não linear por mediana
f=imread('Fig0335(a)(ckt_board_saltpep_prob_pt05).tif');
fl=padarray(f,[2,2],'symmetric');
[M,N]=size(f);
g=f;

for i=1:1:M
    for j=1:1:N
        
        %filter
        filt=zeros(1,9);
        count=0;
        for x=-1:1:1
            for y=-1:1:1
                count=count+1;
                filt(count)=fl(i+2+x,j+2+y);
            end
        end
        filt=sort(filt);
        g(i,j)=filt(5);
    end
end
imshowpair(f,g,'montage')              
