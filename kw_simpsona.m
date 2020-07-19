function [przyb_calka] = kw_simpsona(a,b,f,N)
% WEJSCIE 
% a - poczatek przedzialu
% b - koniec przedzialu 
% f - funkcja ktora bedziemy calkowac
% N - liczba popdprzedzialow
% WYJSCIE
% przyb_calka - przyblizona wartosc calki obliczona zl metoda Simpsona

% wektor punktow wyznaczajacych podprzedzialy
A = linspace(a,b,N+1);
% szerokosc przedzialu
szer = ((b-a)/N);
% wartosci w na koncach podprzedzialow
wart = f(A);
% punkty w srodku przedzialow
srodkowe = A(1:N)+(szer/2);

% je?li uznajemy operacj? sum(x) jako jedn? operacj? 
% mamy tutaj 8 operacji: 1 / , 2 + , 2 * , 3 sum(x)
% przyblizona wartosc calki dla kwadratury Simpsona 
przyb_calka = (szer/6)*((sum(wart(1:N)) + 4*sum(f(srodkowe)) + sum(wart(2:N+1))));


end

