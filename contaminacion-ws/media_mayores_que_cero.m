function m = media_mayores_que_cero(mat)
    % Esta función calcula la media de los valores mayores que cero
    % en una matriz numérica 'mat'.

    % Asegurarse de que es tipo double (por si es uint8)
    mat = double(mat);

    % Extraer solo los valores mayores que 0
    valores = mat(mat > 0);

    m = mean(valores);
end

