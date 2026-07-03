function [cosine_matrix] = z_rotation(angle)
    angle=deg2rad(angle);
    cosine_matrix=[cos(angle) -sin(angle) 0;
                   sin(angle)  cos(angle) 0;
                            0           0 1];
end