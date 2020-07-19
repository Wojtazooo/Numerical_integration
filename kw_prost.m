function [przyb_calka,srodkowe,A] = kw_prost(a,b,f,N)
% WEJSCIE 
% a - poczatek przedzialu
% b - koniec przedzialu 
% f - funkcja ktora bedziemy calkowac
% N - liczba popdprzedzialow
% WYJSCIE
% przyb_calka - przyblizona wartosc calki obliczona zl metoda prostokatow
% srodkowe    - wartosci funkcji w srodkowych punktach 
%               (przydatne do rysowania wykrsu)
% A           - wektor punktow wyznaczajacych podprzedziy

% granice podprzedzia?ów <a,b> jest ich o jeden wi?cej ni? podprzedzia?ów
A = linspace(a,b,N+1);
% szeroko?c podprzedzia?u
szer = ((b-a)/N);
% ?rodki podprzedzia?ów
srodkowe = A(1:N)+(szer/2);
% warto?ci w punktach ?rodkowych
wys = f(srodkowe);
% przyblizona wartosc calki dla kwadratury prostok?tów
przyb_calka = sum(wys)*szer;
end