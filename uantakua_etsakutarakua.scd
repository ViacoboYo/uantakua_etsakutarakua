//Yotzin Nekiz Viacobo Huitrón
//Uantakua etsakutarakua
//Propuesta para International Conference on Live Coding 2021 Valdivia, Chile

s.boot;


(
~f1 = Buffer.read(s,"/home/querra/Escritorio/fonemaecha/consonantiecha/paspirada.WAV");
~f2 = Buffer.read(s,"/home/querra/Escritorio/fonemaecha/consonantiecha/taspirada.WAV");
~f3 = Buffer.read(s,"/home/querra/Escritorio/fonemaecha/consonantiecha/tsaspirada.WAV");
~f4 = Buffer.read(s,"/home/querra/Escritorio/fonemaecha/consonantiecha/chaspirada.WAV");
~f5 = Buffer.read(s,"/home/querra/Escritorio/fonemaecha/consonantiecha/kaspirada.WAV");
~f6 = Buffer.read(s,"/home/querra/Escritorio/fonemaecha/consonantiecha/kuaspirada.WAV");
~f7 = Buffer.read(s,"/home/querra/Escritorio/fonemaecha/consonantiecha/nhnasal.WAV");
~f8 = Buffer.read(s,"/home/querra/Escritorio/fonemaecha/consonantiecha/rhretrofleja.WAV");
~f9 = Buffer.read(s,"/home/querra/Escritorio/fonemaecha/vocaliecha/ialta.WAV");
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
Rect.new(750,400,830,550)).front.alwaysOnTop_(true);
w.background_(Color.new255(205, 104, 57));
a = StaticText(w, Rect(350,16, 500, 20));a.string = "Uantakua etsakutarakua";
b = StaticText(w, Rect(60,340,500, 20));b.string = "Modo de uso";
c = StaticText(w, Rect(60,350,500,100));c.string = "Da click a los botones en el orden y simultaneidad que desees. Escucha. Esta pieza es la versión incipiente de lo que pretende ser una investigación lingüística. Próximamente nueva versión.";
d = StaticText(w, Rect(60,395,500,100));d.string = "Diosï meiamu, jorhentpiriecha nana Sue Meneses ka tata Ismael García Marcelino.";
e = StaticText(w, Rect(600,500,500,20));e.string = "Yotzin Nekiz Viacobo Huitrón [Querrá]";


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
Button(w, Rect(665,55,100,110)).states_([
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
Button(w, Rect(65,185,100,110)).states_([
	["nh", Color.new(250,200,210), Color.new255(255,255,255)],
	["consonante
velar
nasal", Color.gray, Color.new(250,200,250)]
]).action_({ arg bot;
	switch(bot.value,
		1,{{PlayBuf.ar(2, ~f7.bufnum, 2)}.play;},
		0,{~f7.free}
)});

//Fonema 8
Button(w, Rect(185,185,100,110)).states_([
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

//Fonema 9
Button(w, Rect(305,185,100,110)).states_([
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

