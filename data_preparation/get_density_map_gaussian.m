function im_density = get_density_map_gaussian(im,points)

im_density = zeros(size(im)); 
[h,w] = size(im_density);

if(length(points)==0)
    return;
end

if(length(points(:,1))==1)
    x1 = max(1,min(w,round(points(1,1))));
    y1 = max(1,min(h,round(points(1,2))));
    im_density(y1,x1) = 255;
    return;
end

for j = 1:length(points) 	
    sigma_ad=4;
    x = min(w,max(1,abs(int32(floor(points(j,1)))))); 
    y = min(h,max(1,abs(int32(floor(points(j,2))))));
    
    mean_dis = mean_distance_calculation([x,y], points, h, w);

    % adjust size of Gaussian kernel and sigma
    
    % f_ad = uint8(f_sz+y*14/768);
    
    f_ad = ceil(0.2*mean_dis);
    if (f_ad > 19)
        f_ad =19;
    end
    if (f_ad < 7)
        f_ad =7;
    end
    
    if(mod(f_ad,2)==0)
        f_ad=f_ad+1;
    end
    
    f_ad = double(f_ad);
    
    H= fspecial('Gaussian',[f_ad, f_ad],sigma_ad);
     
    if(x > w || y > h)
        continue;
    end
    x1 = x - int32(floor(f_ad/2)); y1 = y - int32(floor(f_ad/2));
    x2 = x + int32(floor(f_ad/2)); y2 = y + int32(floor(f_ad/2));
    dfx1 = 0; dfy1 = 0; dfx2 = 0; dfy2 = 0;
    change_H = false;
    if(x1 < 1)
        dfx1 = abs(x1)+1;
        x1 = 1;
        change_H = true;
    end
    if(y1 < 1)
        dfy1 = abs(y1)+1;
        y1 = 1;
        change_H = true;
    end
    if(x2 > w)
        dfx2 = x2 - w;
        x2 = w;
        change_H = true;
    end
    if(y2 > h)
        dfy2 = y2 - h;
        y2 = h;
        change_H = true;
    end
    x1h = 1+dfx1; y1h = 1+dfy1; x2h = f_ad - dfx2; y2h = f_ad - dfy2;
    if (change_H == true)
        H =  fspecial('Gaussian',[double(y2h-y1h+1), double(x2h-x1h+1)],sigma_ad);
    end
    im_density(y1:y2,x1:x2) = im_density(y1:y2,x1:x2) +  H;
     
end

end