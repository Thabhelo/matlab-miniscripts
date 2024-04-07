function calculateDeterminant
    % Prompting the user for the size of the square matrix
    n = input('Enter the size of the square matrix: ');
    
    % Initializing an empty matrix of size n x n
    A = zeros(n, n);
    
    % Prompting the user to input the matrix, row by row
    disp(['Enter the elements of the ', num2str(n), 'x', num2str(n), ' matrix, one row at a time, separated by spaces or commas:']);
    for i = 1:n
        % The user inputs each row as a vector
        A(i, :) = input(['Row ', num2str(i), ': ']);
    end
    
    % Calculating the determinant of the matrix
    detA = det(A);
    
    % Displaying the matrix and its determinant
    disp('The matrix you entered is:');
    disp(A);
    disp(['The determinant of the matrix is: ', num2str(detA)]);
end
