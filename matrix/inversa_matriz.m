function matriz_inversa = inversa_matriz(A)
    [filas, columnas] = size(A);

    % Crear una matriz extendida [A | I], donde I es la matriz identidad
    I = eye(filas);
    matriz_extendida = [A I];

    % Aplicar eliminación gaussiana para obtener la matriz reducida
    for i = 1:filas
        % Dividir la fila i por el elemento A(i, i) para tener un 1 en la diagonal
        matriz_extendida(i, :) = matriz_extendida(i, :) / matriz_extendida(i, i);

        % Eliminar otros elementos en la columna i para hacer ceros debajo del 1
        for j = 1:filas

            if i != j
                factor = matriz_extendida(j, i);
                matriz_extendida(j, :) = matriz_extendida(j, :) - factor * matriz_extendida(i, :);
            end

        end

    end

    % Extraer la matriz inversa de la matriz extendida
    matriz_inversa = matriz_extendida(:, (filas + 1):end);
end
