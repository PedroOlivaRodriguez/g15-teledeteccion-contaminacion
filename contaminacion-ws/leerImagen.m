#NO2 = imread("../images/NO2_BONITO.png");
#NO2_BW = expan(no2(NO2, 255), 128, 255);
#Mascara = imread("../images/mapaZonas2.png");
#Mascara = Mascara(1:353,1:468, :);
#pintahisto(histo(expan(NO2_BW, 128, 255)));
#imshow(expan(NO2_BW, 128, 255));
#imshow(NO2_BW);

Cataluna = Mascara(:,:,1)==255;
Andalucia = Mascara(:,:,2)==255;
Madrid = Mascara(:, :,3)==255;

#Cataluna_NO2 = NO2_BW .* Cataluna;
#Andalucia_NO2 = NO2_BW .* Andalucia;
#Madrid_NO2 = NO2_BW .* Madrid;
#imshow(Madrid_NO2)

#imshow(seudo(expan(NO2_BW, 128, 255)));
