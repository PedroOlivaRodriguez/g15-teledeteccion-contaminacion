NO2 = imread("../images/NO2_BONITO.png");
Mascara_valido = double(imread("../images/Mascara.png"));
Mascara_valido = Mascara_valido(:, :, 1);
#imshow(Mascara_valido);
NO2_BW = no2(NO2, 255).*Mascara_valido;
Mascara = imread("../images/mapaZonas2.png");
Mascara = Mascara(1:353,1:468, :);
#pintahisto(histo(NO2_BW));
#imshow(NO2_BW);

Cataluna = Mascara(:,:,1)==255;
Andalucia = Mascara(:,:,2)==255;
Madrid = Mascara(:, :,3)==255;

Cataluna_NO2 = NO2_BW .* Cataluna;
Andalucia_NO2 = NO2_BW .* Andalucia;
Madrid_NO2 = NO2_BW .* Madrid;
#imshow(Cataluna_NO2)

#imshow(seudo(NO2_BW));
#imshow(segmenta(NO2_BW));
imshow(mapa(umbraliza(NO2_BW)));
#imshow(mapa(umbraliza(fmediana(NO2_BW))));
#imshow(NO2_BW)
