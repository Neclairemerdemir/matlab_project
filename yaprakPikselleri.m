% bu proje sayesinde yaprak alanina ait RGB renk kanallarinin istatistiksel dagilimini analiz ediyoruz

clear;
clc;

dosya_adi = fullfile('ornekler', 'yaprak.jpg');
img = imread(dosya_adi);

R = double(img(:,:,1));
G = double(img(:,:,2));
B = double(img(:,:,3));

yaprak_maskesi = (R>0 | G>0 | B> 0);
R_degerleri = R(yaprak_maskesi);
G_degerleri = G(yaprak_maskesi);
B_degerleri = B(yaprak_maskesi);

mean_R =mean(R_degerleri);
std_R = std(R_degerleri);
range_R = max(R_degerleri) - min(R_degerleri);


mean_G =mean(G_degerleri);
std_G = std(G_degerleri);
range_G = max (G_degerleri)-min(G_degerleri);

mean_B = mean(B_degerleri);
std_B = std(B_degerleri);
range_B = max (B_degerleri)-min(B_degerleri);

fprintf('Kırmızı Alan :\n');
fprintf('Ortalama=%.2f, Std=%.2f, Aralik=%.2f\n', mean_R, std_R, range_R);
fprintf('Yeşil Alan :\n');
fprintf('Ortalama=%.2f, Std=%.2f, Aralik=%.2f\n', mean_G, std_G, range_G);
fprintf('Mavi Alan :\n');
fprintf('Ortalama=%.2f, Std=%.2f, Aralik=%.2f\n', mean_B, std_B, range_B);
