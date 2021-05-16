classdef point
    properties
        x; y;
    end 
    methods 
        function obj=point(limit)
            obj.x = rand() * limit;
            obj.y = rand() * limit;
        end
    end 
end
         