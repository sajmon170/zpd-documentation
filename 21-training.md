# Trening modelu

## Podstawowy model

Jako podstawowy model wybraliśmy sieć konwolucyjną w PyTorch, na podstawie przykładowej sieci klasyfikacyjnej, składającą się z warstw:

- Konwolucyjnych - Które dokonują splotu macierzy wejściowej z macierzami konwolucyjnymi, tworząc odpowiednią liczbę macierzy wyjściowych.
- ReLu - dla każdej komórki macierzy o wartości $x$ zwraca $max(0, x)$
- MaxPool - Która zmniejsza każdy wymiar macierzy dwukrotnie, biorąc jako wartość komórki maksymalną wartość z odpowiadającej podmacierzy 2x2 z macierzy wejściowej
- Liniowych - Przekształcających dane wejściowe transformacją liniową.

Gdzie macierz to jeden kanał tensora reprezentującego wielokanałowy obraz.

Jako funkcję straty wybrana została entropia krzyżowa, a optimizer to SGD (Stochastic Gradient Descent), ze współczynnikiem uczenia 0.01, i zerowym momentum.
