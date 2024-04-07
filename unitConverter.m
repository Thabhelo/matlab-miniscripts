function unitConverter
    while true
        disp('1: Temperature Conversion (Celsius <-> Fahrenheit)');
        disp('2: Length Conversion (Meters <-> Feet)');
        disp('3: Weight Conversion (Kilograms <-> Pounds)');
        disp('4: Exit');
        choice = input('Select an option: ');
        
        switch choice
            case 1
                temperatureConversion();
            case 2
                lengthConversion();
            case 3
                weightConversion();
            case 4
                disp('Exiting...');
                break;
            otherwise
                disp('Invalid choice. Please try again.');
        end
    end
end

function temperatureConversion
    disp('1: Celsius to Fahrenheit');
    disp('2: Fahrenheit to Celsius');
    choice = input('Select an option: ');
    temp = input('Enter the temperature: ');
    
    if choice == 1
        % Celsius to Fahrenheit
        result = (temp * 9/5) + 32;
        disp([num2str(temp), ' Celsius is ', num2str(result), ' Fahrenheit']);
    else
        % Fahrenheit to Celsius
        result = (temp - 32) * 5/9;
        disp([num2str(temp), ' Fahrenheit is ', num2str(result), ' Celsius']);
    end
end

function lengthConversion
    disp('1: Meters to Feet');
    disp('2: Feet to Meters');
    choice = input('Select an option: ');
    length = input('Enter the length: ');
    
    if choice == 1
        % Meters to Feet
        result = length * 3.28084;
        disp([num2str(length), ' Meters is ', num2str(result), ' Feet']);
    else
        % Feet to Meters
        result = length / 3.28084;
        disp([num2str(length), ' Feet is ', num2str(result), ' Meters']);
    end
end

function weightConversion
    disp('1: Kilograms to Pounds');
    disp('2: Pounds to Kilograms');
    choice = input('Select an option: ');
    weight = input('Enter the weight: ');
    
    if choice == 1
        % Kilograms to Pounds
        result = weight * 2.20462;
        disp([num2str(weight), ' Kilograms is ', num2str(result), ' Pounds']);
    else
        % Pounds to Kilograms
        result = weight / 2.20462;
        disp([num2str(weight), ' Pounds is ', num2str(result), ' Kilograms']);
    end
end
