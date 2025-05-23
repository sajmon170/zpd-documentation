# Przygotowanie

Zdecydowaliśmy się skorzystać z biblioteki pytorch, aby stworzyć nasz model. Korzysta on z kilku warstw konwolucyjnych, ReLU, MaxPool i transformacji liniowych, aby sklasyfikować obrazek.

## Ocena modelu

Do oceny modelu wybraliśmy następujące metryki

#### Loss

Funkcja straty Cross Entropy

$$\frac{1}{N} \sum_{n=1}^{N} \log \left( \frac{\exp(x_{n, y_n})}{\sum_{c=1}^{C} \exp(x_{n, c})} \right) \cdot \mathbf{1}\{y_n \ne \text{ignore\_index}\}  $$

![alt text](img/some_equation.png)
