# mergesort als funktion definieren
mergeSort <- function(arr) {merge
  
  # wenn die länge des arrays größer ist als 1,
  # wird sortiert
  if(length(x) > 1) {
    
    # mittelpunkt des arrays finden
    # dann denn array teilen
    mid <- ceiling(length(x)/2)
    
    # der 1. array geht von 1-mitte
    a <- mergeSort(x[1:mid])
    
    # 2. array von mitte+1 bis zum ende
    b <- mergeSort(x[(mid+1):length(x)])
    
    # zum schluss beide vereinen
    merge(a, b)
  }
  # ansonsten das x mit einem element wiedergeben
  else {
    x
  }
}

# x wird als zufallsgenerierte zahlen herausgegeben
# zahlen zwischen 1 und 100, und 50 an der zahl
x <- sample(1:40, 25, replace = t)

# die funktion bennenen und mit result in der 
#console rausgeben
result <- mergeSort(x)
print(result)
