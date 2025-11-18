library(greekLetters)
#Distance focale
fprime=0
#Longueurs d'onde disponibles
greeks("lambda") #λ
greeks("delta") #δ
greeks("Delta") #Δ

#Partie 3.4
λ=c(546.07,435.83,404.66,365.02)  #Vert, indigo, violet, UV (en nm)
T=0
v=λ/2*T
t=0
δ=2*v*t
print(paste("v=",v,"nm.s-1"))
print(paste("δ=",δ,"nm"))
  #Incertitudes
δλ=0
δT=0
δv=v*sqrt((δλ^2)/(λ^2)+(δT^2)/(T^2))

#Partie 3.5
#Raie verte du mercure
T=0
δT=0
δλ=λ[[1]]*sqrt((δv[[1]]^2)/(v[[1]]^2)+(δT^2)/(T^2))
  #Incertitudes des mesures sur les interférogrammes
λm=0
N=0
Lc=0
δLc=0.5e6 #en nm
δλm=δLc/2*N
Δλm=λm^2/Lc
δΔλm=Δλm*sqrt((4*δλm^2)/(δλm^2)+(δLc^2)/(Lc^2))
#Doublet jaune du mercure
T=0
δT=0
δλ=λ[[1]]*sqrt((δv[[1]]^2)/(v[[1]]^2)+(δT^2)/(T^2))
  #Incertitudes des mesures sur les interférogrammes
λm=0
N=0
Lc=0
δLc=0.5e6 #en nm
δλm=δLc/2*N
Δλm=λm^2/Lc
δΔλm=Δλm*sqrt((4*δλm^2)/(δλm^2)+(δLc^2)/(Lc^2))
Δλtab=2.1 #en nm
print(paste("Erreur:",abs(1-Δλm/Δλtab)*100,"%"))

#Lumière blanche
T=0
δT=0
δλ=λ[[1]]*sqrt((δv[[1]]^2)/(v[[1]]^2)+(δT^2)/(T^2))
  #Incertitudes des mesures sur les interférogrammes
λm=0
N=0
Lc=0
δLc=0.5e6 #en nm
δλm=δLc/2*N
Δλm=λm^2/Lc
δΔλm=Δλm*sqrt((4*δλm^2)/(δλm^2)+(δLc^2)/(Lc^2))
print(paste("Erreur:",abs(1-Δλm/Δλtab)*100,"%"))
