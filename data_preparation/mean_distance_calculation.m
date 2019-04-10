function mean_dis = mean_distance_calculation(point, all_points, h, w)

    len_all_points = size(all_points, 1);
    
    dis_matrix =[len_all_points];
    
    for i=1:len_all_points
        
        x = min(w,max(1,abs(int32(floor(all_points(i,1)))))); 
        y = min(h,max(1,abs(int32(floor(all_points(i,2))))));
       
        dis_matrix(i) = abs(point(1, 1) - x) + abs(point(1, 2) - y);
               
    end

    dis_matrix = sort(dis_matrix);
    
    mean_dis = (dis_matrix(2) + dis_matrix(3) + dis_matrix(4) + dis_matrix(5))/4;
    
end