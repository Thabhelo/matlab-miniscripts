function currencyConverter
    % Dynamic exchange rate for ZiG based on gold price
    USD_to_ZiG = 13.6; % 1 USD to Zimbabwean Dollars (ZiG)
    
    % Placeholder exchange rate - update this with the current rate
    USD_to_INR = 75; % Example: 1 USD to Indian Rupees
    
    while true
        disp('Currency Converter:');
        disp('1: USD to Zimbabwean Dollars (ZiG)');
        disp('2: Zimbabwean Dollars (ZiG) to USD');
        disp('3: USD to Indian Rupees (INR)');
        disp('4: Indian Rupees (INR) to USD');
        disp('5: Exit');
        choice = input('Select an option: ');
        
        switch choice
            case 1
                amount = input('Enter amount in USD: ');
                result = amount * USD_to_ZiG;
                fprintf('%.2f USD is equivalent to %.2f ZiG\n', amount, result);
            case 2
                amount = input('Enter amount in ZiG: ');
                result = amount / USD_to_ZiG;
                fprintf('%.2f ZiG is equivalent to %.2f USD\n', amount, result);
            case 3
                amount = input('Enter amount in USD: ');
                result = amount * USD_to_INR;
                fprintf('%.2f USD is equivalent to %.2f INR\n', amount, result);
            case 4
                amount = input('Enter amount in INR: ');
                result = amount / USD_to_INR;
                fprintf('%.2f INR is equivalent to %.2f USD\n', amount, result);
            case 5
                disp('Exiting...');
                break;
            otherwise
                disp('Invalid choice. Please try again.');
        end
    end
end
