function [przyb_calka,A] = kw_trapezow(a,b,f,N)
% WEJSCIE 
% a - poczatek przedzialu
% b - koniec przedzialu 
% f - funkcja ktora bedziemy calkowac
% N - liczba popdprzedzialow
% WYJSCIE
% przyb_calka - przyblizona wartosc calki obliczona zl metoda trapezow
% A           - wektor punktow wyznaczajacych podprzedziy (do wykresu)

% granice podprzedzia?ów <a,b> jest ich o jeden wi?cej ni? podprzedzia?ów
A = linspace(a,b,N+1);
% szeroko?c podprzedzia?u
szer = ((b-a)/N);
 
% wartosc ca?ki
% ka?de dwa trapezy obok siebie maj? wspoln? podstaw?
% wszystkie trapezy maj? tak? sam? wysoko?? równ? szer
% Suma pól takich trapezów mo?na upro?ci?
% dla przyk?adu trzy takie trapezy mo?na zsumowa? w nast sposób
% Suma pól = h * (a/2 + b + c + d/2) gdzie a,b,c,d to nastepne wysokosci
% trapezow
przyb_calka = szer*(sum(f(A)) - (f(a)/2) - (f(b)/2));

end
