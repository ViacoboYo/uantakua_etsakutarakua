////////////////////////////////International Conference on Live Coding 2021 Valdivia, Chile\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
///////////////////////////////////////////////////Uantakua etsakutarakua\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
////////////////////////////////////////////Yotzin Nekiz Viacobo Huitrón [Querrá]\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


//Los escritores en lenguas indígenas
//cruzan el puente y vuelven constantemente.
//Del otro lado, nadie viene.
//O casi nadie.
///////////////////////////////////////////Yásnaya Aguilar Gil

//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\||||||||Introducción|||||||||///////////////////////////////////////////////////////////\\
//Dentro del territorio mexicano --según datos del Instituto Nacional de Lenguas Indígenas (INALI) del
//2018--, se hablan 11 familias lingüísticas, 68 agrupaciones lingüísticas y 364 variantes lingüísticas.
//Todas en riesgo de desaparición, desde muy alto hasta bajo, unas más que otras. Las políticas racistas
//de discriminación sistemática ejercidas sobre las comunidades que no hablan español, han sido una
//de las principales razones de la pérdida de las lenguas.

////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\||||||||Uantakua etsakutarakua|||||||||///////////////////////////////////////////////////////////\\
//El p’urhe (purepecha) es una lengua aislada. Esto signiﬁca que es una familia lingüística por sí misma. Es hablado
//por alrededor de 141, 000 personas, principalmente en la zona
//noroeste del estado de Michoacán, México. Tradicionalmente se suelen reconocer cuatro regiones
//p’urhes: Sierra (Juátarhu), Lago (Japontarhu), Cañada (Eraxamani), y Ciénega de Zacapu
//(Tsirontarhu); regiones que no necesariamente son variantes lingüísticas.

//////////////////////////////////////////////////////////Meneses, Sue y García, Ismael. (2018). Manual para la enseñanza de la lengua purepecha. https://www.lanmo.unam.mx/repositorio/LANMO/jujeuantani/pdf/Jujeuantani%20versi%C3%B3n%20vinculos%20de%20audio.pdf


//Uantakua etsakutarakua son dos palabras en p’urhe que en español signiﬁcan ‘instrumento para esparcir la palabra’.
//Este concepto es aplicable para nombrar al radio, a la bocina, al altavoz, al
//megáfono y a cualquier aparato similar cuya función sea la reproducción o la ampliación del sonido.
//Esta pieza está compuesta por una selección de nueve fonemas p’urhes. Estos fonemas tienen
//modos de articulación distintos a los existentes en español. Es un ejercicio de contacto y de escucha
//de una lengua no hegemónica ni colonial. El que sea una escucha pasiva o activa, dependerá de lxs
//usuarixs.

//El lenguaje es una tecnología y es territorio, por ello el objetivo es confrontar a personas
//principalmente mexicanas e hispanohablantes con una estructura lingüística y una sonoridad
//distinta. Me gustaría que esta pieza fuese una contribución a la realidad lingüística no sólo de
//América Latina sino del mundo: diversa y en resistencia.

s.boot;


(
~f1 = Buffer.read(s,thisProcess.nowExecutingPath.dirname +/+ "fonemaecha/consonantiecha/paspirada.WAV");
~f2 = Buffer.read(s,thisProcess.nowExecutingPath.dirname +/+ "fonemaecha/consonantiecha/taspirada.WAV");
~f3 = Buffer.read(s,thisProcess.nowExecutingPath.dirname +/+ "fonemaecha/consonantiecha/tsaspirada.WAV");
~f4 = Buffer.read(s,thisProcess.nowExecutingPath.dirname +/+ "fonemaecha/consonantiecha/chaspirada.WAV");
~f5 = Buffer.read(s,thisProcess.nowExecutingPath.dirname +/+ "fonemaecha/consonantiecha/kaspirada.WAV");
~f6 = Buffer.read(s,thisProcess.nowExecutingPath.dirname +/+ "fonemaecha/consonantiecha/kuaspirada.WAV");
~f7 = Buffer.read(s,thisProcess.nowExecutingPath.dirname +/+ "fonemaecha/consonantiecha/nhnasal.WAV");
~f8 = Buffer.read(s,thisProcess.nowExecutingPath.dirname +/+ "fonemaecha/consonantiecha/rhretrofleja.WAV");
~f9 = Buffer.read(s,thisProcess.nowExecutingPath.dirname +/+ "fonemaecha/vocaliecha/ialta.WAV");
)

{PlayBuf.ar(2, ~f1.bufnum, 2)}.play;
{PlayBuf.ar(2, ~f2.bufnum, 2)}.play;
{PlayBuf.ar(2, ~f3.bufnum, 2)}.play;
{PlayBuf.ar(2, ~f4.bufnum, 2)}.play;
{PlayBuf.ar(2, ~f5.bufnum, 2)}.play;
{PlayBuf.ar(2, ~f6.bufnum, 2)}.play;
{PlayBuf.ar(2, ~f7.bufnum, 2)}.play;
{PlayBuf.ar(2, ~f8.bufnum, 2)}.play;
{PlayBuf.ar(2, ~f9.bufnum, 2)}.play;


//Interfaz

(
w = Window("Uantakua etsakutarakua",
Rect.new(700,400,700,550)).front.alwaysOnTop_(true);
w.background_(Color.new255(205, 104, 57));
a = StaticText(w, Rect(275,16, 520, 20));a.string = "Uantakua etsakutarakua";
b = StaticText(w, Rect(60,340,600, 20));b.string = "Modo de uso";
c = StaticText(w, Rect(60,350,600,100));c.string = "Da click a los fonemas en el orden y simultaneidad que desees. Escucha. Esta pieza es la versión 0.2 de lo que pretende ser una investigación lingüística. Este proyecto se encuentra en desarrollo y es colaborativo.
Soy estudiosa del p'urhe, si eres hablante y te interesa participar, contáctame.";
d = StaticText(w, Rect(60,395,600,100));d.string = "Diosï meiamu, jorhentpiriecha nana Sue Meneses ka tata Ismael García Marcelino.";
e = StaticText(w, Rect(400,500,600,20));e.string = "Yotzin Nekiz Viacobo Huitrón [Querrá]";
f = StaticText(w, Rect(60, 500, 600, 20));f.string = "querra.s.boot@gmail.com";


//Fonema 1: p' (p aspirada)
Button(w, Rect(65,55,100,110)).states_([
	["p'", Color.new(250,200,210), Color.new255(255,255,255)],
	["consonante
labial
oclusiva
aspirada", Color.gray, Color.new(250,200,250)]
]).action_({ arg bot;
	switch(bot.value,
		1,{{PlayBuf.ar(2, ~f1.bufnum, 1)}.play;},
		0,{~f1.free}
)});

//Fonema 2: t' (t aspirada)
Button(w, Rect(185,55,100,110)).states_([
	["t'", Color.new(250,200,210), Color.new255(255,255,255)],
	["consonante
dental
oclusiva
aspirada", Color.gray, Color.new(250,200,250)]
]).action_({ arg bot;
	switch(bot.value,
		1,{{PlayBuf.ar(2, ~f2.bufnum, 2)}.play;},
		0,{~f2.free}
)});

//Fonema 3: ts'
Button(w, Rect(305,55,100,110)).states_([
	["ts'", Color.new(250,200,210), Color.new255(255,255,255)],
	["consonante
alveolar
oclusiva
aspirada", Color.gray, Color.new(250,200,250)]
]).action_({ arg bot;
	switch(bot.value,
		1,{{PlayBuf.ar(2, ~f3.bufnum, 2)}.play;},
		0,{~f3.free}
)});

//Fonema 4: ch'
Button(w, Rect(425,55,100,110)).states_([
	["ch'", Color.new(250,200,210), Color.new255(255,255,255)],
	["consonante
palatal
oclusiva
aspirada", Color.gray, Color.new(250,200,250)]
]).action_({ arg bot;
	switch(bot.value,
		1,{{PlayBuf.ar(2, ~f4.bufnum, 2)}.play;},
		0,{~f4.free}
)});

//Fonema 5: k'
Button(w, Rect(545,55,100,110)).states_([
	["k'", Color.new(250,200,210), Color.new255(255,255,255)],
	["consonante
velar
oclusiva
aspirada", Color.gray, Color.new(250,200,250)]
]).action_({ arg bot;
	switch(bot.value,
		1,{{PlayBuf.ar(2, ~f5.bufnum, 2)}.play;},
		0,{~f5.free}
)});

//Fonema 6: k'u
Button(w, Rect(65,185,100,110)).states_([
	["k'u", Color.new(250,200,210), Color.new255(255,255,255)],
	["consonante
labiovelar
oclusiva
aspirada", Color.gray, Color.new(250,200,250)]
]).action_({ arg bot;
	switch(bot.value,
		1,{{PlayBuf.ar(2, ~f6.bufnum, 2)}.play;},
		0,{~f6.free}
)});

//Fonema 7: nh
Button(w, Rect(185,185,100,110)).states_([
	["nh", Color.new(250,200,210), Color.new255(255,255,255)],
	["consonante
velar
nasal", Color.gray, Color.new(250,200,250)]
]).action_({ arg bot;
	switch(bot.value,
		1,{{PlayBuf.ar(2, ~f7.bufnum, 2)}.play;},
		0,{~f7.free}
)});

//Fonema 8: rh
Button(w, Rect(305,185,100,110)).states_([
	["rh", Color.new(250,200,210), Color.new255(255,255,255)],
	["consonante
palatal
vibrante
retrofleja", Color.gray, Color.new(250,200,250)]
]).action_({ arg bot;
	switch(bot.value,
		1,{{PlayBuf.ar(2, ~f8.bufnum, 2)}.play;},
		0,{~f8.free}
)});

//Fonema 9: ï
Button(w, Rect(425,185,100,110)).states_([
	["ï", Color.new(250,200,210), Color.new255(255,255,255)],
	["vocal
central
alta", Color.gray, Color.new(250,200,250)]
]).action_({ arg bot;
	switch(bot.value,
		1,{{PlayBuf.ar(2, ~f9.bufnum, 2)}.play;},
		0,{~f9.free},
)});

)
