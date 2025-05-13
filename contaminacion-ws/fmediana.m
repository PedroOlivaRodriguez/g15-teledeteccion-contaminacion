% Filtro de mediana de una banda

function z = fmediana(x)

  [F, C] = size(x);
  x = double(x);

  z = zeros(F, C);

  for f = 2:F-1
    for c = 2:C-1
      nd = x(f, c);
      if nd > 128
        en = x(f-1:f+1, c-1:c+1);
        en = reshape(en, 1, 9);
        ndp = median(en);
        z(f, c) = ndp;
      end
    end
  end

  z = uint8(z);

end
