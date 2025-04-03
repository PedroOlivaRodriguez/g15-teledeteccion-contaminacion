% Cargar imagen de NO2
NO2 = imread("../images/NO2_BONITO.png");

% Convertir a binario y expandir
NO2_BW = no2(NO2, 255);

% Cargar máscara de zonas geográficas
Mascara = imread("../images/mapaZonas2.png");
Mascara = Mascara(1:353,1:468,:);

% Definir zonas geográficas
Cataluna = Mascara(:,:,1) == 255;
Andalucia = Mascara(:,:,2) == 255;
Madrid = Mascara(:,:,3) == 255;

% Extraer NO2 para cada zona
Cataluna_NO2 = NO2_BW .* Cataluna;
Andalucia_NO2 = NO2_BW .* Andalucia;
Madrid_NO2 = NO2_BW .* Madrid;

% Filtrar valores distintos de cero para análisis estadístico
Cataluna_NO2_vals = Cataluna_NO2(Cataluna_NO2 > 0);
Andalucia_NO2_vals = Andalucia_NO2(Andalucia_NO2 > 0);
Madrid_NO2_vals = Madrid_NO2(Madrid_NO2 > 0);

% Calcular medianas
Cataluna_stats = median(Cataluna_NO2_vals);
Andalucia_stats = median(Andalucia_NO2_vals);
Madrid_stats = median(Madrid_NO2_vals);

% Mostrar estadísticas
disp('Cataluña: Mediana');
disp(Cataluna_stats);
disp('Andalucía: Mediana');
disp(Andalucia_stats);
disp('Madrid: Mediana');
disp(Madrid_stats);

% Graficar histogramas
#figure;
#subplot(1,3,1); hist(Cataluna_NO2_vals, 50); title('Cataluña');
#subplot(1,3,2); hist(Andalucia_NO2_vals, 50); title('Andalucía');
#subplot(1,3,3); hist(Madrid_NO2_vals, 50); title('Madrid');

% Graficar boxplots para comparar distribuciones
#figure;
#boxplot([Cataluna_NO2_vals, Andalucia_NO2_vals, Madrid_NO2_vals], {'Cataluña', 'Andalucía', 'Madrid'});
#title('Comparación de NO2 por Zona');

% Graficar mapa de calor de NO2
#figure;
#imagesc(NO2_BW);
#colormap('hot');
#colorbar;
#title('Distribución de NO2');

