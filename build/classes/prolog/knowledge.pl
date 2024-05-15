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
      description('El mito del castigo de Atlas cuenta la historia de cómo el titán Atlas fue condenado por Zeus a cargar el peso del mundo sobre sus hombros por toda la eternidad como castigo por su participación en la guerra entre los dioses y los titanes. Atlas había liderado a los titanes en una rebelión contra los olímpicos, pero tras ser derrotados, Zeus decidió castigarlo de esta manera.')).

frame(el_mito_de_apolo_y_dafne, subclass(class_mito_moral),
      properties([simboliza(destino_amor), leccion(el_amor_verdadero_no_puede_ser_forzado)]),
      description('El mito de Apolo y Dafne, de la mitología griega, narra la historia del dios Apolo, quien se enamoró perdidamente de la ninfa Dafne después de ser alcanzado por una flecha dorada de Eros. Sin embargo, Dafne fue alcanzada por una flecha de plomo, que la hizo rechazar el amor. Perseguida por Apolo, Dafne imploró a su padre, el dios del río Peneo, que la transformara para escapar de Apolo. Peneo la convirtió en un laurel, y desde entonces, Apolo adoptó el laurel como su árbol sagrado.')).
