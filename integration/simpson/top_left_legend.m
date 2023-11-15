% Define the function
x = logspace(-2, 2, 100); % Create a range of logarithmically spaced x values
y1 = sin(x);
y2 = cos(x);

% Semilogx plot of the functions
semilogx(x, y1, 'b', 'LineWidth', 2, 'DisplayName', 'sin(x)');

hold on;
semilogx(x, y2, 'r', 'LineWidth', 2, 'DisplayName', 'cos(x)');

% Add legend to the top-left corner
legend('Location', 'northwest');

% Add labels and title
xlabel('log(x)');
ylabel('y');
title('Semilogx Plot of sin(x) and cos(x)');

% Add a grid for better visualization (optional)
grid on;

% Hold off to stop adding to the current plot
hold off;
