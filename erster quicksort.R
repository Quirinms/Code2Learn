# wieder funktion erstellen
quickSort <- function(x) {
  
  # pivotnummer auswählen für quicksort
  random_index <- sample(seq_along(x), 1);
  pivot <- x[random_index]
  x <- x[-random_index]
  
  #linke und rechte spalte erzeugen
  left <- c()
  right <- c()
  
  # kleinere-gleich zahlen nach links größere nach rechts
  # im vergleich zur pivotnummer
  left<-x[which(x <= pivot)]
  right<-x[which(x > pivot)]
  
  if (length(left) > 1)
  {
    left <- quickSort(left)
  }
  if (length(right) > 1)
  {
    right <- quickSort(right)
  }
  
  # Return the sorted values.
  return(c(left, pivot, right))
}

# x als sample definieren zum ausprobieren
x <- sample(1:100, 10)

# funktion auswerfen lassen durch result
result <- quickSort(x)

