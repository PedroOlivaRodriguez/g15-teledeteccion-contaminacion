function imagen_reducida = reduceImagen(imagen)
  [F, C] = size(imagen);
  imagen = double(imagen);

  imagen_reducida = imagen(1:20:F, 1:20:C);

  imagen_reducida = uint8(imagen_reducida);
end
