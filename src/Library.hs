module Library where
import PdePreludat
-- como tuplas
-- unoDeEspada = (1, "Espada") vimos que esta solución trae sus problemas a la hora de colisionar con cualquier otra cosa que este modelado con tuplas del mismo tipo

--como data
unoDeEspada :: Carta
unoDeEspada = UnaCarta 1 Espada
dosDeBasto:: Carta
dosDeBasto = UnaCarta 2 Basto
reyDeBasto:: Carta
reyDeBasto = UnaCarta 12 Basto

--puede ir una carta despues de otra carta si coinciden en palo o número
--por fst y snd esta solución por tuplas utiliza fst y snd que ya vienen definidos.
--puedeIrDespues unaCarta otraCarta = (fst unaCarta == fst otraCarta) || (snd unaCarta == snd otraCarta)

-- por Pattern Matching esta solución deconstruye el patron de la tupla, nos ahorra usar fst y snd
--puedeIrDespues (unValor, unPalo) (otroValor, otroPalo) = unValor == otroValor || unPalo == otroPalo
puedeIrDespues:: Carta -> Carta -> Bool
puedeIrDespues Comodin _ = True
puedeIrDespues _ Comodin = True
-- En esta solución final abstraemos las ideas de sonDelMismoPalo y tienenElMismoValor, le da mas semantica a nuestro código, nos da mayor capacidad de generar cambios en nuestro modelo sin tanto trabajo
puedeIrDespues unaCarta otraCarta = sonDelMismoPalo unaCarta otraCarta || tienenElMismoValor unaCarta otraCarta

sonDelMismoPalo :: Carta -> Carta -> Bool
sonDelMismoPalo unaCarta otraCarta =  palo unaCarta == palo otraCarta

tienenElMismoValor:: Carta -> Carta -> Bool
tienenElMismoValor unaCarta otraCarta = valor unaCarta == valor otraCarta

--agrego type alias los type alias son solo apodos para un tipo, no son un nuevo tipo por eso los jugadores tambien podían ser usados como Cartas mientras todo era una tupla
--type Carta = (Number, String)

-- modelar jugadores por puntaje y nombre 
juan = (50,"Juan")
feche = (60,"Feche")

--ahora con datas
--version son syntax sugar, en esta version tenemos que definir la función valor y palo xq no vienen gratis
--data Carta = UnaCarta Number Palo deriving(Show,Eq)
data Carta = UnaCarta{
    valor:: Number,
    palo:: Palo
} | Comodin  deriving (Show,Eq)


--que pasa si me equivoco al escribir el Palo? aca introducimos la idea de modelar el Palo sin que sea un String para limitar los posibles valores que puede tomar
data Palo = Espada | Oro | Copa | Basto deriving(Show,Eq) 


--comodin