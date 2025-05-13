function s = desviacion_mayores_que_cero(mat)
    % Esta función calcula la desviación estándar de los valores mayores que cero
    % en una matriz numérica 'mat'.

    % Asegurarse de que es tipo double
    mat = double(mat);

    % Extraer valores mayores que 0
    valores = mat(mat > 0);

    s = std(valores);
end

