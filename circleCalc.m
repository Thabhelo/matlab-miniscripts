% This file calculates either the area or the circumference of a circle
% given the radius

function main
    i = 0;
    while i < 4
        i = i + 1;
        disp("Please select one option from the menu")
        choice = menu("Calculate","Area","Circum","Exit");
        switch choice
            case 0
                disp("Error")
            case 1
                rad = input("Please Enter the radius: \n");
                getarea(rad)
            case 2
                rad = input("Please Enter the radius: \n");
                getcircum(rad)
            case 3 
                break; % Exit the loop
        end
    end
end

function getarea(radius)
    area = pi * radius^2;
    disp(['The area of the circle is: ', num2str(area)])
end

function getcircum(radius)
    circum = 2 * pi * radius;
    disp(['The circumference of the circle is: ', num2str(circum)])
end
