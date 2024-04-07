% Basic Scientific Calculator in MATLAB
% This script provides a simple scientific calculator that performs basic arithmetic, exponential, logarithmic, and trigonometric operations.

function basic_scientific_calculator
    % Infinite loop to keep the calculator running until the user decides to exit
    while true
        % Displaying the main menu
        disp('=======================================');
        disp('Basic Scientific Calculator');
        disp('=======================================');
        disp('1: Addition (+)');
        disp('2: Subtraction (-)');
        disp('3: Multiplication (*)');
        disp('4: Division (/)');
        disp('5: Exponential (base^exponent)');
        disp('6: Natural Logarithm (ln)');
        disp('7: Logarithm base 10 (log)');
        disp('8: Sine (sin)');
        disp('9: Cosine (cos)');
        disp('10: Tangent (tan)');
        disp('11: Exit');
        choice = input('Please select an operation: ');
        
        % Handling the user's choice
        switch choice
            case 1
                performOperation('+');
            case 2
                performOperation('-');
            case 3
                performOperation('*');
            case 4
                performOperation('/');
            case 5
                performOperation('^');
            case 6
                performSingleInputOperation(@log);
            case 7
                performSingleInputOperation(@log10);
            case 8
                performSingleInputOperation(@sin);
            case 9
                performSingleInputOperation(@cos);
            case 10
                performSingleInputOperation(@tan);
            case 11
                % Exit the program
                disp('Exiting the calculator.');
                break;
            otherwise
                disp('Invalid choice. Please select a valid operation.');
        end
    end
end

function performOperation(operator)
    % This function performs basic arithmetic operations based on the operator provided
    a = input('Enter the first number: ');
    b = input('Enter the second number: ');
    % Constructing and evaluating the operation string
    operationStr = ['Result: ', num2str(a), ' ', operator, ' ', num2str(b), ' = '];
    result = eval([num2str(a), operator, num2str(b)]);
    disp([operationStr, num2str(result)]);
end

function performSingleInputOperation(func)
    % This function performs operations that require a single input, such as trigonometric functions
    x = input('Enter the number: ');
    result = func(x);
    disp(['Result: ', func2str(func), '(', num2str(x), ') = ', num2str(result)]);
end
