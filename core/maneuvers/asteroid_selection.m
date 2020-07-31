function [dV_Shoemaker, data, textdata] = asteroid_selection(data, textdata, input)

dV_Shoemaker = zeros(size(data,1), 1);
deleterow = false(size(data,1), 1);

for i = 1:size(data,1)
    dV_Shoemaker(i) = dV_shoemaker_Mars(data(i,1), data(i,2), data(i,3), input.LMO);   
    if dV_Shoemaker(i) > input.dV_max
        deleterow(i) = true;
    end
end
 
data(deleterow,:) = [];
textdata(deleterow,:) = [];

end