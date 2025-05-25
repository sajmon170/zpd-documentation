## Próby ulepszenia podstawowego modelu

Ręcznie przetestowaliśmy współczynniki SGD, maksymalne F-Score dla każdego znajdują się w tabelce poniżej:

\begin{table}[H]
\centering
\begin{tabular}{|c|c|c|c|}
\hline
& \textbf{lr=0.001} & \textbf{lr=0.005} & \textbf{lr=0.01} \\
\hline
Momentum = 0 & 0.2786 & 0.3438 & 0.3131 \\
Momentum = 0.9 & 0.3263 & 0.2786 & 0.2786 \\
Momentum = 2 & 0.2786 & 0.2786 & 0.2786 \\
\hline
\end{tabular}
\caption{Porównanie wartości F-Score dla różnych wartości współczynnika uczenia (lr) i momentum.}
\label{tab:fscore-momentum}
\end{table}

Niektóre modele nie nauczyły się, ich F-score zostało takie samo jak na początku.

Możemy zauważyć, nieco lepszy od oryginalnego (lr=0.01, momentum=0) wynik dla modelu (lr=0.005, momentum=0). Prawdopodobnie jest to losowe, co możemy przypuszczać po wykresie F-Score od epoki:

\begin{center}
\includegraphics[width=0.9\textwidth]{img/lr=0.005/plot_f1.png}
\end{center}
