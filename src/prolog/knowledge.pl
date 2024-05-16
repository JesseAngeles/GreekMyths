% BASE DE CONOCIMIENTOS
frame(mitologia_griega, subclass(top),
      properties([origen(grecia)]),
      description('La mitología griega es el conjunto de mitos y leyendas pertenecientes a la cultura de la Antigua Grecia, que tratan de sus dioses y héroes, la naturaleza del mundo, los orígenes y el significado de sus propios cultos y prácticas rituales.')).

frame(class_mito_moral, subclass(mitologia_griega),
      properties([muestra(diferencia_bien_y_mal)]),
      description('Los mitos morales explican la existencia del bien y el mal.')).

frame(class_mito_fundacional, subclass(mitologia_griega),
      properties([muestra(origen)]),
      description('Los mitos fundacionales describen el origen de alguna característica del mundo natural o social.')).

frame(class_mito_escatologico, subclass(mitologia_griega),
      properties([muestra(origen_y_destino_de_la_humanidad_y_dioses)]),
      description('Los mitos escatológicos narran el origen y destino de la existencia del hombre en el cosmos.')).

frame(el_mito_de_prometeo, subclass(class_mito_fundacional),
      properties([simboliza(sabiduria_sacrificio), origina(fuego)]),
      description('El mito de Prometeo narra la historia de un titán que desobedeció a Zeus al robar el fuego divino para entregárselo a la humanidad, dotándola así de conocimiento y progreso. Como castigo por este acto de desafío, Zeus condenó a Prometeo a ser encadenado a una roca en el Cáucaso, donde un águila devoraba su hígado, que se regeneraba cada noche, perpetuando su sufrimiento eternamente.')).

frame(el_mito_de_medusa, subclass(class_mito_moral),
      properties([simboliza(castigo_poder_redencion), leccion(poder_del_castigo_divino)]),
      description('Medusa, en el mito griego, era originalmente una bella sacerdotisa de Atenea, pero fue maldecida por la diosa después de ser seducida por Poseidón en uno de sus templos. La maldición transformó su cabello en serpientes y convirtió su mirada en un arma mortal que convertía a quienes la contemplaban en piedra. Perseo, ayudado por los dioses, decapitó a Medusa y usó su cabeza como arma, convirtiendo a aquellos que la miraban en piedra.')).

frame(el_mito_de_pandora, subclass(class_mito_fundacional),
      properties([simboliza(curiosidad_esperanza), origina(mal_y_sufrimiento_en_el_mundo)]),
      description('El mito griego de la caja de Pandora narra la historia de Pandora, la primera mujer creada por los dioses, quien fue dotada de numerosos dones y una caja misteriosa que se le prohibió abrir. Movida por la curiosidad, Pandora finalmente desobedeció y abrió la caja, liberando todos los males del mundo, como la enfermedad, la tristeza y la guerra, que se esparcieron entre la humanidad. Aterrada, cerró la caja rápidamente, pero solo quedó atrapada la esperanza, el único bien que ayuda a los humanos a sobrellevar las desgracias liberadas.')).

frame(el_mito_de_sisifo, subclass(class_mito_moral),
      properties([simboliza(astucia_esfuerzo), leccion(lucha_humana_contra_la_inevitabilidad_y_la_futilidad_de_la_muerte)]),
      description('El mito de Sísifo, procedente de la mitología griega, cuenta la historia del rey Sísifo, conocido por su astucia y engaños, quien fue condenado por los dioses a un castigo eterno por desafiar a Zeus. Su pena consistía en empujar una enorme roca colina arriba, solo para verla rodar de nuevo hacia abajo cada vez que alcanzaba la cima, obligándolo a empezar de nuevo. Este mito ha sido interpretado como una alegoría de la futilidad y el esfuerzo inútil, destacando la absurda repetición de tareas sin sentido.')).

frame(el_mito_de_eco, subclass(class_mito_moral),
      properties([simboliza(incapacidad_falta_de_autonomia), leccion(consecuencia_de_la_manipulacion_y_la_perdida_de_autenticidad)]),
      description('El mito de Eco, de la mitología griega, relata la historia de una ninfa de voz encantadora que se enamoró del hermoso joven Narciso. Debido a un castigo de la diosa Hera, Eco solo podía repetir las últimas palabras que escuchaba, sin poder expresarse libremente. Su amor no correspondido por Narciso la llevó a la desesperación y eventualmente a desvanecerse hasta que solo quedó su voz. Mientras tanto, Narciso, al verse incapaz de amar a nadie más que a sí mismo, se enamoró de su propio reflejo en un estanque, lo que lo llevó a la muerte.')).

frame(el_mito_de_narciso, subclass(class_mito_moral),
      properties([simboliza(belleza_superficial_y_egocentrismo), leccion(importancia_de_cultivar_relaciones_significativas_y_no_en_apariencia_fisica)]),
      description('El mito de Narciso, de la mitología griega, narra la historia de un joven extraordinariamente hermoso que despreció a todos sus admiradores, incluidos la ninfa Eco. Como castigo por su arrogancia, los dioses hicieron que se enamorara de su propio reflejo en un estanque. Incapaz de apartarse de su imagen, Narciso languideció y murió, transformándose en la flor que lleva su nombre.')).

frame(el_mito_de_icaro, subclass(class_mito_moral),
      properties([simboliza(ambicion_desmedida_y_falta_de_moderacion), leccion(exceso_de_confianza_lleva_a_la_ruina)]),
      description('La historia de Ícaro, de la mitología griega, cuenta cómo él y su padre Dédalo intentaron escapar del laberinto de Creta utilizando alas hechas de plumas y cera. A pesar de las advertencias de su padre de no volar demasiado alto para evitar que el sol derritiera la cera ni demasiado bajo para que el mar no mojara las plumas, Ícaro, embriagado por la emoción del vuelo, ascendió demasiado cerca del sol. La cera de sus alas se derritió y cayó al mar, donde se ahogó.')).

frame(el_mito_de_teseo_y_el_minotauro, subclass(class_mito_moral),
      properties([simboliza(lucha_civilizacion_y_bestialidad), leccion(verdadero_heroe_usa_su_fuerza_para_proteger_y_liberar_del_peligro)]),
      description('El mito de Teseo y el Minotauro, una de las historias más famosas de la mitología griega, relata cómo Teseo, el valiente príncipe de Atenas, se ofreció voluntariamente para ser uno de los jóvenes enviados como sacrificio al Minotauro, un monstruo mitad hombre y mitad toro que habitaba en un laberinto en Creta. Con la ayuda de Ariadna, la hija del rey Minos, quien le proporcionó un hilo para marcar su camino, Teseo logró entrar al laberinto, matar al Minotauro y encontrar su salida, liberando así a Atenas de la opresiva obligación de enviar tributos humanos.')).

frame(el_mito_del_caballo_de_troya, subclass(class_mito_moral),
      properties([simboliza(astucia_traicion), leccion(cautela_ante_ofertas_de_paz)]),
      description('El mito del caballo de Troya, una de las historias más célebres de la mitología griega, narra la estratagema final de los griegos para conquistar la ciudad de Troya durante la guerra que duró diez años. Los griegos construyeron un enorme caballo de madera hueco y fingieron retirarse, dejando el caballo como ofrenda. Los troyanos, creyendo que era un regalo de victoria, lo introdujeron en la ciudad. Durante la noche, soldados griegos escondidos dentro del caballo salieron y abrieron las puertas de Troya para el ejército griego que había regresado en secreto.')).

frame(el_mito_del_castigo_de_atlas, subclass(class_mito_fundacional),
      properties([simboliza(responsabilidad_sacrificio), origina(gravedad)]),
      description('El mito del castigo de Atlas cuenta la historia de cómo el titán Atlas fue condenado por Zeus a cargar el peso del mundo sobre sus hombros por toda la eternidad como castigo por su participación en la guerra entre los dioses y los titanes. Atlas había liderado a los titanes en la batalla contra los dioses olímpicos, pero tras su derrota, recibió este castigo ejemplar que simboliza el peso de la responsabilidad y el sacrificio.')).

frame(el_mito_de_casandra, subclass(class_mito_moral),
      properties([simboliza(profesia_destino),leccion(importancia_de_escuchar_y_valorar_las_advertencias_y_consejos)]),
      description('El mito de Casandra relata la historia de una sacerdotisa troyana bendecida por Apolo con el don de la profecía, pero también con la maldición de que sus predicciones nunca serían creídas. A pesar de advertir sobre el peligro de aceptar el caballo de madera en la guerra de Troya, sus advertencias fueron ignoradas. Después de la caída de Troya, Casandra se convirtió en esclava de Agamenón, rey de Micenas, y predijo su propia muerte junto con la de él.')).

frame(el_mito_de_hefesto, subclass(class_mito_fundacional),
      properties([simboliza(creatividad_trabajo_manual_ingenio),origina(herreria)]),
      description('Hefesto, en la mitología griega, es el dios del fuego, la metalurgia y la forja. Hijo de Zeus y Hera, nació con una deformidad que provocó que su madre lo arrojara del Olimpo, dejándolo lisiado. Fue rescatado y criado por las nereidas Tetis y Eurínome, desarrollando habilidades excepcionales en la herrería. Más tarde, regresó al Olimpo y se convirtió en el herrero de los dioses, creando armas y artefactos maravillosos como el trono dorado de Hera y la armadura de Aquiles. A pesar de su apariencia, se casó con Afrodita, la diosa del amor, aunque su matrimonio estuvo marcado por la infidelidad de ella.')).

frame(el_mito_de_orfeo_y_euridice, subclass(class_mito_moral),
      properties([simboliza(amor_perdida),leccion(fragilidad_de_la_confianza)]),
      description('Orfeo, el legendario músico y poeta griego, se enamoró y se casó con la ninfa Eurídice. Sin embargo, su felicidad se vio truncada cuando Eurídice murió tras ser mordida por una serpiente. Desconsolado, Orfeo descendió al inframundo con su lira, cuya música conmovió a Hades y Perséfone, quienes accedieron a devolverle a Eurídice con la condición de que no mirara atrás hasta que ambos estuvieran de vuelta en el mundo de los vivos. Sin embargo, justo antes de alcanzar la salida, Orfeo, ansioso y dudoso, se giró para asegurarse de que Eurídice lo seguía, causando que ella desapareciera para siempre.')).

frame(el_mito_de_pigmaleon, subclass(class_mito_moral),
      properties([simboliza(amor_idealizado_arte),leccion(poder_creativo_del_arte)]),
      description('Pigmalión, en la mitología griega, era un escultor talentoso de Chipre que se enamoró profundamente de una estatua de marfil que él mismo había creado. La figura, que representaba a una mujer ideal y perfecta, era tan hermosa que Pigmalión deseaba que fuera real. En una festividad en honor a Afrodita, la diosa del amor, Pigmalión suplicó que su obra maestra cobrara vida. Conmovida por su devoción y amor, Afrodita concedió su deseo, transformando la estatua en una mujer viva a la que Pigmalión llamó Galatea.')).

frame(el_mito_de_perseo, subclass(class_mito_moral),
      properties([simboliza(astucia_valentia),leccion(busqueda_de_soluciones_creativas)]),
      description('El mito de Perseo, un héroe griego famoso, incluye la gesta de matar a la Gorgona Medusa, cuyo cabello estaba formado por serpientes y cuya mirada convertía a cualquiera en piedra. Con la ayuda de los dioses, Perseo utilizó un escudo brillante para ver el reflejo de Medusa y decapitarla sin mirarla directamente. En su viaje de regreso, Perseo rescató a Andrómeda de un monstruo marino y la tomó como esposa. Las Perseidas, una lluvia de meteoros que ocurre cada año en agosto, están asociadas con el mito de Perseo. Según la leyenda, estos meteoros representan la chispa luminosa de la espada de Perseo o las lágrimas de felicidad de los dioses al ver sus hazañas heroicas.')).

frame(el_mito_de_pan, subclass(class_mito_fundacional),
      properties([simboliza(arte),origina(flauta_de_pan)]),
      description('El mito griego de la flauta de Pan narra la historia del dios Pan, mitad hombre y mitad cabra, conocido por su asociación con la naturaleza y la música. Pan se enamoró de la ninfa Siringa, quien, para escapar de sus avances, fue transformada en un cañaveral por sus hermanas, las ninfas del río. Desesperado y entristecido, Pan cortó algunas cañas y, al unirlas, creó una flauta que emitía un sonido melodioso y nostálgico. Esta flauta, conocida como la siringa o flauta de Pan, se convirtió en su instrumento característico, simbolizando la mezcla de la naturaleza y el arte, así como el amor no correspondido y la creación de belleza a partir del dolor.')).

frame(el_mito_de_persefone, subclass(class_mito_fundacional),
      properties([simboliza(cambio_amor_paternal),origina(estaciones)]),
      description('El mito griego de Perséfone, hija de Deméter, la diosa de la cosecha, y Zeus, narra su secuestro por Hades, el dios del inframundo, quien la llevó a su reino para convertirla en su esposa. Desesperada por la pérdida de su hija, Deméter detuvo el crecimiento de las plantas, causando una hambruna en la tierra. Zeus, presionado por la desesperación humana, intervino y logró que Hades liberara a Perséfone. Sin embargo, como Perséfone había comido granos de granada en el inframundo, debía pasar una parte del año con Hades y el resto con su madre en la tierra. Este ciclo de separación y reunión explica el cambio de estaciones: la primavera y el verano representan el tiempo que Perséfone pasa con Deméter, mientras que el otoño y el invierno marcan su estancia en el inframundo.')).

frame(el_mito_de_las_pleyades, subclass(class_mito_fundacional),
      properties([simboliza(belleza_misterio),origina(astrologia)]),
      description('Las Pléyades, en la mitología griega, eran siete hermanas hijas de Atlas y Pleione: Maia, Electra, Taigete, Alcíone, Celeno, Estérope y Mérope. Perseguidas incansablemente por el cazador Orión, las hermanas fueron transformadas en palomas por Zeus y colocadas en el cielo para su protección, formando el cúmulo estelar conocido como las Pléyades. Este grupo de estrellas es visible en el cielo nocturno y ha sido un símbolo de belleza y misterio. Cada una de las Pléyades también está asociada con diversos mitos y leyendas en la mitología griega, representando la conexión entre el cielo y las historias terrenales de los dioses y héroes.')).

frame(el_mito_del_tartaro, subclass(class_mito_escatologico),
      properties([explica(destino_y_origen_humanidad)]),
      description('En la mitología griega, el Tártaro es una región profunda y oscura del inframundo, incluso más abajo que el Hades, destinada a ser la prisión de los titanes y otros seres malvados. Después de la Titanomaquia, la guerra entre los dioses olímpicos liderados por Zeus y los titanes, los titanes derrotados fueron encarcelados en el Tártaro, vigilados por los Hecatónquiros, seres de cien brazos. El Tártaro también sirve como lugar de castigo eterno para las almas de los malvados y aquellos que cometieron ofensas graves contra los dioses, como Sísifo y Tántalo. El Tártaro representa el aspecto más temible y punitivo del inframundo, simbolizando el destino inevitable de aquellos que desafían el orden divino y moral.')).

frame(el_mito_de_gigantomaquia, subclass(class_mito_escatologico),
      properties([explica(batalla_dioses)]),
      description('La Gigantomaquia es el mito griego que describe la épica batalla entre los dioses olímpicos, liderados por Zeus, y los gigantes, hijos de Gea (la Tierra), quienes se rebelaron contra los dioses para tomar el control del Olimpo. Los gigantes, nacidos de la sangre derramada de Urano cuando fue castrado por Cronos, eran seres enormes y poderosos. La profecía decía que solo un mortal podría derrotar a los gigantes, por lo que Hércules jugó un papel crucial en la batalla. Con su ayuda, los dioses lograron vencer a los gigantes, restaurando el orden y consolidando su dominio sobre el cosmos.')).
