* Encoding: UTF-8.

***=================== Labels zijn gebaseerd op codeboeken van het CBS, en deels verloren gegaan bij koppeling in R================**

* Encoding: UTF-8.

VARIABLE LABELS RINOBJECTNUMMER 'RIN object nummer'. 
VARIABLE LABELS RINPERSOON 'RIN persoonsnummer (BSN pseudoniem)'. 
VARIABLE LABELS OPLNIVSOI2016AGG4HBMETNIRWO 'Hoogst behaalde opleidingsniveau'.
VARIABLE LABELS GBAGESLACHT 'Geslacht'.
VARIABLE LABELS GBAGENERATIE 'Generatie'.
VARIABLE LABELS GBAGEBOORTEJAAR 'Geboortejaar'.
VARIABLE LABELS GBAGEBOORTEMAAND 'Geboortemaand'. 
VARIABLE LABELS GBAGEBOORTEDAG 'Geboortedag'. 
VARIABLE LABELS GBAHERKOMSTGROEPERING 'Migratieachtergrond (CBS definitie)'. 
VARIABLE LABELS TYPHH 'Type huishouden'. 
VARIABLE LABELS AANTALPERSHH 'Aantal personen per huishouden'. 
VARIABLE LABELS IMPUTATIECODEHH 'Huidhouden wel/ niet geimputeerd'.

VARIABLE LABELS SOORTOBJECTNUMMER 'Soort object nummer van het adres van een persoon'. 
VARIABLE LABELS gem2020 'Gemeentecode (indeling 2020)'. 
VARIABLE LABELS wc2020 'Wijkcode (indeling 2020)'. 
VARIABLE LABELS bc2020 'Buurtcode (indeling 2020)'. 
VARIABLE LABELS ZuidWest_NL 'Inwoner van de GGD regio Zuid-West NL (RR, ZHZ of Zeeland)'. 
VARIABLE LABELS GGD_Regio 'GGD regio'. 
VARIABLE LABELS Huidige_bewoning 'Woonachtig op het objectnummer op 1 januari 2020'. 

VARIABLE LABELS Datum_ZKH_opname 'Datum van de ziekenhuisopname'. 
VARIABLE LABELS Datum_IC_opname 'Datum van IC opname'. 
VARIABLE LABELS Datum_overlijden 'Datum van overlijden'. 
VARIABLE LABELS Eerste_ziektedag.1 'Eerste ziektedag bij eerste melding in Osiris'. 
VARIABLE LABELS Datum_Positief.1 'Datum waarop iemand positief werd bevonden bij eerste melding in Osiris'. 
VARIABLE LABELS Beroep.1 'Beroep bij eerste besmetting'. 
VARIABLE LABELS Bronbestand.1 'Bronbestand van de eerste besmetting (GGD regio)'. 
VARIABLE LABELS Eerste_ziektedag.2 'Eerste ziektedag bij tweede melding in Osiris'. 
VARIABLE LABELS Datum_Positief.2  'Datum waarop iemand positief werd bevonden bij tweede melding in Osiris'. 
VARIABLE LABELS Beroep.2 'Beroep bij tweede besmetting'. 
VARIABLE LABELS Bronbestand.2  'Bronbestand van de tweede besmetting (GGD regio)'. 
VARIABLE LABELS Aantal_keer_besmet 'Totaal aantal keer dat iemand in Osiris is gemeld (geregistreerde prevalentie)'.
Execute. 

***============================ VALUE LABELS =====================================***
**==========================Controleren: veel te veel missings ============================****

VALUE LABELS OPLNIVSOI2016AGG4HBMETNIRWO
1110 'Basisonderwijs z.n.d.'
1111 'Basisonderwijs groep 1-2'
1112 'Basisonderwijs groep 3-8'
1210 'Vmbo basis of -kader, mbo1 z.n.d'
1211 'Praktijkonderwijs'
1212 'Vmbo basis of - kader'
1213 'MBO-1'
1220 'Vmbo gemengd of - theoretisch, havo, vwo onderbouw' 
1221 'Vmbo gemengd of - theoretisch' 
1222 'Havo, vwo onderbouw'
2110 'Mbo 2 en Mbo 3 z.n.d.'
2111 'Mbo 2'
2112 'Mbo 3'
2120 'Mbo 4, z.n.d.'
2121 'Mbo 4'
2130 'Havo, Vwo, z.n.d.'
2131 'Havo bovenbouw'
2132 'Vwo bovenbouw'
3110 'Hbo, wo bachelor z.n.d.'
3111 'Hbo associate degree'
3112 'Hbo bachelor'
3113 'Wo bachelor'
3210 'Hbo-, wo- master, doctor, z.n.d.'
3211 'Hbo-master'
3212 'Wo-master'
3213 'Doctor'
9999 'Weet niet/ onbekend'.
Execute. 

VARIABLE LABELS GBAGESLACHT 'Geslacht'.
VALUE LABELS GBAGESLACHT
1 'Man'
2 'Vrouw'.

* Generatie

VARIABLE LABELS GBAGENERATIE 'Generatie'.
VALUE LABELS GBAGENERATIE
0 'Autochtoon'
1 'Eerste generatie'
2 'Tweede generatie'
9999 'Missing'.

* Geboortemaand

VARIABLE LABELS Geboortemaand_num 'Geboortemaand'.
VALUE LABELS Geboortemaand_num
1 'Januari'
2 'Februari'
3 'Maart'
4 'April'
5 'Mei'
6 'Juni'
7 'Juli'
8 'Augustus'
9 'September'
10 'Oktober'
11 'November'
12 'December'.

* migratieachtergrond 
Komt later

* Type huishouden

VALUE LABELS TYPHH
1 'Eenpersoonshuishouden'
2 'Niet-gehuwd paar zonder kinderen'
3 'Gehuwd paar zonder kinderen'
4 'Niet-gehuwd paar met kinderen'
5 'Gehuwd paar met kinderen'
6 'Eenouderhuishouden'
7 'Overig huishouden'
8 'Institutioneel huishouden'.

* Imputatiecode voor huishouden

VALUE LABELS IMPUTATIECODEHH
0 'Nee'
1 'Ja'.

* Encoding: UTF-8.

***=============== VALUE LABELS MIGRATIEACHTERGROND ===========***

VALUE LABELS GBAHERKOMSTGROEPERING
0 Onbekend niet van toepassing
1234 Nederland_asielzoekerscentra
5001 Canada
5002 Frankrijk
5003 Zwitserland
5004 Rhodesie
5005 Malawi
5006 Cuba
5007 Suriname
5008 Tunesie
5009 Oostenrijk
5010 Belgie
5011 Botswana
5012 Iran
5013 Nieuwzeeland
5014 Zuidafrika
5015 Denemarken
5016 Noordjemen
5017 Hongarije
5018 Saoediarabie
5019 Liberia
5020 Etiopie
5021 Chili
5022 Marokko
5023 Togo
5024 Ghana
5025 Laos
5026 Angola
5027 Filipijnen
5028 Zambia
5029 Mali
5030 Ivoorkust
5031 Burma
5032 Monaco
5033 Colombia
5034 Albanie
5035 Kameroen
5036 Zuidviëtnam
5037 Singapore
5038 Paraguay
5039 Zweden
5040 Cyprus
5041 Australisch Nieuwguinea
5042 Brunei
5043 Irak
5044 Mauritius
5045 Vaticaanstad
5046 Kashmir
5047 Myanmar
5048 Jemen
5049 Slovenië
5050 Zaïre
5051 Kroatië
5052 Taiwan
5053 Rusland
5054 Armenië
5055 Ascension
5056 Azoren
5057 Bahrein
5058 Bhutan
5059 Britse Antillen
5060 Comoren
5061 Falklandeilanden
5062 Frans Guyana
5063 Frans Somaliland
5064 Gilbert- en Ellice-eilanden
5065 Groenland
5066 Guadeloupe
5067 Kaapverdische Eilanden
5068 Macau
5069 Martinique
5070 Mozambique
5071 Pitcairneilanden
5072 Guinee Bissau
5073 Réunion
5074 Saint Pierre en Miquelon
5075 Seychellen en Amiranten
5076 Tonga
5077 Wallis en Futuna
5078 Zuidwest Afrika
5079 Frans Indie
5080 Johnston
5081 Kedah
5082 Kelantan
5083 Malakka
5084 Mayotte
5085 Negri Sembilan
5086 Pahang
5087 Perak
5088 Perlis
5089 Portugees Indië
5090 Selangor
5091 Sikkim
5092 Sint Vincent en de Grenadinen
5093 Spitsbergen
5094 Trengganu
5095 Aruba
5096 Burkina Faso
5097 Azerbajdsjan
5098 Belarus_Wit-Rusland
5099 Kazachstan
5100 Macedonië
5101 Timor Leste
5102 Servië en Montenegro
5103 Servië
5104 Montenegro
5105 Kosovo
5106 Bonaire
5107 Curacao
5108 Saba
5109 Sint Eustatius
5110 Sint Maarten
5111 Zuid-Soedan
5112 Gazastrook en Westelijke Jordaanoever
5113 Republiek Noord Macedonië
6000 Moldavië
6001 Burundi
6002 Finland
6003 Griekenland
6004 Guatemala
6005 Nigeria
6006 Libië
6007 Ierland
6008 Brazilië
6009 Rwanda
6010 Venezuela
6011 IJsland
6012 Liechtenstein
6013 Somalia
6014 Verenigde Staten van Amerika
6015 Bolivia
6016 Australië
6017 Jamaica
6018 Luxemburg
6019 Tsjaad
6020 Mauritanië
6021 Kyrgyzstan
6022 China
6023 Afganistan
6024 Indonesië
6025 Guyana
6026 Noordviëtnam
6027 Noorwegen
6028 San Marino
6029 Duitsland
6030 Nederland
6031 Kambodja
6032 Fiji
6033 Bahama eilanden
6034 Israël
6035 Nepal
6036 Zuidkorea
6037 Spanje
6038 Oekraine
6039 Grootbrittannië
6040 Niger
6041 Haïti
6042 Jordanië
6043 Turkije
6044 Trinidad en Tobago
6045 Joegoslavië
6046 Bovenvolta
6047 Algerije
6048 Gabon
6049 Noordkorea
6050 Oezbekistan
6051 Sierra Leone
6052 Brits Honduras
6053 Canarische eilanden
6054 Frans Polynesië
6055 Gibraltar
6056 Portugees Timor
6057 Tadzjikistan
6058 Britse Salomons-eilanden
6059 Sao Tomé en Principe
6060 Sint Helena
6061 Tristan Da Cunha
6062 Westsamoa
6063 Toerkmenistan
6064 Georgië
6065 Bosnië-Herzegovina
6066 Tsjechië
6067 Slowakije
6068 Federale Republiek Joegoslavië
6069 Democratische Republiek Congo
7001 Uganda
7002 Kenya
7003 Malta
7004 Barbados
7005 Andorra
7006 Mexico
7007 Costa Rica
7008 Gambia
7009 Syrië
7011 Nederlandse Antillen_oud
7012 Zuidjemen
7014 Egypte
7015 Argentinië
7016 Lesotho
7017 Honduras
7018 Nicaragua
7020 Pakistan
7021 Senegal
7023 Dahomey
7024 Bulgarije
7026 Maleisië
7027 Dominicaanse Republiek
7028 Polen
7029 Rusland_oud
7030 Britse Maagdeneilanden
7031 Tanzania
7032 El Salvador
7033 Sri Lanka
7034 Soedan
7035 Japan
7036 Hongkong
7037 Panama
7038 Uruguay
7039 Ecuador
7040 Guinee
7041 Maldiven
7042 Thailand
7043 Libanon
7044 Italië
7045 Koeweit
7046 India
7047 Roemenië
7048 Tsjechoslowakije
7049 Peru
7050 Portugal
7051 Oman
7052 Mongolië
7053 Samoa
7054 Verenigde Arabische Emiraten
7055 Tibet
7057 Nauru
7058 Nederlands Nieuwguinea
7059 Tanganyika
7060 Palestina
7062 Brits Westindië
7063 Portugees Afrika
7064 Letland
7065 Estland
7066 Litouwen
7067 Brits Afrika
7068 Belgisch Congo
7070 Brits Indië
7071 Noordrhodesië
7072 Zuidrhodesië
7073 Saarland
7074 Frans Indo China
7075 Brits Westborneo
7076 Goudkust
7077 Ras El Cheima
7079 Frans Congo
7080 Siam
7082 Brits Oostafrika
7083 Brits Noordborneo
7084 Bangladesh
7085 Duitse Democratische Republiek
7087 Madeira-eilanden
7088 Amerikaanse Maagdeneilanden
7089 Australische Salomonseilanden
7091 Spaanse Sahara
7092 Caymaneilanden
7093 Caicoseilanden
7094 Turkseilanden
7095 Brits Territorium in Antarctica
7096 Brits Territorium in de Indische Oceaan
7097 Cookeilanden
7098 Tokelau eilanden
7099 Nieuwcaledonië
8000 Hawaii eilanden
8001 Guam
8002 Amerikaans Samoa
8003 Midway
8004 Ryukyueilanden
8005 Wake
8006 Pacific eilanden
8008 Grenada
8009 Marianen
8010 Cabinda
8011 Canton en Enderbury
8012 Christmaseiland
8013 Cocoseilanden
8014 Faeröer
8015 Montserrat
8016 Norfolk
8017 Belize
8018 Tasmanië
8019 Turks en Caicoseilanden
8020 Puerto Rico
8021 Papua Nieuwguinea
8022 Solomoneilanden
8023 Benin
8024 Viëtnam
8025 Kaapverdië
8026 Seychellen
8027 Kiribati
8028 Tuvalu
8029 Sint Lucia
8030 Dominica
8031 Zimbabwe
8032 Doebai
8033 Nieuwehebriden
8034 Kanaaleilanden
8035 Man
8036 Anguilla
8037 Saint Kitts Nevis
8038 Antigua
8039 Sint Vincent
8040 Gilberteilanden
8041 Panamakanaalzone
8042 Saint Kitts Nevis Anguilla
8043 Belau
8044 Republiek van Palau
8045 Antigua en Barbuda
9000 Newfoundland
9001 Nyasaland
9003 Eritrea
9005 Ifni
9006 Brits Kameroen
9007 Kaiser Wilhelmsland
9008 Kongo
9009 Kongo Kinshasa
9010 Madagaskar
9013 Kongo Brazzaville
9014 Leewardeilanden
9015 Windwardeilanden
9016 Frans gebied van Afars en Issas
9017 Phoenixeilanden
9020 Portugees Guinee
9022 Duits Zuidwestafrika
9023 Namibië
9027 Brits Somaliland
9028 Italiaans Somaliland
9030 Nederlands Indië
9031 Brits Guyana
9036 Swaziland
9037 Katar
9041 Aden
9042 Zuidarabische Federatie
9043 Equatoriaalguinee
9044 Spaans Guinee
9047 Verenigde Arabische Republiek
9048 Bermuda
9049 Sovjetunie
9050 Duits Oostafrika
9051 Zanzibar
9052 Ceylon
9053 Muscat en Oman
9054 Trucial Oman
9055 Indo China
9056 Marshalleilanden
9057 Sarawak
9058 Brits Borneo
9060 Sabah
9061 Aboe Dhabi
9062 Adjman
9063 Basoetoland
9064 Bechuanaland
9065 Foedjaira
9066 Frans Kameroen
9067 Johore
9068 Korea
9069 Labuan
9070 Oem el Koewein
9071 Oostenrijk Hongarije
9072 Portugees Oost Afrika
9073 Portugees West Afrika
9074 Sjardja
9075 Straits Settlements
9076 Abessinië
9077 Frans West Afrika
9078 Frans Equatoriaal Afrika
9081 Oeroendi
9082 Roeanda Oeroendi
9084 Goa
9085 Dantzig
9086 Centrafrika
9087 Djibouti
9088 Transjordanië
9089 Bondsrepubliek Duitsland
9090 Vanuatu
9091 Niue
9092 Spaans Noordafrika
9093 Westelijke Sahara
9094 Micronesia
9095 Svalbardeilanden
9999 Internationaal gebied.
Execute. 

VALUE LABELS Landtype
1 Westers
2 Niet Westers.

VALUE LABELS LANDAKTUEEL
1200	Duitsland
1201	Voormalig Joegoslavië
1202	Noorwegen
1203	Oostenrijk
1204	Polen
1205	Portugal
1206	Voormalig Sovjet-Unie
1207	Spanje
1208	Voormalig Tsjecho-Slowakije
1209	Antigua en Barbuda
1210	Belize
1211	Canada
1212	Guyana
1213	Jamaica
1214	Montserrat
1215	Voormalige Nederlandse Antillen en Aruba
1216	Saint Kitts en Nevis
1217	Turks- en Caicoseilanden
1218	Verenigde Staten van Amerika
1219	China
1220	India
1221	Indonesië
1222	Israël
1223	Japan
1224	Jemen
1225	Jordanië
1226	Maleisië
1227	Myanmar
1228	Oman
1229	Sri Lanka
1230	Thailand
1231	Verenigde Arabische Emiraten
1232	Vietnam
1233	Angola
1235	Botswana
1236	Burkina Faso
1237	Burundi
1238	Congo_DR
1239	Djibouti
1240	Egypte
1241	Equatoriaal-Guinea
1242	Ethiopië
1243	Ghana
1244	Guinee-Bissau
1245	Kaapverdië
1246	Kameroen
1247	Kenia
1248	Congo
1249	Lesotho
1250	Malawi
1251	Marokko
1252	Mozambique
1253	Namibië
1254	Senegal
1255	Seychellen
1256	Somalië
1257	Tanzania
1258	Tsjaad
1259	Zambia
1260	Zimbabwe
1261	Australië
1262	Palau
1263	Kiribati
1265	Papoea-Nieuw-Guinea
1266	Salomonseilanden
1267	Vanuatu
1268	Saint-Vincent en de Grenadinen
1269	Zuid-Korea
1301	Micronesië
1302	Panama
1303	Sint-Helena
1304	Verre eilanden van de Verenigde Staten
1305	Benin
1400	Timor Leste
1401	Samoa
5002	Frankrijk
5003	Zwitserland
5006	Cuba
5007	Suriname
5008	Tunesië
5010	België
5012	Iran
5013	Nieuw-Zeeland
5014	Zuid-Afrika
5015	Denemarken
5017	Hongarije
5018	Saoedi-Arabië
5019	Liberia
5021	Chili
5023	Togo
5025	Laos
5027	Filippijnen
5029	Mali
5030	Ivoorkust
5032	Monaco
5033	Colombia
5034	Albanië
5037	Singapore
5038	Paraguay
5039	Zweden
5040	Cyprus
5042	Brunei
5043	Irak
5044	Mauritius
5045	Vaticaanstad
5052	Taiwan
5057	Bahrein
5058	Bhutan
5060	Comoren
5061	Falklandeilanden
5062	Frans Guyana
5065	Groenland
5066	Guadeloupe
5068	Macau
5069	Martinique
5071	Pitcairneilanden
5073	Réunion
5074	Saint Pierre en Miquelon
5076	Tonga
5077	Wallis en Futuna
5084	Mayotte
5111	Zuid-Soedan
5112	Gazastrook en Westelijke Jordaanoever
6002	Finland
6003	Griekenland
6004	Guatemala
6005	Nigeria
6006	Libië
6007	Ierland
6008	Brazilië
6009	Rwanda
6010	Venezuela
6011	IJsland
6012	Liechtenstein
6015	Bolivia
6018	Luxemburg
6020	Mauritanië
6023	Afghanistan
6028	San Marino
6030	Nederland
6031	Cambodja
6032	Fiji
6033	Bahamas
6035	Nepal
6039	Verenigd Koninkrijk
6040	Niger
6041	Haïti
6043	Turkije
6044	Trinidad en Tobago
6047	Algerije
6048	Gabon
6049	Noord-Korea
6051	Sierra Leone
6054	Frans-Polynesië
6055	Gibraltar
6059	Sao Tomé en Principe
7001	Uganda
7003	Malta
7004	Barbados
7005	Andorra
7006	Mexico
7007	Costa Rica
7008	Gambia
7009	Syrië
7015	Argentinië
7017	Honduras
7018	Nicaragua
7020	Pakistan
7024	Bulgarije
7027	Dominicaanse Republiek
7030	Britse Maagdeneilanden
7032	El Salvador
7034	Soedan
7036	Hongkong
7038	Uruguay
7039	Ecuador
7040	Guinee
7041	Maldiven
7043	Libanon
7044	Italië
7045	Koeweit
7047	Roemenië
7049	Peru
7052	Mongolië
7057	Nauru
7084	Bangladesh
7088	Amerikaanse Maagdeneilanden
7092	Caymaneilanden
7095	Antarctica
7096	Brits territorium in de Indische Oceaan
7097	Cookeilanden
7098	Tokelau-eilanden
7099	Nieuw-Caledonië
8001	Guam
8002	Amerikaans Samoa
8008	Grenada
8009	Noordelijke Marianen
8014	Faeröer
8016	Norfolk
8020	Puerto Rico
8028	Tuvalu
8029	Sint Lucia
8030	Dominica
8034	Kanaaleilanden
8035	Man
8036	Anguilla
9003	Eritrea
9010	Madagaskar
9036	Swaziland
9037	Katar
9048	Bermuda
9056	Marshalleilanden
9086	Centraal-Afrikaanse Republiek
9091	Niue
9999	Onbekend.
Execute.

VALUE LABELS LANDAKTUEEL5
0	Alle landen
1	Nederland
2	Marokko
3	Turkije
4	Suriname
5                Nederlandse Antillen en Aruba_inc_voormalig
6	Overige niet-westerse landen
7	Overige westerse landen
8	Onbekend
9	Niet-westerse landen.
Execute. 

VALUE LABELS ETNGRP
0	Autochtoon
1	Marokko
2	Turkije
3	Suriname
4	Voormalige Nederlandse Antillen en Aruba
5	Overige niet westerse landen
6	Overige westerse landen
7	Onbekend.
Execute. 

VALUE LABELS WERELDDEEL
1	Afrika
2	Amerika
3	Azië
4	Europa
5	Oceanië.
Execute.

VARIABLE LABELS LANDTYPE 'Type land Westers/ niet Westers'. 
VARIABLE LABELS LANDAKTUEEL 'Standaard landcodering voo publicatie (met indikkingen)'.
VARIABLE LABELS ETNGRP 'Migratieachtergrond (8 groepen)'. 

* Encoding: UTF-8.
* Encoding: UTF-8

**======================== VALUE LABELS Gemeente, buurt en wijkcodes ======================***

VALUE LABELS bc2020
30000	Appingedam-Centrum
30001	Appingedam-West
30002	Appingedam-Oost
30007	Verspreide huizen Damsterdiep en Eemskanaal
30008	Verspreide huizen ten zuiden van Eemskanaal
30009	Verspreide huizen ten noorden van het Damsterdiep
100101	Centrum
100202	Over de Gracht
100203	Scheepvaartbuurt
100204	Steenbakkersbuurt
100205	Tuikwerderrak
100221	Bosplan Tuikwerderrak
100306	Doklanden
100307	Farmsum
100308	Oosterveld
100309	Koveltemp
100410	Vliethoven
100411	Vogelbuurt
100412	Tuikwerd
100413	Oogstbuurt
100414	Rietkampen
100415	Kruidenoever
100416	Eelwerd
100417	Sikkel
100518	Fivelmonde
100519	Fivelzigt
100520	Dethmerseiland
100622	Kwelderland
100623	Vestingbuurt
100624	Landenbuurt
100625	Zandplatenbuurt
100626	Bornholm
100646	Polarisbuurt
100647	Schrijversbuurt
100727	Uitwierde
100728	Biessum
100730	Nansum
100733	Holwierde
100734	Krewerd
100735	Godlinze
100736	Losdorp
100737	Bierum
100738	Spijk
100739	Buitengebied Noord
100829	Weiwerd
100831	Oosterhorn
100932	Meedhuizen
100940	Borgsweer
100941	Termunterzijl
100942	Termunten
100943	Woldendorp
100944	Wagenborgen
100945	Buitengebied Zuid
100948	Baamsum
140000	Binnenstad-Noord
140001	Binnenstad-Zuid
140002	Binnenstad-Oost
140003	Binnenstad-West
140004	Noorderplantsoen
140005	Hortusbuurt-Ebbingekwartier
140007	UMCG
140008	Stationsgebied
140100	De Meeuwen
140101	Oosterpoort
140102	Herewegbuurt
140103	Rivierenbuurt
140104	Grunobuurt
140105	Badstratenbuurt
140106	Zeeheldenbuurt
140107	Laanhuizen
140108	Stadspark
140109	Martini Trade Park
140200	Oranjebuurt
140201	Noorderplantsoenbuurt
140202	Schildersbuurt
140203	Kostverloren
140300	De Hoogte
140301	Indische buurt
140302	Professorenbuurt
140400	Gorechtbuurt
140401	Vogelbuurt
140402	Bloemenbuurt
140403	Florabuurt
140404	Damsterbuurt
140500	De Linie
140501	Europapark
140502	Eemskanaal
140503	Kop van Oost
140504	Woonschepenhaven
140505	Driebond
140506	Eemspoort
140507	Euvelgunne
140508	Winschoterdiep
140509	Stainkoeln
140510	Roodehaan
140511	Waterhuizen
140600	Sterrebosbuurt
140601	Coendersborg
140602	Klein Martijn
140603	Villabuurt
140604	Helpman
140605	De Wijert
140606	De Wijert-Zuid
140700	Corpus den Hoorn
140701	Hoornse Meer
140702	Hoornse Park
140703	Van Swieten
140704	Piccardthof
140705	Bruilweering
140800	Hoogkerk Dorp
140801	Hoogkerk-Zuid
140802	Westpoort
140803	Vierverlaten
140804	Zuidwending
140805	Leegkerk
140806	Gravenburg
140807	Suikerfabriekterrein
140808	Peizerweg
140809	Bangeweer
140810	De Buitenhof
140811	Kranenburg
140812	De Kring
140900	Vinkhuizen-Noord
140901	Vinkhuizen-Zuid
140902	Hoendiep
140903	Friesestraatweg
140904	Reitdiep
140905	Dorkwerd
140906	De Held
140907	Westpark
141000	Selwerd
141001	Paddepoel-Zuid
141002	Paddepoel-Noord
141003	Zernike Campus
141004	Selwerderhof
141005	Tuinwijk
141100	Beijum-West
141101	Beijum-Oost
141102	De Hunze
141103	Van Starkenborgh
141104	Noorderhoogebrug
141105	Het Witte Lam
141106	Koningslaagte
141107	Hunzeboord
141200	Lewenborg-Noord
141201	Lewenborg-Zuid
141202	Lewenborg-West
141203	Oosterhoogebrug
141204	Ulgersmaborg
141205	Hunzepark
141206	Zilvermeer
141207	Kardinge
141208	Drielanden
141209	Noorddijk
141210	Ruischerbrug
141211	Ruischerwaard
141300	Middelbert
141301	Engelbert
141302	Klein Harkstede
141400	Meeroevers
141401	Harkstede GN
141402	Lageland GN
141403	Groenewei
141404	Tersluis
141405	De Zeilen
141406	De Wierden
141500	Ten Boer Dorp
141501	Buitengebied Ten Boer-Zuid
141502	Garmerwolde
141503	Thesinge
141504	Sint Annen
141505	Buitengebied Ten Boer-Noord
141506	Bedrijventerrein Ten Boer
141600	Ten Post Dorp
141601	Lellens
141602	Woltersum
141603	Winneweer
141604	Wittewierum
141605	Buitengebied Ten Post
141700	Haren-Centrum
141701	Haren-Zuidwest
141702	Haren-Zuidoost
141703	Haren-Noord
141704	Essen
141705	Buitengebied Haren-Noordwest
141706	Nesciopark
141707	Paterswoldsemeer
141708	Buitengebied Haren-Zuidoost
141709	Wolddeelen
141710	Buitengebied Haren-Zuidwest
141800	Oosterhaar
141801	Tuindorp
141802	Felland
141803	Buitengebied Haren-Noordoost
141900	Glimmen Dorp
141901	Onnen Dorp
141902	Noordlaren Dorp
141903	Buitengebied Glimmen
141904	Buitengebied Onnen
141905	Buitengebied Noordlaren
141906	Zuidlaardermeer
141907	Noordlaarderbos
141908	Appelbergen Glimmen
141909	Appelbergen Onnen
240000	Loppersum
240001	Garrelsweer
240002	Wirdum
240003	Wirdumerdraai
240005	Winneweer gedeeltelijk
240008	Verspreide huizen Eemskanaal en Damsterdiep
240009	Verspreide huizen ten noorden van het Damsterdiep
240100	Stedum
240101	Westeremden
240102	Garsthuizen gedeeltelijk
240109	Verspreide huizen Stedum inclusief Startenhuizen
240200	Middelstum
240201	Westerwijtwerd
240202	Huizinge
240203	Toornwerd
240209	Verspreide huizen Middelstum
240300	t Zandt
240301	Zeerijp
240302	Zijldijk
240303	Leermens
240304	Oosterwijtwerd
240305	Eenum
240309	Verspreide huizen t Zandt
340101	Centrum Almere Haven
340102	De Werven
340103	De Hoven
340104	De Meenten
340105	De Grienden
340106	De Marken
340107	De Gouwen
340108	De Wierden
340109	De Velden
340110	Overgooi
340111	De Laren
340171	De Steiger
340173	Stichtsekant
340199	Overig Almere Haven
340201	Centrum Almere Stad
340202	Filmwijk
340203	Danswijk
340204	Parkwijk
340205	Verzetswijk
340206	Waterwijk
340207	Tussen de Vaarten Noord
340208	Tussen de Vaarten Zuid
340209	Staatsliedenwijk
340210	Kruidenwijk
340211	Stedenwijk
340212	Muziekwijk Noord
340213	Muziekwijk Zuid
340214	Literatuurwijk
340215	Noorderplassen
340271	Randstad
340272	Markerkant
340273	Hollandsekant
340274	Gooisekant
340275	Veluwsekant
340276	Sallandsekant
340299	Overig Almere Stad
340301	Centrum Almere Buiten
340302	Oostvaardersbuurt
340303	Seizoenenbuurt
340304	Molenbuurt
340305	Bouwmeesterbuurt
340306	Landgoederenbuurt
340307	Faunabuurt
340308	Bloemenbuurt
340309	Regenboogbuurt
340310	Indischebuurt
340311	Eilandenbuurt
340312	Stripheldenbuurt
340313	Sieradenbuurt
340371	Poldervlak
340372	De Vaart
340373	Buitenvaart
340399	Overig Almere Buiten
340401	Europakwartier
340402	Columbuskwartier
340403	Homeruskwartier
340404	Olympiakwartier
340405	Duin
340471	Hogekant
340472	Middenkant
340473	Lagekant
340499	Overig Almere Poort
340502	Vogelhorst
340503	Nobelhorst
340571	Twentsekant
340599	Overig Almere Hout
340699	Overig Almere Pampus
370100	Stadskanaal Centrum
370101	Maarsstee
370102	Maarswold
370103	Maarsveld
370104	De Hagen
370105	Vogelwijk en De Borgen
370106	Industriegebied Vleddermond
370107	Dideldom
370108	Parkwijk
370109	Stadskanaal Noord Landskant
370110	Stadskanaal Noord Centrum
370111	Stadskanaal Noord
370112	Waterland
370200	Musselkanaal Centrum
370201	Musselkanaal Zuid
370202	Musselkanaal Noord
370203	Ceresdorp
370300	Onstwedde
370301	Holte
370308	Onstwedde Buitengebied Noord
370309	Onstwedde Buitengebied Zuid
370400	Mussel
370401	Kopstukken
370402	Vledderveen
370409	Mussel Buitengebied
370500	Alteveer
370509	Alteveer Buitengebied
470000	Veendam-Centrum
470001	Veendam-Oude Ae
470002	Veendam-Middenweg en omgeving
470003	Veendam en omgeving station
470004	Veendam-Zuid
470005	Veendam-Sorghvliet
470006	Veendam-industriegebied
470007	Buitenwoel
470100	Borgercompagnie gedeeltelijk
470101	Ommelanderwijk
470102	Zuidwending
470109	Verspreide huizen
470200	Wildervank
470201	Boven-Wildervank
470202	Bareveld
470203	Wildervanksterdallen
470209	Verspreide huizen
500000	Centrum
500001	Eerste woonwijk
500002	Tweede woonwijk
500003	Derde woonwijk
500004	Buurt 4
500005	Buurt 5
500006	Zuidlob
500007	Middengebied
500008	Knardijkgebied
500009	Trekkersveld
500010	Horstenparc
590000	Buitenpost
590001	Twijzel
590002	Kootstertille
590003	Twijzelerheide
590004	Gerkesklooster
590005	Verspreide huizen Buitenpost
590006	Verspreide huizen Twijzel
590007	Verspreide huizen Kootstertille
590008	Verspreide huizen Twijzelerheide
590009	Verspreide huizen Gerkesklooster
590100	Stroobos
590102	Drogeham
590103	Augustinusga
590107	Verspreide huizen Stroobos
590108	Verspreide huizen Drogeham
590109	Verspreide huizen Augustinusga
590200	Surhuisterveen
590201	Harkema
590202	Surhuizum
590203	Boelenslaan
590206	Verspreide huizen Surhuisterveen
590207	Verspreide huizen Harkema
590208	Verspreide huizen Surhuizum
590209	Verspreide huizen Boelenslaan
600000	Nes
600001	Buren
600002	Ballum
600003	Hollum
600007	Verspreide huizen Ballum
600008	Verspreide huizen Nes
600009	Verspreide huizen Hollum
720001	De Spiker en het industrieterrein Hermes
720002	Trebolbuurt
720003	Plan-Zuid
720004	Oosterpark
720005	Koningsbuurt
720006	Binnenstad
720007	Industriehaven en omgeving
720009	Verspreide huizen Harlingen
720100	Midlum
720109	Verspreide huizen Midlum
720200	Wijnaldum
720209	Verspreide huizen Wijnaldum
740100	Noord
740101	Centrum
740102	Midden
740103	Nijehaske
740104	De Greiden
740105	De Heide
740106	De Akkers
740107	Skoatterwald
740108	Het meer
740109	Nieuweschoot
740110	Haskerveen
740201	Terband
740202	Luinjeberd
740203	Tjalleberd
740204	Gersloot
740205	Gersloot-polder
740301	De Knipe
740302	Bontebok
740401	Oudeschoot
740402	Mildam
740403	Katlijk
740404	Nieuwehorne
740405	Oudehorne
740406	Jubbega
740407	Hoornsterzwaag
740601	Oranjewoud
740701	Haskerdijken
740702	Nieuwebrug
740901	Akkrum
740902	Nes
740903	Aldeboarn
801001	De Waag
801002	Nieuwestad
801003	Oldehove
801004	Grote Kerkbuurt
801005	Hoek
801006	Blokhuisplein
801007	Zaailand
801008	Stationskwartier
801101	Tulpenburg
801102	Oranjewijk
801103	Achter de Hoven
801104	Schepenbuurt
801105	Wielenpôlle
801106	Huizum-Dorp
801107	Huizum-Sixma
801108	Huizum-Bornia
801109	Huizum-Badweg
802001	Oldegalieën
802002	Bloemenbuurt
802003	Cambuursterpad
802004	Zamenhofpark
802005	Cambuur
802006	Zeeheldenbuurt
802007	Indische buurt
802008	Molenpad
802009	Welgelegen
803001	Transvaalwijk
803002	Bonifatius
803003	Rengerspark
803004	Vogelwijk
803005	Sonnenborgh
803006	Valeriuskwartier
803007	Magere Weide
803101	Westeinde
803102	Buitengebied Noordwest
803201	Vossepark
803202	Helicon
803203	Harlingervaart Noord
804001	Hollanderwijk
804002	Gerard Dou
804003	Julianapark
804004	Jan van Scorelbuurt
804101	Nijlân
804102	De Zwette I Harlingervaart
804103	De Zwette II Zwettehaven
804104	De Zwette III Schenkenschans
804105	De Zwette IV Businesspark
804106	De Zwette V Newton
804107	De Zwette VI Deinumerpolder
804108	EnergieCampus Sylsterrak
804109	Buitengebied De Zwette
804110	Buitengebied West
805001	Heechterp
805002	Schieringen
805003	De Centrale
805101	Camminghaburen-Noord
805102	Camminghaburen-Midden
805103	Camminghaburen-Zuid
805104	Grote Wielen
805105	De Groene Ster
806001	Bilgaard
806002	Havankpark
806003	Vierhuisterweg en omstreken
806101	Vrijheidswijk-West
806102	Vrijheidswijk-Oost
806201	Lekkum
806202	Snakkerburen
806203	Buitengebied Lekkum en Miedum
806204	Blitsaerd
806205	Jelsum
806206	Buitengebied Jelsum
806207	Koarnjum
806208	Buitengebied Koarnjum
806209	Britsum
806210	Buitengebied Britsum
806301	Stiens
806302	Buitengebied Stiens
806303	Feinsum
806304	Buitengebied Feinsum
806305	Hijum
806306	Buitengebied Hijum
806307	Alde Leie
807001	Aldlân-Oost
807002	Aldlân-West
807003	Rapenburg
807004	Hemrik
807101	Goutum
807201	HempensenTeerns
807202	Buitengebied Hempens
807203	Zuiderburen
807301	Techum
807302	Wiarda
807303	De Werp
807304	De Zuidlanden
807305	De Klamp
807401	Barrahûs
807402	Middelsee
808001	Wirdum
808002	Swichum
808003	Buitengebied Wirdum
808004	Wergea
808005	Buitengebied Wergea
808006	Warstiens
808007	Warten
808008	Buitengebied Warten
808101	Wytgaard
808102	Buitengebied Wytgaard
808103	Mantgum
808104	Buitengebied Mantgum
808105	Weidum
808106	Buitengebied Weidum
808107	Jellum
808108	Bears
808109	Jorwert
808110	Buitengebied Jorwert
808111	Hilaard
808112	Buitengebied Hilaard
808113	Húns
808114	Leons
808115	Baard
808116	Easterlittens
808117	Buitengebied Easterlittens
808201	Reduzum
808202	Buitengebied Reduzum
808203	Eagum
808204	Idaerd
808205	Friens
808206	Grou
808207	Buitengebied Grou
808208	Jirnsum
808209	Buitengebied Jirnsum
850101	Appelscha-Bruggelaan
850102	Appelscha-De Valouwe
850103	Appelscha-Drentseweg
850104	Appelscha-Midden Oost
850105	Appelscha-Midden West
850106	Appelscha-Noord
850107	Appelscha-Steegdenhal
850108	Appelscha-Toogwijk
850109	Appelscha-Vaart
850110	Appelscha-Van Emstweg
850111	Appelscha-Buitengebied
850201	Donkerbroek-Noord
850202	Donkerbroek-Zuid
850203	Donkerbroek-Buitengebied
850301	Elsloo
850302	Elsloo-Buitengebied
850401	Fochteloo
850402	Fochteloo-Buitengebied
850501	Haule
850502	Haule-Buitengebied
850601	Haulerwijk-Bruïneweg
850602	Haulerwijk-Hoofdweg
850603	Haulerwijk-Noord-Oost
850604	Haulerwijk-Noord-West
850605	Haulerwijk-Oosterwoldseweg
850606	Haulerwijk-Sinnehiem
850607	Haulerwijk-Industrie
850608	Haulerwijk-Buitengebied
850701	Langedijke
850702	Langedijke-Buitengebied
850801	Makkinga
850802	Makkinga-Buitengebied
850901	Nijeberkoop
850902	Nijeberkoop-Buitengebied
851001	Oldeberkoop-Oost
851002	Oldeberkoop-West
851003	Oldeberkoop-Buitengebied
851101	Oosterwolde-Maden
851102	Oosterwolde-Biezenkamp
851103	Oosterwolde-Prandinga
851104	Oosterwolde-Weemeweg
851105	Oosterwolde-Centrum-Noord-West
851106	Oosterwolde-Centrum-Noord-Oost
851107	Oosterwolde-Noord-Oost
851108	Oosterwolde-Hieming
851109	Oosterwolde-Schottelenburg
851110	Oosterwolde-Duistereweg
851111	Oosterwolde-Slatten
851112	Oosterwolde-Zuid
851113	Oosterwolde-Centrum-Zuid-Oost
851114	Oosterwolde-Iris
851115	Oosterwolde-Snellingerdijk
851116	Oosterwolde-Haerenkwartier
851117	Oosterwolde-Industrie
851118	Oosterwolde-Buitengebied
851201	Ravenswoud
851202	Ravenswoud-Buitengebied
851301	Waskemeer
851302	Waskemeer-Buitengebied
860101	Bakkeveen-Centrum
860102	Bakkeveen-De Kampen
860103	Bakkeveen-Buitengebied
860201	Beetsterzwaag-Centrum
860202	Beetsterzwaag-Merkelân
860203	Beetsterzwaag-Skeakel
860204	Beetsterzwaag-Talant
860205	Beetsterzwaag-Hup strjitten
860206	Beetsterzwaag-Singels
860207	Beetsterzwaag-Roekebosk
860208	Beetsterzwaag-Olterterp
860209	Beetsterzwaag-Buitengebied
860401	Frieschepalen-Kom
860402	Frieschepalen-Buitengebied
860501	Gorredijk-Centrum
860502	Gorredijk-De Kromten
860503	Gorredijk-IJ buurt
860504	Gorredijk-Bloemenwijk
860505	Gorredijk-Loevestein
860506	Gorredijk-Groene Long
860507	Gorredijk-Miente
860508	Gorredijk-Buitengebied
860601	Hemrik-Kom
860602	Hemrik-Buitengebied
860701	Jonkerslân-Kom
860702	Jonkerslân-Buitengebied
860801	Langezwaag-Kom
860802	Langezwaag-Buitengebied
860901	Lippenhuizen-Kom
860902	Lippenhuizen-Buitengebied
861001	Luxwoude-Kom
861002	Luxwoude-Buitengebied
861101	Nij Beets-Kom
861102	Nij Beets-Buitengebied
861301	Siegerswoude-Kom
861302	Siegerswoude-Buitengebied
861401	Terwispel-Kom
861402	Terwispel-Buitengebied
861501	Tijnje-Kom
861502	Tijnje-Buitengebied
861601	Ureterp-Centrum
861602	Ureterp-Buorfinne
861603	Ureterp-Gilden
861604	Ureterp-De Ekers
861605	Ureterp-Fûgelliet
861606	Ureterp-Drachten-Azeven
861607	Ureterp-Buitengebied
861701	Wijnjewoude-Centrum
861702	Wijnjewoude-Gentiaan
861703	Wijnjewoude-Buitengebied-Kleine Groningen
880000	Schiermonnikoog
880009	Verspreide huizen Schiermonnikoog
900001	Centrum
900002	De Wiken
900003	De Singels
900004	De Drait
900005	De Wiken-Oost
900006	De Venen
900007	De Folgeren
900008	De Swetten
900009	De Bouwen
900010	Noordoost
900011	De Haven
900012	Buitengebied Drachten
900013	De Trisken
900014	Fennepark
900015	Himsterhout
900016	Bedrijvenpark
900017	Vrijburg
900018	Burmaniapark
900120	Opeinde
900121	Rottevalle
900122	Houtigehage
900123	Drachtstercompagnie
900124	Kortehemmen
900125	Boornbergum
900126	De Wilgen
900127	Smalle Ee
900128	De Veenhoop
900129	Goëngahuizen
900130	Oudega
900131	Nijega
900132	De Tike
930000	West-Terschelling
930002	Verspreide huizen West-Terschelling
930110	Midsland
930111	Verspreide huizen Midsland-Zuid
930112	Verspreide huizen Midsland-Noord
930213	Formerum
930214	Verspreide huizen Formerum-Zuid
930215	Verspreide huizen Formerum-Noord
930316	Lies
930317	Verspreide huizen Lies-Zuid
930418	Koegelwieck
930419	Hoorn
930420	Verspreide huizen Hoorn-Zuid
930521	Oosterend
930522	Verspreide huizen Oosterend-Zuid
930523	De Boschplaat
960000	Oost-Vlieland
960009	Verspreide huizen Vlieland
980001	Wolvega-Schipsloot
980002	Wolvega-Om de Noort
980003	Wolvega-Wolvega Noord
980004	Wolvega-De Meulepolle
980005	Wolvega-Vogelbuurt
980006	Wolvega-Stuyversantbuurt
980007	Wolvega-Stationsbuurt
980008	Wolvega-De Scheene
980009	Wolvega-Tuindorp
980010	Wolvega-Schildersbuurt
980011	Wolvega-De Heidepolle
980012	Wolvega-Oranjebuurt
980013	Wolvega-De Muziekbuurt
980014	Wolvega-Centrum
980015	Wolvega-Lindenoord
980016	Wolvega-Staatsliedenbuurt
980017	Wolvega-Bloemenbuurt
980018	Wolvega-De Stedes
980019	Wolvega-Vlinderwijk
980020	Wolvega-Lindewijk
980021	Wolvega-Buitengebied
980101	Nijeholtwolde
980102	Oldeholtwolde
980103	Ter Idzard
980104	Ter Idzard-Buitengebied
980201	Nijelamer
980202	Oldelamer
980301	Langelille
980302	Langeville-Buitengebied
980303	Munnekeburen
980304	Munnekeburen-Buitengebied
980305	Nijetrijne
980401	Scherpenzeel
980402	Scherpenzeel-Buitengebied
980403	Slijkenburg-Spanga
980501	Oldetrijne
980502	Sonnega
980601	Blesdijke
980602	Blesdijke-Buitengebied
980701	De Blesse
980702	Peperga
980801	Steggerda
980802	Steggerda-Buitengebied
980901	De Hoeve
980902	De Hoeve-Buitengebied
980903	Vinkega
981001	Noordwolde-Geldering
981002	Noordwolde-Industrie
981003	Noordwolde-Hoofdstraat
981004	Noordwolde-Haenepolle
981005	Noordwolde-Rotanwijk
981006	Noordwolde-Recreatie
981007	Noordwolde-De Stelling
981008	Noordwolde-Zuid
981009	Noordwolde-Buitengebied
981101	Oosterstreek
981102	Oosterstreek-Buitengebied
981201	Zandhuizen
981301	Boijl
981302	Boijl-Buitengebied
981401	Nijeholtpade
981402	Nijeholtpade-Buitengebied
981501	Oldeholtpade
981502	Oldeholtpade-Buitengebied
1060000	Brinkkwartier
1060001	Erfgoedkwartier
1060002	Overcingel
1060003	Oranjebuurt
1060004	Galgenveld
1060005	Koopmanskwartier
1060006	Cultuureelkwartier
1060007	Oude Gasfabriek
1060008	De Hertenkamp
1060009	Asserbos
1060010	De Esch
1060011	Bomenbuurt
1060012	Zuiderpark
1060100	De Lariks Oost
1060101	Landgoed Lariks
1060102	De Lariks West
1060103	Luchiesland Zuid
1060104	Zuid Molukse Buurt
1060105	Luchiesland Noord
1060200	Oude Molenbuurt
1060201	Dichtershof
1060202	Veningerland
1060203	Zwarte Water
1060204	Componistenbuurt West
1060205	Componistenbuurt Oost
1060300	Dijkveld
1060301	Vreebergen
1060302	Houtlaan
1060303	Amelterhout
1060304	Schildersbuurt
1060305	Vredeveld Noord
1060306	Sluisdennen
1060307	Vredeveld Zuid
1060308	De Dorpen
1060309	GGZ-terrein
1060310	Park Diepstroeten
1060400	Pittelo Zuid
1060401	Pittelo Midden
1060402	Pittelo Noord
1060403	Recreatiepark Pittelo
1060500	De Maten
1060501	De Boskamp
1060502	Baggelhuizen Zuid
1060503	Baggelhuizen Midden
1060504	Baggelhuizen Noord
1060505	Lauwers
1060506	Huize Nassau
1060507	Kazerneterrein
1060508	Westerpark
1060509	Sportpark Stadsbroek
1060600	De VenenenDe Wallen
1060601	De VeldenenDe Stukken
1060602	De LandenenDe Akkers
1060603	De KampenenDe Essen
1060604	Peelerpark
1060700	Messchenveld
1060701	De Messchen
1060702	De Hamels
1060703	De Kleuven
1060704	De Dreven
1060705	De Breeën
1060706	De Hoven
1060707	De Heugten
1060708	De Beemden
1060709	De Hullen
1060710	De Stoepen
1060711	De Goorns
1060712	Bedrijventerrein Marsdijk West
1060713	Bedrijventerrein West
1060714	Bedrijventerrein Oost
1060715	Bedrijventerrein Marsdijk Oost
1060716	Havenkanaal Noordzijde
1060717	Havenkanaal Zuidzijde
1060800	Kloosterveste
1060801	Kloostertuinen
1060802	Kloosterhaven
1060803	Kloosterlanen
1060804	Kloosterhoven
1060805	Kloosterstede
1060806	Kloostergaarde
1060807	Kloosterhage
1060808	Kloosterkade
1060809	Sterrenbeeldenbuurt
1060810	Planetenbuurt
1060811	De Zoom
1060812	De Hoogspanning
1060813	Groene Dijk
1060814	Recreatiepark Zeijerveen
1060815	Kloosterhout
1060816	Kloosterbos
1060817	Uitbreidingsgebied Kloosterveen
1069900	Loon
1069901	Verspreide huizen Loon
1069902	Het grote Veld
1069903	Verspreide huizen Ubbena Oost
1069904	Ubbena
1069905	Verspreide huizen Ubbena West
1069906	Rhee
1069907	Verspreide huizen Ter Aard
1069908	Ter Aard
1069909	Zeijerveld
1069910	Bos en Golf
1069911	Verspreide huizen Witten
1069912	Witten
1069913	Graswijkbuurt
1069914	Verspreide huizen Anreep
1069915	AnreepenSchieven
1069916	Verspreide huizen Schieven
1069917	Natuurgebied Amelte
1091000	Coevorden-Centrum
1091001	Lootuinen
1091002	Poppenhare
1091003	Binnenvree Buitenvree Pikveld
1091004	De Heege
1091006	Klooster
1091007	Ballast
1091008	De Loo
1091009	Verspreide huizen Coevorden
1091010	Holwert
1091011	Hare
1091012	Leeuwerikenveld
1091013	De Heege en De Mars
1091014	Klinkenvlier
1091015	Ossehaar
1091116	Steenwijksmoer
1091117	Verspreide huizen Steenwijksmoer
1091218	Nieuwe Krim
1091219	Verspreide huizen Nieuwe Krim
1091320	Verspreide huizen Weijerswold
1091421	Verspreide huizen Vlieghuis en Padhuis
1092022	Dalen
1092023	Verspreide huizen Dalen
1092024	Wachtum
1092025	Verspreide huizen Wachtum
1092026	Dalerpeel
1092027	Verspreide huizen Dalerpeel
1092028	Dalerveen
1092029	Verspreide huizen Dalerveen
1092030	Stieltjeskanaal
1092031	Verspreide huizen Stieltjeskanaal
1093032	Oosterhesselen
1093033	Verspreide huizen Oosterhesselen
1093034	Gees
1093035	Verspreide huizen Gees
1093036	Zwinderen
1093037	Verspreide huizen Zwinderen
1093038	Geesbrug
1093039	Verspreide huizen Geesbrug
1093068	Verspreide huizen Nieuwlande
1094040	Sleen
1094041	Diphoorn
1094042	Verspreide huizen Sleen
1094043	Noord-Sleen
1094044	t Haantje
1094045	Verspreide huizen t Haantje
1094046	Verspreide huizen Noord-Sleen
1094047	Schoonoord
1094048	De Kiel
1094049	Verspreide huizen De Kiel
1094050	Verspreide huizen Kibbelveen
1094051	Verspreide huizen Schoonoord
1094052	Verspreide huizen Veenoord
1094053	Erm
1094054	Achterste Erm
1094055	Holsloot
1094056	Verspreide huizen Holsloot
1094057	Verspreide huizen Elm
1095058	Zweeloo
1095059	Aalden
1095060	Verspreide huizen Zweeloo
1095061	Meppen
1095062	Verspreide huizen Meppen
1095063	Wezup
1095064	Wezuperbrug
1095065	Benneveld
1095066	Verspreide huizen Benneveld
1095067	Verspreide huizen Wezuperbrug
1140100	Derde Kruisdiep
1140101	Eerste Kruisdiep
1140102	Tramwijk
1140103	Achterdiep
1140104	Weerdingerkanaal
1140106	Siepelveen
1140109	Verspreide huizen Nieuw-Weerdinge
1140200	Roswinkel-Centrum
1140206	Oude Schuttingskanaal
1140208	Roswinkelerstraat
1140209	Verspreide huizen Roswinkel
1140300	Emmer-Compascuum-Centrum
1140301	Emmer-Erfscheidenveen
1140302	Foxel
1140303	Oosterdiep
1140304	Hoofdkanaal
1140309	Verspreide huizen Emmer-Compascuum
1140400	Barger-Compascuum-Centrum
1140401	Scholtenskanaal
1140402	Verlengde Oosterdiep
1140408	Limietweg
1140409	Verspreide huizen Barger-Compascuum
1140500	Nieuw-Dordrecht-Centrum
1140502	Oranjedorp
1140503	Vastenow
1140504	Herenstreek
1140509	Verspreide huizen Nieuw-Dordrecht
1140600	Nieuw-Amsterdam-Centrum
1140601	Barger-Erfscheidenveen
1140608	Langs de Vaart
1140609	Verspreide huizen Nieuw-Amsterdam
1140700	Erica-Centrum
1140701	Amsterdamscheveld
1140702	Beekweg
1140707	Verlengde Vaart
1140708	Ericasestraat
1140709	Verspreide huizen Erica
1140800	Klazienaveen-Noord
1140801	Klazienaveen-Zuid
1140802	Barger-Oosterveen
1140803	Kloostermanswijk
1140804	Dordsedijk
1140806	Derksweg
1140807	Tuinbouwcentrum Klazienaveen
1140809	Verspreide huizen Klazienaveen
1140900	Zwartemeer-Centrum
1140901	Kamerlingswijk
1140909	Verspreide huizen Zwartemeer
1141000	Schoonebeek
1141001	Oosterse Bos en Middendorp
1141002	Westerse Bos
1141003	Zandpol
1141004	Industrieterrein De Vierslagen
1141009	Verspreide huizen Schoonebeek
1141300	Veenoord
1141308	Ermerveen
1141309	Verspreide huizen Veenoord
1142100	Nieuw-Schoonebeek
1142101	Westelijk Nieuw-Schoonebeek
1142102	Oostelijk Nieuw-Schoonebeek
1142109	Verspreide huizen Nieuw-Schoonebeek
1143200	Weiteveen
1143201	Westelijk en oostelijk Weiteveen
1143209	Verspreide huizen Weiteveen
1144000	Emmen-Centrum
1144100	Emmen-omgeving Oude Roswinkelerweg
1144101	Emmen over t spoor
1144200	Emmermeer
1144300	Angelslo
1144400	Emmerhout
1144500	Emmerschans
1144600	Bargeres
1144700	Rietlanden
1144800	Parc Sandur
1144900	Delftlanden
1145000	Barger-Oosterveld
1145100	Weerdinge
1145101	Westenesch
1145109	Verspreide huizen Emmen
1145200	Noordbarge
1145201	Zuidbarge
1145300	Industrieterrein Bargermeer
1145301	Bedrijvenpark A37
1185000	Centrum
1185001	Noord
1185002	Bentinckspark
1185003	Krakeel
1185004	Wolfsbos
1185005	Zuid
1185006	Venesluis
1185007	West
1185008	Oost
1185100	Steenbergerweiden
1185101	Kinholt
1185102	Grittenhof
1185103	Schoonvelde-West
1185104	Schoonvelde-Oost
1185105	Schutlanden-Oost
1185106	Schutlanden-West
1185107	Kattouw
1185108	Trasselt
1185109	Erflanden
1185200	Fluitenberg kern
1185201	Verspreide huizen Fluitenberg
1185300	Elim Kern
1185301	Verspreide huizen Elim-Noord
1185302	Verspreide huizen Elim-Zuid
1185400	Hollandscheveld kern
1185401	Verspreide huizen Hollandscheveld-West
1185402	Verspreide huizen Hollandscheveld-Oost
1185500	Noordscheschut kern
1185501	Verspreide huizen Noordscheschut
1185600	Nieuwlande kern
1185601	Verspreide huizen Nieuwlande
1185700	Nieuweroord kern
1185701	Verspreide huizen Nieuweroord
1185800	Tiendeveen kern
1185801	Verspreide huizen Tiendeveen
1185900	Stuifzand kern
1185901	Verspreide huizen Stuifzand
1186000	Pesse kern
1186001	Verspreide huizen Pesse-Oost
1186002	Verspreide huizen Pesse-West
1186003	Verspreide huizen Pesse-Zuid
1186100	Zuideropgaande Nieuw Moscou
1186201	Industriegebied Toldijk
1186202	Industriegebied Noord A
1186203	Industriegebied Noord B
1186204	Industriegebied Buitenvaart
1186205	Verspreide huizen Alteveer
1186206	Verspreide huizen Nijstad
1190000	Historisch Centrum
1190001	Indische buurt
1190002	Koninginnebuurt
1190100	Galgenkamp
1190101	Oude Vaart
1190200	Heinsiusbuurt
1190201	Staatsliedenbuurt
1190202	Zeeheldenbuurt
1190300	Hesselingen
1190301	Koeberg
1190302	Reestlanden
1190303	Schildersbuurt
1190400	Plantenbuurt
1190401	Scheepsbuurt
1190500	Bloemenbuurt
1190501	Onderwijs-, sportpark
1190600	Veldenbuurt
1190601	Vlinderbuurt
1190602	Vogelbuurt
1190603	Verzetsbuurt
1190700	Drukkersbuurt
1190701	Nieuwveenselanden
1190800	Blankenstein
1190900	Industrieterrein Noord I
1190901	Industrieterrein Noord II
1191000	Industrie Oevers A
1191001	Industrie Oevers B
1191002	Industrie Oevers C
1191003	Industrie Oevers D
1191004	Industrie Oevers E
1191100	Verspreid gebied Meppel Noord
1191101	Verspreid gebied Meppel Oost
1191102	Verspreid gebied Meppel Zuid
1191200	Nijeveen Oost
1191201	Griftebuurt
1191202	Vogelbuurt
1191203	Danninge Erve
1191204	Spijkerserve
1191205	Tussenboerslanden
1191206	Kolderveen
1191207	Kolderveense Bovenboer
1191208	Nijeveense Bovenboer
1191209	Verspreid gebied Nijeveen
1191300	Rogat
1191301	Broekhuizen
1191302	De Schiphorst
1411000	Binnenstad-Noord
1411001	Binnenstad-Zuid
1411002	Ulk en omgeving
1411003	Java en omgeving
1411100	Bornsestraat en omgeving Midden
1411101	Riet Noord
1411102	Arendsboer en omgeving Noord
1411103	Nieuwland
1411104	Arendsboer en omgeving Zuid
1411105	Riet Zuid
1411106	Bornsestraat en omgeving Zuid
1411109	Verspreide huizen wijk 11
1411200	Vriezenveenseweg en omgeving Haghoek Oost
1411201	Parkweg en omgeving
1411202	Vriezenveenseweg en omgeving Haghoek West
1411209	Verspreide huizen wijk 12
1411300	Ootmarsumsestraat en omgeving
1411301	Markgraven
1411302	Rumerslanden
1411303	Wester-Sluitersveldlanden
1411309	Verspreide huizen wijk 13
1411400	Dijkstraat en omgeving
1411401	Rohof en omgeving
1411402	Kerkelanden
1411403	Aalderinkshoek Noordoost
1411404	Aalderinkshoek Zuidoost
1411405	Aalderinkshoek Noordwest
1411406	Aalderinkshoek Zuidwest
1411409	Verspreide huizen wijk 14
1411500	Nieuwstraat en omgeving
1411501	Wonde en omgeving
1411502	Witvoet en omgeving
1411503	Achterlanden en omgeving
1411600	Boomplaats
1411601	Ossenkoppelerhoek-Oost
1411602	Beeklust
1411603	Ossenkoppelerhoek-Midden-Noord
1411604	Ossenkoppelerhoek-West
1411605	Ossenkoppelerhoek-Midden-Zuid
1411700	Hofkamp-West
1411701	Hofkamp-Oost
1411702	Paradijs
1411703	Kollenveld-Bolkshoek
1411709	Verspreide huizen Hofkamp
1411800	Schelfhorst-Zuidwest
1411801	Drakensteyn en omgeving
1411802	Schelfhorst-Noordwest
1411803	Havezathe
1411804	Schelfhorst-Noordoost
1411805	Schelfhorst-Zuidoost
1411806	Veenelanden
1411900	Groeneveld
1411901	Kanaalzijde
1411902	Leemslagen-Noord
1411903	Leemslagen-Zuid
1411904	Zeven Bosjes
1411905	Leemslagen-Oost
1411906	Huttenveld
1411907	Maardijk
1411908	De Grens
1411909	Nijrees
1411910	Verspreide huizen wijk 19
1412000	Aadorp-West
1412001	Aadorp-Oost
1412002	Bedrijvenpark Twente
1412009	Verspreide huizen wijk 20
1412100	Bornerbroek
1412109	Verspreide huizen wijk 21
1470000	Bornsche Maten
1470001	Borne Centrum
1470002	t Wensink Noord
1470003      t Wensink Zuid
1470004	Dikkerslaan-Molenkampsweg en omgeving
1470005	Lettersveld I
1470006	Lettersveld II
1470007	Tichelkamp
1470008	Stroom-Esch
1470009	Verspreide huizen Borne-West
1470100	Verspreide huizen Borne-Oost
1470101	Zenderen
1470102	Verspreide huizen Zenderen
1470105	Hertme
1470106	Verspreide huizen Hertme
1480101	Dalfsen Centrum
1480102	Vechtvliet-Leemcule
1480103	Pleijendal
1480104	Polhaar
1480105	Ankummer Es
1480106	Gernermarke-Oosterdalfsen
1480107	Bedrijventerrein Rondweg
1480108	Ankum kern
1480109	Verspreide huizen Ankum
1480110	Verspreide huizen Dalfserveld
1480111	Verspreide huizen Welsum-Gerner
1480112	Verspreide huizen Hessum-Rechteren
1480113	Verspreide huizen Dalmsholte
1480114	Verspreide huizen Millingen
1480115	Verspreide huizen Emmen-De Marshoek
1480116	Hoonhorst kern
1480117	Verspreide huizen Lenthe
1480118	Oudleusen kern
1480119	Verspreide huizen Oudleusenerveld
1480201	Nieuwleusen Noord
1480202	Nieuwleusen Centrum-noord
1480203	Nieuwleusen Centrum-zuid
1480204	Nieuwleusen Zuid
1480205	Westerbouwlanden
1480206	Bedrijventerrein De Grift
1480207	Bedrijventerrein De Evenboer
1480208	Verspreide huizen De Meele
1480209	Verspreide huizen Oosterhulst
1480210	Verspreide huizen Ruitenveen
1480211	Verspreide huizen Oosteinde
1480301	Lemelerveld kern west
1480302	Lemelerveld kern oost
1480303	Nieuwe Landen
1480304	Bedrijventerrein t Febriek
1480305	Verspreide huizen Lemelerveld west
1480306	Verspreide huizen Lemelerveld oost
1500101	Centrum
1500102	Bergkwartier
1500103	Noordenbergkwartier
1500104	Noordenbergsingel
1500105	Singel
1500106	Raambuurt
1500107	Knutteldorp
1500201	De Hoven
1500301	Noorderplein
1500302	Zwolseweg
1500303	Lange Zandstraat
1500304	Zandweerd-Zuid
1500305	Zandweerd-Noord
1500306	Schrijversbuurt
1500401	Rode Dorp
1500402	Oudegoedstraat
1500403	Burgemeestersbuurt
1500404	Oosterstraat
1500405	Rielerweg-West
1500406	Rielerweg-Oost
1500407	Brinkgreven
1500501	Borgele
1500502	Platvoet
1500601	Ludgeruskwartier
1500602	Tuindorp
1500603	Rollecatekwartier
1500604	Oranjekwartier
1500605	Landsherenkwartier
1500606	Steenbrugge
1500701	Rivierenbuurt
1500702	Deltabuurt
1500703	Hoornwerk
1500704	Industrieterrein
1500705	Kloosterlanden
1500706	Epse-Noord
1500801	Het Oostrik
1500802	Groot Douwel
1500803	Blauwenoord
1500901	Op den Haar
1500902	Steinvoorde
1500903	Graveland
1500904	Het Jeurlink
1500905	Het Fetlaer en Spijkvoorder Enk
1500906	Spikvoorde
1500907	Overig Colmschate-Noord
1501001	Snipperling
1501002	Dorp Colmschate
1501003	De Scheg
1501004	Colmschaterenk
1501005	Roessink
1501006	Het Bramelt
1501007	Essenerveld
1501008	Swormink
1501009	Handelspark De Weteringen
1501010	Bannink
1501101	Dorp Diepenveen
1501102	Rande
1501103	Tjoene
1501201	Dorp Schalkhaar
1501202	Averlo en Frieswijk
1501301	Okkenbroek
1501401	Dorp Lettele
1501402	Oude Molen
1501403	Buitengebied Lettele en Okkenbroek
1501501	Dorp Bathmen
1501502	Loo
1501503	Dortherhoek
1501504	Zuidloo
1501505	Oxerhof
1530000	City
1530001	Lasonder, Zeggelt
1530002	De Laares
1530003	De Bothoven
1530004	Hogeland-Noord
1530005	Getfert
1530006	Veldkamp-Getfert-West
1530007	Horstlanden-Stadsweide
1530008	Boddenkamp
1530100	Velve-Lindenhof
1530101	Wooldrik
1530102	Hogeland-Zuid
1530103	Varvik-Diekman
1530104	Sleutelkamp
1530105	t Weldink
1530106	De Leuriks
1530200	Cromhoffsbleek-Kotman
1530201	Boswinkel-De Braker
1530202	Pathmos
1530203	Stevenfenne
1530204	Stadsveld-Zuid
1530205	Elferink-Heuwkamp
1530206	Stadsveld-Noord-Bruggert
1530207	t Zwering
1530208	Ruwenbos
1530300	Tubantia-Toekomst
1530301	Twekkelerveld
1530400	Walhof-Roessingh
1530401	Bolhaar
1530402	Roombeek-Roomveldje
1530403	Mekkelholt
1530404	Deppenbroek
1530405	Voortman-Amelink
1530406	Drienerveld-UT
1530500	Schreurserve
1530501	Ribbelt-Ribbelerbrink
1530502	Park Stokhorst
1530503	Stokhorst
1530600	Stroinkslanden Noord-Oost
1530601	Stroinkslanden-Zuid
1530602	Stroinkslanden Noord-West
1530603	Wesselerbrink Noord-Oost
1530604	Wesselerbrink Zuid-Oost
1530605	Wesselerbrink Zuid-West
1530606	Wesselerbrink Noord-West
1530607	Helmerhoek-Noord
1530608	Helmerhoek-Zuid
1530609	het Brunink
1530700	Industrie- en havengebied
1530701	Marssteden
1530702	Koekoeksbeekhoek
1530703	Kennispark
1530800	Glanerveld
1530801	Bentveld-Bultserve
1530802	Schipholt-Glanermaten
1530803	Eekmaat
1530804	Oikos
1530805	Eilermarke
1530806	De Slank
1530807	Dolphia
1530808	Eekmaat West
1530900	Dorp Lonneker
1530901	Dorp Boekelo
1530902	Buurtschap Lonneker-West
1530903	Noord Esmarke
1530904	Buurtschap Zuid-Esmarke
1530905	Buurtschap Broekheurne
1530906	Buurtschap Usselo
1530907	Boekelerveld
1530908	Buurtschap Twekkelo
1580001	Haaksbergen Kern-1
1580002	Haaksbergen Kern-2
1580003	Haaksbergen Kern-3
1580004	Haaksbergen Kern-4
1580010	Veldmaat 1
1580011	Veldmaat 2
1580020	Leemdijk
1580030	Zienesch
1580040	De Pas
1580041	De Els
1580050	Wolferink 1 en 4
1580051	Wolferink 2
1580052	Wolferink 5
1580053	Wolferink 3
1580060	Hassinkbrink
1580090	Industriegebied West
1580091	Industriegebied Brammelo
1580160	Verspreide huizen Langelo ten noorden van de spoorlijn
1580170	Verspreide huizen Langelo gedeeltelijk en Honesch
1580180	Verspreide huizen Veldmaat ten zuiden van de spoorlijn
1580190	Verspreide huizen Veldmaat ten noorden van de spoorlijn
1580200	Sint Isidorushoeve kern
1580290	Verspreide huizen Sint Isidorushoeve
1580300	Buurse kern
1580390	Verspreide huizen Buurse
1580490	Verspreide huizen Brammelo
1580590	Verspreide huizen Bretelerveld
1580690	Verspreide huizen Stepelo gedeeltelijk
1580900	Haaksbergen Kern-Centrum
1600101	Ane Dorp
1600102	Verspreide huizen Ane
1600201	Verspreide huizen Anerveen
1600301	Verspreide huizen Anevelde
1600401	Balkbrug-Zuidwest
1600402	Balkbrug-Noord
1600403	Balkbrug-Zuidoost
1600404	Balkbrug-Benedenvaart
1600405	Verspreide huizen De Kolonie
1600406	Verspreide huizen Reestgebied ged
1600407	Verspreide huizen Westerhuizingerveld
1600501	Bergentheim Kern
1600502	Verspreide huizen Bergentheimerveen
1600503	Verspreide huizen Oud-Bergentheim
1600601	Brucht
1600701	Collendoorn
1600801	De Krim
1600802	De Krim-Streekdorp
1600803	De Krim-Zuid
1600804	Verspreide huizen De Krim
1600805	Verspreide huizen Nieuwlande
1600901	Dedemsvaart-Noord
1600902	Dedemsvaart-Zuidwest
1600903	Dedemsvaart-Zuidoost
1600904	Rheezerend
1600905	Industriegebied Rollepaal
1600906	Verspreide huizen Colenbranderbos
1600907	Verspreide huizen Dedemsvaart
1600908	Verspreide huizen Ommerkanaal
1600909	Verspreide huizen Reestgebied
1601001	Verspreide huizen Den Velde
1601101	Diffelen
1601201	Gramsbergen Kern
1601202	Gramsbergen Uitbreidingsplan
1601301	Heemserveen
1601401	Verspreide huizen Holtheme-De Haandrik
1601501	Verspreide huizen Holthone
1601601	Hoogenweg
1601701	Kloosterhaar Kern
1601702	Verspreide huizen Kloosterhaar
1601801	Verspreide huizen Loozen
1601901	Lutten Kern
1601902	Verspreide huizen Lutten-West
1601903	Verspreide huizen Lutten-Oost
1601904	Verspreide huizen Oud-Lutten
1602001	Marienberg Kern
1602002	Verspreide huizen Marienberg
1602101	Radewijk
1602201	Rheeze
1602301	Rheezerveen
1602401	Schuinesloot Kern
1602402	Verspreide huizen Schuinesloot
1602501	Sibculo Kern
1602502	Verspreide huizen Sibculo
1602601	Slagharen Kern
1602602	De Belt
1602603	Verspreide huizen Slagharen-Oost
1602604	Verspreide huizen Slagharen-West
1602701	Venebrugge
1602801	Overig Stad Hardenberg
1602802	Industriegebied
1602803	Norden en Hazenbos
1602804	Heemse-Oost Heemsermars
1602805	Heemse-West Heemserbos
1602806	Baalder
1602807	Baalderveld
1602808	Marslanden
1602809	Centrum Saneringsgebied
1602901	Bruchterveld Kern
1602902	Verspreide huizen Bruchterveld
1630101	Hellendoorn-Centrum
1630102	De Höfte
1630103	Den Dam
1630104	De Blenke
1630105	De Zuid Es
1630106	De Noord Es
1630201	Zeeheldenwijk
1630202	Wilhelminawijk
1630203	Gagelman Industrieterrein-Noord
1630301	Nijverdal-Centrum
1630302	Bloemen-Schilderswijk
1630303	Noetsele I
1630304	Noetsele II en III
1630401	Prinsessenwijk
1630402	De Brake
1630403	Konijnenberg
1630404	Nijverdal Oost
1630405	De Blokken
1630406	Groot Lochter
1630407	t Lochter
1630408	n Oaln Diek
1630501	Hellendoorn
1630503	t Hexel
1630504	Boersingel
1630505	Egede, Elen en Rhaan
1630506	Hulsen
1630507	Haarle
1630508	Daarle
1630509	Daalerveen
1630510	Marle
1630601	Hulsen dorp
1630602	Kruidenwijk Oost
1630603	Kruidenwijk Centrum
1630604	Kruidenwijk Noord
1630605	Kruidenwijk West
1630606	Kruidenwijk Zuid
1630700	Dorp Haarle
1630800	Dorp Daarle
1630900	Dorp Daarlerveen
1640000	Binnenstad-Centrum
1640001	Binnenstad-West
1640002	Binnenstad-Oost
1640100	Hengelose Es-Noord
1640101	Tichelwerk
1640102	t Wilbert
1640103	Bedrijventerrein Timmersveld
1640200	Noord
1640201	Elsbeek
1640202	De Noork
1640203	Klein Driene
1640204	t Rot
1640300	Bovenhoek
1640301	Schothorsthoek
1640302	Bartelinkshoek
1640303	Tijertshoek
1640304	Sogtoenhoek
1640305	Bruninkshoek
1640306	Middelhoek
1640307	Molendijkhoek
1640308	Weijinkshoek
1640309	Oosterveld
1640400	Zwavertshoek
1640401	Anninks-enNijhofshoek
1640402	Groot Driene-Zuid
1640403	Groot Driene-Noord
1640500	Bedrijventerrein Twentekanaal-Zuid II
1640501	Berflo Es Noord
1640502	Berflo Es Zuid
1640503	Bedrijventerrein Twentekanaal-Noord II
1640504	Veldwijk-Noord
1640505	Veldwijk-Zuid
1640506	Boeldershoek
1640600	Bedrijventerrein Twentekanaal-Zuid I
1640601	Tuindorp t Lansink
1640602	Tuindorp-Zuid
1640603	Bedrijventerrein Twentekanaal-Noord I
1640604	Nijverheid
1640605	Vikkerhoek
1640606	Bedrijventerrein Zeggershoek
1640700	Bedrijventerrein Westermaat-Zuidwest
1640701	Woolde
1640702	Woolder Es
1640703	Weidedorp
1640704	Bedrijvenpark Westermaat-Zuidoost
1640705	Bedrijventerrein Westermaat-Noordoost
1640706	Bedrijventerrein Westermaat-Noordwest
1640800	Roershoek
1640801	Vossenbelt-Zuid
1640802	Vossenbelt-Noord
1640803	Het Broek
1640804	Kristenbos
1640805	Dalmeden
1640900	Beckum kern
1640901	Verspreide huizen Slangenbeek
1640902	Stadspark Weusthag-Noord
1640903	Stadspark Weusthag-Zuid
1640904	Verspreide huizen Driene
1640905	Verspreide huizen Twekkelo
1640906	Verspreide huizen Oele
1640907	Verspreide huizen Woolde
1640909	Verspreide huizen Beckum
1660000	Binnenstad Kampen
1660001	Brunnepe
1660002	Groene Hart
1660003	Hanzewijk en Greente
1660004	Kampen-Zuid
1660005	Flevowijk
1660006	Industrieterrein Kampen
1660007	Bovenbroek
1660008	Cellesbroek
1660009	Hagenbroek
1660010	De Maten
1660011	De Venen
1660012	Stationsplein
1660013	Stationskwartier
1660015	Het Onderdijks
1660016	Polder Dronthen
1660017	De Melm
1660018	Kampereiland
1660019	Mandjeswaard
1660300	IJsselmuiden-Centrum
1660301	Losselanden
1660302	Industrieterrein IJsselmuiden
1660303	De Waard
1660304	De Koekoek
1660305	Oosterholt
1660306	Sonnenberg
1660307	Trekvaart
1660400	Zalk
1660401	Verspreide huizen Zalk
1660500	Wilsum
1660501	Verspreide huizen Wilsum
1660600	Grafhorst
1660700	Kamperveen
1660800	s-Heerenbroek
1660900	Verspreide huizen polder Mastenbroek
1680001	Losser-West
1680002	Bedrijfsterrein Losser
1680003	Losser-Oost
1680009	Verspreide huizen Losser
1680101	Glane kern
1680102	Glane-beekhoek
1680109	Verspreide huizen Glane
1680201	Overdinkel kern
1680209	Verspreide huizen Overdinkel
1680301	De Lutte kern
1680309	Verspreide huizen De Lutte
1680401	Beuningen kern
1680409	Verspreide huizen Beuningen
1710101	Emmeloord-Centrum-Tussen Gracht en Vaart
1710102	Emmeloord-Centrum-Centrum West
1710103	Emmeloord-Centrum-Bos en Gaard
1710104	Emmeloord-Centrum-Centrum Oost
1710105	Emmeloord-Revelsant-Noord
1710106	Emmeloord-Revelsant-Zuid
1710107	Emmeloord-Espelervaart-Bergenbuurt
1710108	Emmeloord-Espelervaart-Rivierenbuurt
1710109	Emmeloord-Espelervaart-Espelervaart West
1710110	Emmeloord-de Zuidert
1710111	Emmeloord-de Erven
1710112	Emmeloord-Waterland
1710113	Emmeloord-Emmelhage-Boswonen
1710114	Emmeloord-Emmelhage-WaterwonenenPolderwonen
1710115	Emmeloord-Bedrijventerrein de Munt
1710116	Emmeloord-Bedrijventerrein Nagelerweg
1710117	Emmeloord-Bedrijventerrein A6
1710118	Emmeloord-landelijk gebied
1710219	Bant-woonkern
1710220	Bant-bedrijventerrein
1710221	Bant-landelijk gebied
1710322	Luttelgeest-woonkern
1710323	Luttelgeest-landelijk gebied
1710424	Marknesse-woonkern
1710425	Marknesse-bedrijventerrein
1710426	Marknesse-landelijk gebied
1710527	Kraggenburg-woonkern
1710528	Kraggenburg-bedrijventerrein
1710529	Kraggenburg-bedrijventerrein
1710530	Kraggenburg-landelijk gebied
1710631	Ens-woonkern
1710632	Ens-bedrijventerrein
1710633	Ens-landelijk gebied
1710734	Nagele-woonkern
1710735	Nagele-bedrijventerrein
1710736	Nagele-landelijk gebied
1710837	Tollebeek-woonkern
1710838	Tollebeek-bedrijventerrein
1710839	Tollebeek-landelijk gebied
1710941	Espel-woonkern
1710942	Espel-bedrijventerrein
1710943	Espel-landelijk gebied
1711045	Creil-woonkern
1711046	Creil-bedrijventerrein
1711047	Creil-landelijk gebied
1711149	Rutten-woonkern
1711150	Rutten-bedrijventerrein
1711151	Rutten-landelijk gebied
1711252	Schokland-woonkern
1730100	Binnenstad
1730200	Het Inslag-De Kleies
1730300	Glinde-Hooiland
1730400	De Meijbree
1730500	Haerbroek-Scholtenhoek
1730600	Zuid-Berghuizen
1730700	Hanzepoort
1730800	Eekte-Hazewinkel
1730900	Jufferbeek
1731000	Het Hulsbeek
1731100	De Thij
1731200	De Graven Es
1731300	De Essen
1731400	Bekspring
1750101	Kern Ommen - Centrum
1750102	Buurtschap Ommeres
1750103	Kern Ommen - Laarakkers
1750104	Buurtschap Ommen ten zuiden van de Vecht
1750105	Kern Ommen - Industrieterrein
1750106	Buurtschap Junne
1750107	Buurtschap Eerde
1750108	Buurtschap Besthmen
1750109	Buurtschap Varsen
1750110	Buurtschap Ommerbos-Ommerkanaal
1750111	Buurtschap Emsland
1750112	Buurtschap Zeesse
1750113	Kern Ommen - Zuid - ten noorden v spoor
1750114	Kern Ommen - Zuid - ten zuiden v spoor
1750115	Kern Ommen - Dante noord
1750116	Kern Ommen - Dante zuid
1750117	Kern Ommen - Zeeheldenbuurt - Lodderholt
1750118	Kern Ommen - Strangen
1750119	Kern Ommen - Alteveer Wonen 5-6
1750120	Kern Ommen - Rotbrink
1750121	Kern Ommen - Alteveer wonen 1-4
1750122	Kern Ommen - Alteveer Bedrijven
1750123	Kern Ommen - Alteveer Voorzieningen
1750124	Kern Ommen - Havengebied
1750125	Kern Ommen - Vlierlanden
1750126	Kern Ommen - sportpark Westbroek
1750201	Buurtschap Arrien
1750202	Buurtschap Arrienveld
1750301	Buurtschap Beerze
1750401	Kern Beerzerveld
1750402	Kern Kloosterdijk
1750403	Buurtschap Beerzerveld
1750501	Buurtschap Dalmsholte
1750601	Buurtschap Giethmen
1750701	Kern Lemele
1750702	Buurtschap Lemele
1750703	Buurtschap Archem
1750801	Buurtschap Stegeren
1750802	Buurtschap Stegerveld
1750901	Kern Vilsteren
1750902	Buurtschap Vilsteren
1751001	Buurtschap Vinkenbuurt
1751002	Buurtschap Ommerschans
1751101	Kern Witharen
1751102	Buurtschap Witharen
1751103	Buurtschap Ommerveld
1770101	Raalte Centrum
1770102	Blekkerhoek
1770103	Drostenkamp
1770104	Westdorp
1770105	De Olykampen
1770106	Hartkamp
1770107	Langkamp
1770108	De Vloedkampen
1770109	Tijenraan
1770110	De Enk
1770111	Het Raan Oost
1770112	Het Raan West
1770113	Het Overstigt
1770114	Salland
1770115	Franciscushof
1770116	De Zegge
1770117	De Hees
1770119	Buitengebied Raalte
1770201	Luttenberg Kern
1770209	Buitengebied Luttenberg
1770301	Mariënheem Kern
1770309	Buitengebied Mariënheem
1770401	Nieuw Heeten Kern
1770409	Buitengebied Nieuw Heeten
1770501	Heeten Kern
1770509	Buitengebied Heeten
1770601	Broekland Kern
1770609	Buitengebied Broekland
1770701	Heino Centrum
1770702	De Kampen
1770703	Heino Zuid
1770704	Kiezebos
1770705	Blankenfoort
1770709	Buitengebied Heino
1770801	Lierderholthuis Kern
1770809	Buitengebied Lierderholthuis
1770901	Laag Zuthem Kern
1770909	Buitengebied Laag Zuthem
1800000	Staphorst plan-Oost
1800001	Staphorst plan-West
1800002	Staphorst streek-West
1800003	Staphorst streek-Oost
1800004	Industrieterrein Staphorst
1800005	Staphorst-Zuid
1800006	Staphorst-Noord
1800007	De Slagen
1800100	Rouveen kern
1800101	Rouveen Streek-Zuid
1800102	Rouveen Streek-Noord
1800206	Verspreide huizen Dedemsvaart
1800207	Verspreide huizen Bisschops- en Munnikenslag
1800208	Verspreide huizen Geerenland
1800209	Verspreide huizen Oldmaten
1800305	Verspreide huizen Lankhorst
1800306	Verspreide huizen Leyen
1800307	Verspreide huizen Berger Achthoven en omgeving
1800308	Verspreide huizen Heidehoogten
1800309	Verspreide huizen Rechterensweg en omgeving
1800400	IJhorst
1800409	Verspreide huizen IJhorst
1800509	Verspreide huizen Punthorst
1800609	Verspreide huizen Lankhorst
1800709	Verspreide huizen Zwartewatersklooster en Holtrust
1830000	Tubbergen-Dorp
1830008	Verspreide huizen Manderveen
1830009	Verspreide huizen Tubbergen
1830100	Albergen kern
1830109	Verspreide huizen Albergen
1830200	Harbrinkhoek kern
1830201	Mariaparochie
1830209	Verspreide huizen Harbrinkhoek
1830300	Geesteren kern
1830309	Verspreide huizen Geesteren
1830400	Langeveen kern
1830409	Verspreide huizen Langeveen
1830500	Vasse kern
1830507	Verspreide huizen Hezingen
1830508	Verspreide huizen Vasse
1830509	Verspreide huizen Mander
1830600	Reutum kern
1830608	Verspreide huizen Haarle
1830609	Verspreide huizen Reutum
1830700	Fleringen kern
1830709	Verspreide huizen Fleringen
1840000	Urk-Kom
1840002	Toppad
1840003	Urk-Noord
1840004	Havens en industrieterrein
1840006	De Reede
1840007	Urkerhard
1840008	De Top
1840009	Buitengebied
1840010	De Staart
1840011	Urkerland
1840015	Industrieterrein II
1890000	Wierden-Centrum
1890001	Wierden-Noord
1890002	Wierden-West
1890003	De Maaten
1890004	Wierden-Oost
1890005	De Stouwe
1890006	t Loo
1890007	De Hooilanden
1890008	Zuidbroek
1890105	Verspreide huizen Lage Egge en omgeving
1890106	Verspreide huizen Broeklanden
1890107	Verspreide huizen Huurne I
1890108	Verspreide huizen Huurne II
1890109	Verspreide huizen Wierdenseveld
1890200	Hooge-Hexel kern
1890209	Verspreide huizen Hooge-Hexel
1890300	Enter-Zuidwest
1890301	Enter-Noordwest
1890302	Enter-Oost
1890303	Enter-West
1890405	Verspreide huizen IJpelo
1890406	Verspreide huizen Waterhoek
1890407	Verspreide huizen Enterveen en Elsslagen
1890408	Verspreide huizen Zuiderveld
1890409	Verspreide huizen Enterbroek en omgeving
1890507	Verspreide huizen Rectum
1890508	Verspreide huizen Notter
1890509	Verspreide huizen Zuna
1931000	Binnenstad-Zuid
1931010	Binnenstad-Noord
1931020	Noordereiland
1931100	Het Noorden
1931110	Schildersbuurt
1931120	Bollebieste
1931130	Dieze-Centrum
1931140	Bagijneweide
1931150	Hogenkamp
1931160	Indischebuurt
1931170	Meppelerstraatweg-Zuid
1931180	Bedrijventerrein Floresstraat
1931200	Wipstrik-Noord
1931210	Wipstrik-Zuid
1931300	Stationsbuurt
1931310	Oud-Assendorp
1931320	Nieuw-Assendorp
1931330	Wezenlanden
1931340	Pierik
1931350	Bedrijventerrein Marslanden-Noord
1931360	Hanzeland
1931400	Kamperpoort
1931410	Veerallee
1932000	Bedrijventerrein Voorst-A
1932010	Bedrijventerrein Voorst-B
1932020	Spoolde
1932100	Oud-Westenholte
1932110	Westenholte-Stins
1932120	Vreugderijk
1932130	Bedrijventerrein Voorst-C
1932140	Bedrijventerrein Voorst-D
1932200	Frankhuis
1932210	Mastenbroek
1932220	Schoonhorst
1932230	Werkeren
1932240	Milligen
1932250	Tippe bij de IJssel
1932260	Breecamp
1932270	Breezicht
1932280	Stadsbroek
1933000	Holtenbroek IV
1933010	Holtenbroek I
1933020	Holtenbroek II
1933030	Holtenbroek III
1933100	Aa-landen-Zuid
1933110	Aa-landen-Midden
1933120	Aa-landen-Noord
1933130	Aa-landen-Oost
1933200	Brinkhoek
1933210	Langenholte
1933220	Haerst
1934000	Berkum
1934010	Bedrijventerrein de Vrolijkheid
1934020	Veldhoek
1934030	Kantorenterrein Oosterenk
1934040	Bedrijventerrein Hessenpoort
1934050	Tolhuislanden
1934100	Herfte
1934110	Bedrijventerrein Marslanden-Zuid
1934120	Wijthmen
1935000	Oud-Schelle
1935010	Schellerhoek
1935020	Schellerbroek
1935030	Schellerlanden
1935040	Oldenelerlanden-Oost
1935050	Oldenelerlanden-West
1935060	Oldenelerbroek
1935070	Schelle-Zuid en Oldeneel
1935080	Katerveer-Engelse werk
1935100	Oud-Ittersum
1935110	Ittersumerlanden
1935120	Ittersumerbroek
1935130	Geren
1935140	Gerenlanden
1935150	Gerenbroek
1935160	Oude Mars
1935200	Windesheim
1935210	Harculo en Hoog-Zuthem
1970101	Barlo-Kern
1970102	Verspreide huizen Barlo
1970103	Verspreide huizen Heurne
1970104	Verspreide huizen IJzerlo
1970105	IJzerlo-kern
1970106	Lintelo-kern
1970107	Verspreide huizen ten westen van Aalten
1970108	Verspreide huizen Lintelo
1970109	Verspreide huizen Dalese Veld
1970110	Verspreide huizen Dale
1970111	Verspreide huizen Haart
1970112	Haart-kern
1970201	Verspreide huizen Bredevoort
1970202	Verspreide huizen Hollenberg
1970203	Verspreide huizen Het Zwanenbroek
1970204	Bredevoort
1970301	Aalten-kern West
1970302	Aalten-kern Zuid 1
1970303	Aalten-kern Zuid 2
1970304	Aalten-kern NoordenNoordoost
1970305	Aalten Kern t Kobus
1970306	Aalten-kern Oost
1970307	Aalten-kern Centrum
1970400	Dinxperlo CentrumenOost
1970401	Dinxperlo Noord
1970402	Dinxperlo West
1970403	De Heurne-kern
1970408	Verspreide huizen Dinxperlo
1970409	Verspreide huizen De Heurne
2000101	Binnenstad
2000102	De Haven
2000201	Brinkhorst
2000202	Sprengenweg-Noord
2000203	Sprengenbos
2000204	Berg en Bos
2000205	Driehuizen
2000206	Orden
2000207	Park Berg en Bos
2000301	Ugchelen
2000302	Ugchelen-Zuid
2000303	De Heeze
2000304	Westenenk
2000305	Winkewijert
2000306	De Bouwhof
2000307	Brouwersmolen-Noord
2000308	Dennenheuvel
2000309	Holthuizen
2000310	Brouwersmolen-Zuid
2000311	Wernem
2000401	Brummelhof
2000402	Vogelkwartier
2000403	Staatsliedenkwartier
2000404	Componistenkwartier
2000405	Rivierenkwartier
2000406	Malkenschoten
2000407	Kayersmolen-Noord
2000408	Kayersmolen-Midden
2000409	Kayersmolen-Zuid
2000501	Matendreef
2000502	Matenhorst
2000503	Matendonk
2000504	Matenhoeve
2000505	Matenveld
2000506	Matengaarde
2000507	Matenhoek
2000508	Kuipersveld
2000601	Welgelegen
2000602	Osseveld-West
2000603	Osseveld-Oost
2000604	Woudhuis
2000605	Groot Zonnehoeve
2000606	De Voorwaarts
2000607	Bedrijvenpark Ecofactorij
2000608	Bedrijvenpark Oost
2000701	Zevenhuizen
2000702	Sluisoord
2000703	De Mheen
2000704	Anklaar
2000705	Sprenkelaar
2000706	Bedrijvenpark Apeldoorn Noord
2000707	Sleutelbloem
2000708	Zuidbroek - Mozaïek & Rooster
2000709	Zuidbroek - De Wellen
2000801	De Parken
2000802	Spainkbos
2000803	Loolaan-Noord
2000804	Het Loo
2000805	Kerschoten-West
2000806	Kerschoten
2000807	Paleispark
2000808	Stadhoudersmolen
2000809	Hommelbrink
2001001	Uddel
2001002	Agrarisch gebied Uddel
2001003	Bosgebied Meerveld
2001004	Bosgebied Nieuw Milligen
2001101	Orderbos
2001102	Hoog Soeren
2001103	Bosgebied Hoog Soeren
2001104	Bosgebied Hoog Buurloo
2001201	Hoenderloo
2001202	Bosgebied Ugchelen
2001203	Bosgebied Hoenderloo
2001204	Miggelenberg
2001301	Het Goreld
2001302	Loenen
2001303	Bosgebied Loenen
2001401	Beekbergen
2001402	Bosgebied Beekbergen-West
2001403	Agrarisch gebied Beekbergen
2001404	Bosgebied Beekbergen-Zuid
2001501	Lieren
2001502	Agrarisch gebied Lieren-Oosterhuizen
2001503	Bosgebied Oosterhuizen
2001601	Wolthuis
2001602	Klarenbeek
2001603	De Hooilanden
2001604	De Hooilanden-Oosterhuizen
2001701	Wenum
2001702	Beemte
2001703	Bosgebied Wiesel
2001704	Agrarisch gebied Wiesel
2001705	Agrarisch gebied Wenum
2001706	Agrarisch gebied Beemte Broekland
2020100	Markt
2020101	Weverstraat
2020102	Rijnstraat
2020103	Janssingel
2020104	Stationsplein
2020170	Utrechtsestraat
2020210	Hommelstraat
2020211	Spijkerbuurt
2020212	Boulevardwijk
2020314	Statenkwartier
2020320	Arnhemse Broek
2020321	Van Verschuerbuurt
2020322	Industrieterrein
2020338	Bij de John Frostbrug
2020339	Nieuwe Kadekwartier
2020423	Presikhaaf I
2020424	Presikhaaf II
2020425	Presikhaaf III
2020526	Over het Lange Water
2020527	Elsweide
2020528	Winkelcentrum
2020529	Ijsseloord
2020630	St Marten
2020631	Graaf Ottoplein en omstreken
2020650	Sonsbeek-Noord
2020732	Klarendal-Zuid
2020733	Klarendal-Noord
2020734	Onder de Linden
2020735	St Janskerkstraat en omstreken
2020840	Velperweg-Noord
2020841	Molenbeke
2020842	Terrein ENKA
2020843	Plattenburg
2020844	Angerenstein
2020845	Paasberg
2020951	Hazegrietje
2020952	AlteveerenCranevelt
2021053	Geitenkamp
2021154	Monnikenhuizen
2021155	Arnhemse Allee
2021159	Klarenbeek
2021260	Transvaalbuurt
2021261	Burgemeesterswijk
2021262	Gulden Bodem
2021263	Sterrenberg
2021264	Hoogkamp
2021269	SonsbeekenZijpendaal
2021365	Bakenberg
2021366	Schaarsbergen
2021367	West van Schaarsbergen
2021368	NO van Schaarsbergen
2021471	Lombok
2021473	Brouwerijweg en omstreken
2021474	Heijenoord
2021572	Klingelbeek
2021579	Het DorpenMariëndaal
2021681	MeinerswijkenDe Praets
2021682	Malburgen-West
2021780	Groene Weide
2021783	Kamillehof
2021798	Bakenhof
2021815	t Duifje
2021884	Immerloo I
2021885	Middelgraaflaan en omstreken
2021886	Zeegsingel en omstreken
2021887	Eimersweide
2021888	Immerloo II
2021989	Holthuizen
2021990	Kronenburg
2021993	Vredenburg
2022092	Elden
2022191	Elderveld-Zuid
2022194	Elderveld-Noord
2022197	Elderhof
2022295	De Laar-West
2022296	De Laar-Oost
2022316	Rijkerswoerd-Oost
2022317	Rijkerswoerd-Midden
2022318	Rijkerswoerd-West
2022319	De Overmaat
2022447	Schuytgraaf-Noord
2022448	Schuytgraaf-Centrum
2022449	Schuytgraaf-Zuid
2035400	Buitengebied Barneveld
2035401	Centrum Barneveld
2035402	De Koot
2035403	Vogelbuurt
2035404	De Lors
2035405	Staatsliedenwijk
2035406	De Valk
2035407	Vliegersveld
2035408	Rootselaar-West
2035409	Rootselaar-Oost
2035410	Oldenbarneveld
2035411	De Vaarst
2035412	Norschoten
2035413	De Briellared
2035414	De Burgt
2035415	Veller
2035425	Harselaar-West
2035426	Harselaar-Oost
2035530	Buitengebied Voorthuizen
2035531	Centrum Voorthuizen
2035532	Haarkamp
2035533	Roeleneng
2035534	Prinsessenwijk
2035535	De Wheem
2035536	De Steenkamp
2035537	Zeeheldenwijk
2035538	Componistenwijk
2035539	De Maat
2035540	De Kromme Akker
2035541	Blankensgoed
2035650	Buitengebied Kootwijkerbroek
2035651	Kootwijkerbroek
2035652	Kootwijkerbroek-west
2035780	Buitengebied Garderen
2035781	Garderen
2035875	Buitengebied Terschuur
2035876	terschuur
2035877	Blankenhoef
2035960	Buitengebied Stroe
2035961	Stroe
2036070	Buitengebied Zwartebroek
2036071	Zwartebroek
2036190	Buitengebied De Glind
2036191	De Glind
2036265	Buitengebied kootwijk
2036266	Kootwijk
2036395	Buitengebied Achterveld
2090100	Beuningen-Buitengebied Noord
2090101	Beuningen-Buitengebied Zuid
2090110	Beuningen-Beuningse Plas Plas
2090111	Beuningen-Centrum
2090112	Beuningen-Centrum Oost
2090113	Beuningen-De Haaghe
2090114	Beuningen-De Notenhof
2090121	Beuningen-Duivenkamp
2090122	Beuningen-De Linde
2090123	Beuningen-Hoeve-1
2090124	Beuningen-Hoeve-2
2090125	Beuningen-Hoeve-3
2090126	Beuningen-De Hutgraaf
2090131	Beuningen-Schoenaker
2090141	Beuningen-Aalsterveld
2090142	Beuningen-Olden Tempel
2090143	Beuningen-Blanckenburgh
2090144	Beuningen-Viermorgen
2090145	Beuningen-Tinnegieter
2090146	Beuningen-Den Balmerd
2090147	Beuningen-Sportpark De Ooigraaf
2090151	Beuningen-Heuve-1
2090152	Beuningen-Heuve-2
2090153	Beuningen-Heuve-3
2090154	Beuningen-Heuve-4
2090161	Beuningen-Beuningse Plas
2090202	Ewijk-Buitengebied Noord-1
2090203	Ewijk-Buitengebied Zuid-1
2090204	Ewijk-Buitengebied Zuid-2
2090271	Ewijk-Centrum
2090272	Ewijk-Vording-2
2090273	Ewijk-Vording-3
2090274	Ewijk-Veluwstraat
2090275	Ewijk-Keizershoeve
2090276	Ewijk-Den Elt
2090305	Weurt-Buitengebied Noord
2090306	Weurt-Buitengebied Zuid
2090381	Weurt-Noord
2090382	Weurt-Zuid
2090383	Weurt-De Sluis
2090407	Winssen-Buitengebied Noord
2090408	Winssen-Buitengebied Zuid-1
2090409	Winssen-Buitengebied Zuid-2
2090491	Winssen-Centrum
2130100	Empe Kern
2130101	Verspreide huizen Empe
2130102	Dovenkamp
2130200	Tonden
2130300	Brummen Centrum
2130301	Brummense Enk West
2130302	Brummense Enk Oost
2130303	De Pothof
2130304	Koppelenburg
2130305	Verspreide huizen Brummen
2130306	Rhienderen Kern
2130307	Rhienderen Noord
2130308	Rhienderense Enk
2130309	Elzenbos
2130310	Hazenberg
2130311	Verspreide huizen Rhienderen
2130312	Rhienderense Broek
2130313	Oeken kern
2130314	Verspreide huizen Oeken
2130315	Wapsum
2130316	Voorstonden
2130317	Cortenoever
2130400	Leuvenheim kern
2130401	Verspreide huizen Leuvenheim
2130402	Lichtenbelt
2130500	Hall kern
2130501	Verspreide huizen Hall
2130502	Cellenrijk
2130600	Eerbeek centrum
2130601	Lombok
2130602	Noorder Enk
2130603	Werfakker
2130604	Veldkant
2130605	Eerbeekse Enk
2130606	Eerbeek Zuid
2130607	Het Hungeling
2130608	Wilhelminapark
2130609	Verspreide huizen Eerbeek
2130610	Coldenhove
2140000	Buren-Oude Kern
2140001	Buren Appelenboomgaard
2140002	Buren Tielseweg
2140003	Asch
2140004	Erichem
2140006	Verspreide huizen poldergebied Buurmalsen
2140007	Verspreide huizen Erichem
2140008	Verspreide huizen Asch
2140009	Verspreide huizen Buren
2140100	Beusichem
2140101	Zoelmond
2140109	Verspreide huizen Beusichem en Zoelmond
2140200	Zoelen
2140201	Kerk Avezaath
2140202	De Woerd
2140206	Verspreide huizen ten oosten van kanaal
2140207	Verspreide huizen Zoelen
2140208	Verspreide huizen Kerk Avezaath
2140209	Verspreide huizen Kapel Avezaath
2140300	Lienden
2140301	Ommeren met Den Eng
2140305	Ommerveld en verspreide huizen polder Meerten
2140306	Verspreide huizen Aalst Leutes polder Aalst
2140307	Verspreide huizen De Mars en Marsdijk
2140308	Verspreide huizen Lienden
2140400	Ingen
2140402	Klinkenberg
2140408	Verspreide huizen Klinkenberg
2140409	Verspreide huizen Ommerenveld en Zwarte Paard
2140500	Maurik
2140501	Rijswijk
2140502	Eck en Wiel
2140503	Ganzert
2140507	Verspreide huizen Rijswijk
2140508	Verspreide huizen Maurik
2140509	Verspreide huizen Eck en Wiel
2140600	Ravenswaaij
2140608	Verspreide huizen Ravenswaaij
2140609	Verspreide huizen poldergebied
2160000	Oude Binnenstad en Nieuwstad
2160001	Oude Buitenwijken
2160002	Noordoostelijke Buitenwijken
2160003	Zuidoostelijke Buitenwijken Ter Weijde
2160004	Industriegebied
2160005	Westelijke Buitenwijken
2160008	Verspreide huizen Redichem
2160009	Verspreide huizen ten westen en zuiden van Culemborg
2210100	De oude Stad binnen de gracht
2210101	Noordelijk Molenveld
2210102	Zuidelijk Molenveld
2210103	De Ooi
2210104	Beinum I
2210105	Beinum II
2210106	Bedrijventerrein Beinum
2210107	Bedrijventerrein Verhuellweg
2210108	Verspreide huizen Noordoost
2210109	Verspreide huizen Fraterswaard-Noordoost
2210110	Verspreide huizen IJssel en Oude IJssel
2220101	Stadscentrum-Zuid
2220102	Torenallee
2220103	Het Loo
2220104	Stadscentrum-Noord
2220105	De Pas-Noord
2220106	De Pas-Zuid
2220201	Muziekbuurt
2220202	Schrijvers en dichtersbuurt
2220203	Wiltinksbrug
2220204	Overstegen-West
2220205	Overstegen-Oost
2220206	Wonninkhage
2220207	Buitengebied de Gaarde
2220208	Wassinkbrink-Zuidoost
2220301	Holterhoek
2220302	Schöneveld-Zuid
2220303	Schöneveld-Noord
2220401	Oosseld en Vijverberg-Zuidwest
2220402	Buitengebied Polmanlaan
2220403	Buitengebied de Wrange
2220404	Koekendaal en Vijverberg-Noordoost
2220405	Buitengebied Vossenstraat
2220406	Buitengebied Nutselaer en Abdij
2220407	Buitengebied IJzevoorde
2220408	Buitengebied Slangenburg
2220501	Hamburgerbroek
2220502	Verheulsweide-Noord
2220503	Verheulsweide-Zuid
2220504	Buitengebied Kemnaderallee
2220601	De Hoop-Noord
2220602	De Huet fase 1 + 3
2220603	De Huet fase 2
2220604	De Huet fase 4
2220605	De Huet fase 6 + 7
2220606	De Huet fase 5
2220607	Sportpark Zuid
2220608	Bedrijventerrein De Huet
2220609	Buitengebied De Huet
2220701	Buitengebied Dichteren Noordwest
2220702	Romantische buurt Noord
2220703	Romantische buurt Zuid
2220704	Landelijk Wonen
2220705	Kleurrijke buurt
2220706	Stadskwartier-Zuid
2220707	Stadskwartier-Noord
2220708	Buitengebied en Dichterem-Oost
2220709	Bedrijventerrein en Wijnbergen
2220710	Wijnbergen-het Westem
2220711	Wijnbergen-het Midden
2220712	Wijnbergen-het Oosten
2220713	De Hoop-Zuid
2220801	IJsseltuin en Heelweg
2220802	Bedrijventerrein Keppelseweg
2220803	Buitengebied Keppelseweg
2220804	Langerak-Zuid
2220901	Het Loo
2220902	De Happert Ziekenhuis
2220903	De Kruisberg
2220904	De Happert Leerinkstraat
2220905	De IJkenberg
2220906	De Bezelhorst
2220907	Buitengebied De Kruisberg
2220908	Buitengebied Groot Hagen
2220909	Langerak-Noord
2220910	Buitengebied Christoffelstraat
2220911	Wassinkbrink-Noordwest
2221101	Vulcaansoord en het Richtersbos-Zuid
2221102	De Elshof-Zuid
2221103	De Pol en Akkermansweide
2221104	Het Hartger en de Elshof-Noord
2221105	Buitengebied t Klooster
2221106	Buitengebied Pierikstraat
2221107	Buitengebied Pinnedijk
2223101	Wehl-Centrum
2223102	Wehl-West
2223103	Wehl-Zuidwest
2223104	Wehl-Zuidoost
2223105	Wehl-Oost
2223106	Wehl-Noordoost
2223107	Wehl-Noord
2223108	Nieuw-Wehl-Centrum
2223109	Nieuw-Wehl-Noordoost
2223110	Nieuw-Wehl-Noord
2223111	A18 Bedrijvenpark
2250001	Druten
2250002	Druten Zuid
2250003	Bouwing
2250004	Westerhout
2250005	Druten Buitengebied
2250006	Drutense Waarden
2250101	Puiflijk
2250102	Puiflijk Buitengebied
2250201	Afferden
2250202	Afferden Buitengebied
2250203	Afferdense Waarden
2250301	Deest
2250302	Deest Buitengebied
2250303	Deestse Waarden
2250401	Horssen
2250402	Molenhoek
2250403	Horssen Buitengebied
2260101	Bedrijventerrein
2260201	Het Broek
2260301	West
2260302	Oud Zuid
2260303	Centrum
2260304	De Vergert
2260305	De Nieuweling
2260306	De Ploen
2260307	Noord
2260308	Lommerweide
2260401	Zuidwest
2260402	Zuidoost
2260501	Groessen
2260601	Loo Gld
2280101	Centrum Ede
2280102	Bosrand
2280103	Komponistenbuurt
2280104	Burgemeestersbuurt
2280105	Stationsbuurt
2280201	Zeeheldenbuurt
2280202	Indische buurt
2280203	Vogelbuurt
2280204	Bloemenbuurt
2280205	Beatrixpark
2280206	Klaphek
2280301	De Horsten
2280302	De Burgen
2280303	De Steinen
2280305	De Dalen
2280306	De Velden en Beken
2280307	De Hoven
2280401	De Bergen
2280402	De Bossen
2280403	De Venen en Zanden
2280501	Veluwse Poort
2281001	Uitvindersbuurt
2281002	Hoogbouw-Zuid
2281003	Reehorst
2281004	Enka
2281101	Elskamp
2281102	Maandereng-Oost
2281103	De Hoef
2281201	De Parken
2281202	De Dreven
2281203	De Singels
2281204	De States
2281301	Frankeneng
2281302	Heestereng
2281303	De Vallei
2281304	Schuttersveld-Zuid
2281305	Schuttersveld-Noord
2281306	Kievitsmeent
2282031	Maanderbroek
2282032	Doesburg
2282051	DriesprongenGinkel
2283001	De Laar
2283002	Bennekom-Zuidoost
2283003	Boekelo
2283004	Halderbrink
2283031	De KraatsenNergena
2283051	Dikkenberg
2284001	Centrum Lunteren
2284002	Wormshoef
2284003	Lunteren-Oost
2284031	Nederwoud
2284032	De Veenen
2284033	Lunterse Veld
2284034	MeulunterenenDe Valk
2284051	Lunterse Buurtbos
2285001	Ederveen dorp
2285031	Ederveen buitengebied
2286001	De Klomp dorp
2286031	De Klomp buitengebied
2287001	Harskamp dorp
2287002	Legerplaats Harskamp
2287031	Westeneng
2287051	Harskampse Zand
2288001	Wekerom dorp
2288031	Wekeromse Meent
2288051	Wekeromse Zand
2289001	Otterlo dorp
2289031	Eschoter Veld
2289051	Reemst
2289052	Hoog Baarlo
2289053	Deelen
2300100	Elburg Stad
2300101	Elburg West en havengebied
2300102	Elburg-Oosthoek
2300103	Elburg De Vrijheid
2300104	Oostendorp
2300105	Achterweg
2300108	Verspreide huizen Elburg-Zuid
2300109	Verspreide huizen Elburg-Noord
2300201	t Harde-Centrum
2300202	t Harde-West
2300203	t Harde-Oost
2300207	Verspreide huizen t Harde Noord-West
2300209	Verspreide huizen t Harde Zuid-Oost
2300300	Doornspijk
2300304	Hoge Enk
2300306	Verspreide huizen Doornspijk-West
2300308	Verspreide huizen Doornspijk-Oost
2320000	Epe Centrum
2320001	Hoge Weerd
2320002	Hogeland
2320003	Epe Noord
2320004	Burgerenk
2320005	Enkweg
2320006	Gildehoek
2320007	Kweekweg
2320008	Vegtelarij
2320009	Klaarbeek
2320010	Buitengebied Epe Noord
2320011	Buitengebied Epe West
2320012	Buitengebied Epe Oost
2320100	Kern Emst
2320101	Buitengebied Emst
2320200	Vaassen Centrum
2320201	Heggerenk
2320202	Krugerstraat Noord
2320203	Krugerstraat Zuid
2320204	Oosterhof
2320205	Berkenoord 1
2320206	Berkenoord 2
2320207	Woestijnweg
2320208	Vogelbuurt
2320209	Vulcanus - de Pirk
2320210	Eekterveld
2320211	Buitengebied Vaassen
2320300	Kern Oene
2320301	Buitengebied Oene
2330000	Ermelo
2330001	Ermelo-Oost
2330002	Ermelo-West
2330003	Veldwijk-s Heerenloo
2330004	Tonsel
2330005	Horst
2330006	Buurt Ermelo ten dele bij de kern
2330007	Verspreide huizen Telgt
2330008	Verspreide huizen Zuiderzeeland
2330009	Verspreide huizen bosgebied
2330100	Speuld
2330105	Verspreide huizen Staverden
2330106	Verspreide huizen Houtdorp
2330107	Verspreide huizen Leuvenum
2330108	Verspreide huizen De Beek
2330109	Verspreide huizen bosgebied
2430101	Binnenstad-Noord
2430102	Binnenstad-Zuid
2430201	De Eilanden
2430202	De Kades
2430203	Stadswerven
2430204	De Knar
2430301	Zeebuurt-Oost
2430302	Zeebuurt-west
2430401	Friesegracht-Noord
2430402	Friesegracht-Zuid
2430501	Stadsdennen-Noord
2430502	Stadsdennen-Midden
2430503	Stadsdennen-Oost
2430504	Stadsdennen-Zuidwest
2430601	Sypel-Oost
2430602	Sypel-West
2430701	nachthok
2430702	Weiburg
2430801	Kruithuis
2430802	Hanzewaard
2430803	Scheepswaard
2430804	Stedenwaard
2430805	Vogelwaard
2430806	Weidewaard
2430807	Drift
2430808	Stromenwaard
2430901	Slingerbos-Noord
2430902	Slingerbos-Zuid
2431001	Veldkamp
2431002	Kranenburg
2431003	Bedrijventerrein "De Sypel"
2431004	Tinnegieter
2431005	De Wittenhagen-Noord
2431006	De Wittenhagen-Zuid
2431101	Broekland
2431102	De Akker
2431103	Walstein
2431104	Overveld
2431201	Muziekland I
2431202	Muziekland II
2431203	Muziekland III
2431204	Muziekland IV
2431205	Drielanden-Centrum
2431206	Harderhout I
2431207	Harderhout II
2431208	De Burcht
2431209	De Gronden
2431210	Groerne Zoom
2431211	Tonsel
2431212	Weisteeg
2431301	Lorentz I
2431302	Lorentz II
2431303	Lorentz III
2431401	Strokel
2431402	Sonnevanck
2431403	Harderwijkerbos
2431501	Hierden-Dorp
2431502	Hierden Glindweg
2431503	Hierden Mheenlanden
2431504	Hierden de Enk
2431505	Hierden De Duinen
2431506	Hierden De Biest
2431601	Woldenwijd-Noord
2440000	Binnenstad
2440001	Zandkamp en omgeving
2440002	Ten oosten van Apeldoornseweg
2440003	Hogenkamp en omgeving
2440004	Villapark
2440005	De Hilst
2440008	Verspreide huizen bosgebied
2440009	Verspreide huizen Hoenwaard
2440108	Verspreide huizen Koeweg en Molecaten
2440109	Verspreide huizen Gelderse Dijk en omgeving
2460000	Heerde
2460001	Veessen
2460002	Vorchten
2460003	Hoorn
2460004	Verspreide huizen Veessen
2460005	Verspreide huizen Heerde-Noord en Hoorn
2460006	Verspreide huizen Heerde-Zuid
2460007	Verspreide huizen Vorchten
2460008	Verspreide huizen Lage Land
2460009	Verspreide huizen bosgebied
2460100	Wapenveld
2460106	Verspreide huizen Wapenveld-Noord
2460107	Verspreide huizen Wapenveld-Zuid
2460108	Verspreide huizen Lage Land
2460109	Verspreide huizen bosgebied
2520000	Heumen
2520001	Malden-West
2520002	Malden-Oost
2520003	Broekkant en Droge
2520004	Molenhoek
2520005	Kluis
2520006	Verspreide huizen Malden
2520007	Verspreide huizen bosgebied ten oosten kanaal
2520008	Verspreide huizen Heumen
2520009	Verspreide huizen bosgebied ten westen kanaal
2520100	Overasselt
2520101	Nederasselt
2520103	Verspreide huizen Overasseltse Broek
2520104	Verspreide huizen Overasseltse Uiterwaarden
2520105	Verspreide huizen Valenberg en Heide
2520106	Verspreide huizen Nederasseltse Broek
2520107	Verspreide huizen Worsum
2520108	Verspreide huizen in de polder Balgoij en Einde
2520109	Verspreide huizen Nederasseltse Uiterwaarden
2620000	Vesting
2620001	Zuiderenk
2620002	Lochem-Zuid
2620003	Lochem-Oost
2620004	Lochem-West
2620005	Lochem-Noord
2620006	Molengronden
2620100	Zwiep
2620106	Verspreide huizen Het Veen en Grote Veld
2620107	Verspreide huizen Klein Dochteren
2620108	Verspreide huizen Ampsen
2620109	Verspreide huizen Nettelhorst, Langen en Zwiep
2620200	Laren
2620201	Exel
2620205	Verspreide huizen Groot Dochteren
2620206	Verspreide huizen Oolde
2620207	Verspreide huizen Verwolde
2620208	Verspreide huizen Exel
2620209	Exel Tol
2620300	Barchem
2620307	Verspreide huizen Lochemseweg
2620308	Verspreide huizen Zwarte Veen en Barchemse Enk
2620309	Verspreide huizen Boschheurne en Zwiepsche Broek
2620400	Gorssel
2620401	Eefde
2620402	Epse
2620406	Verspreide huizen Joppe
2620407	Verspreide huizen Gorssel
2620408	Verspreide huizen Epse
2620409	Verspreide huizen Eefde
2620500	Almen
2620501	Harfsen
2620506	Verspreide huizen Almen ten zuiden van Twentekanaal
2620507	Verspreide huizen Almen ten noorden van Twentekanaal
2620508	Verspreide huizen Harfsen
2620509	Verspreide huizen Kring van Dorth
2630000	Kerkdriel
2630001	Velddriel
2630002	Hoenzadriel
2630003	Alem
2630006	Verspreide huizen Noord Beemden
2630007	Verspreide huizen Kerkdriel, Berm en Hoorzik
2630008	Verspreide huizen Velddriel, Vlierd en Beemden
2630009	Verspreide huizen Maasdijk en Uiterwaarden
2630010	Verspreide huizen Alem
2630100	Ammerzoden
2630101	Well
2630102	Wellseind-Slijkwell
2630108	Verspreide huizen Het Heust
2630109	Verspreide huizen Uilecoten
2630200	Hedel
2630208	Verspreide huizen in het bouwgebied
2630209	Verspreide huizen in de polder Hedel
2630300	Heerewaarden
2630301	Huizendijk, Voorne, De Kop en Veluwe
2630309	Verspreide huizen Heerewaarden
2630400	Rossum
2630401	Hurwenen
2630408	Verspreide huizen Hurwenen en Rossum
2630409	Overige verspreide huizen
2670101	Industriegebied
2670102	Groot Corlaer
2670103	Corlaer
2670104	Nautena-zuidenSchulpkamp
2670105	Nautena-noordenHavenstraat
2670106	Centrum
2670107	Bruins SlotlaanenCampenbuurt
2670108	ZilverschoonenOranjebuurt
2670109	Coltoflaanenvan Oldenbarneveldstraat
2670110	Luxool
2670111	Paasbos-west
2670112	Paasbos-oost
2670113	Strijland-west
2670114	Strijland-oost
2670115	SpoorkampenDe Terrassen
2670116	De FlierenArkerpoort
2670117	De Bogen
2670118	Doornsteeg
2670201	Kruishaar
2670202	Slichtenhorst
2670203	Appelent Woud
2670204	Prinsenkamp
2670300	Nijkerkerveen-Noord
2670301	Nijkerkerveen-Zuid
2670302	Holkerveen
2670401	Arkemheen
2670402	De VeenhuisenAchterhoek
2670500	Hoevelaken-Stoutenburgerlaan-Oost
2670501	Hoevelaken-Oranjebuurt-Horstbeek
2670502	Hoevelaken-Overhorst
2670503	Hoevelaken-Kleinhoven
2670504	Hoevelaken-Hogenbrink
2670505	Hoevelaken-Middelaar
2680100	Benedenstad
2680101	Stadscentrum
2680202	Bottendaal
2680203	Galgenveld
2680204	Altrade
2680205	Hunnerberg
2680206	Hengstdal
2680207	Kwakkenberg
2680208	Groenewoud
2680209	Ooyse Schependom
2680320	Biezen
2680321	Wolfskuil
2680422	Hees
2680423	Heseveld
2680424	Neerbosch-Oost
2680425	Haven- en industrieterrein
2680510	Nije Veld
2680511	Hazenkamp
2680512	Goffert
2680513	St Anna
2680517	Heijendaal
2680614	Hatertse Hei
2680615	Grootstal
2680616	Hatert
2680618	Brakkenstein
2680731	Tolhuis
2680732	Zwanenveld
2680733	Meijhorst
2680734	Lankforst
2680735	Aldenhof
2680736	Malvert
2680737	Weezenhof
2680738	Vogelzang
2680739	Staddijk
2680840	t Acker
2680841	De Kamp
2680842	t Broek
2680843	Kerkenbos
2680847	Westkanaaldijk
2680848	Neerbosch-West
2680849	Bijsterhuizen
2680950	Oosterhout
2680960	Ressen
2680970	Lent
2690000	Oldebroek
2690001	Bovenstreek
2690002	Broekdijk
2690004	t Loo
2690005	Verspreide huizen Oldebroek
2690006	Verspreide huizen Oldebroekse Heide
2690007	Verspreide huizen polder Oldebroek
2690008	Verspreide huizen t Loo
2690009	Verspreide huizen heide t Loo
2690100	Wezep-Centrum
2690101	Wezep-Oost
2690102	Hattemerbroek
2690103	Wezep-West
2690104	Wezep-Noord
2690105	Verspreide huizen Wezep
2690106	Verspreide huizen Duivendans
2690107	Verspreide huizen Wezepse Heide
2690108	Verspreide huizen polder Hattemerbroek
2690109	Verspreide huizen Hattemerbroekse Heide
2690110	Verspreide huizen Heide Hoek
2690200	Oosterwolde
2690201	Noordeinde
2690203	Eekt
2690208	Verspreide huizen Oosterwolde
2690209	Verspreide huizen Noordeinde
2690210	Verspreide huizen Oosterwolde
2730000	Putten-Centrum
2730001	Putten-Zuid-Oost
2730002	Putten-Noord
2730003	Putten-Zuid-West
2730004	Putten-Stationsstraat industriegebied
2730005	Verspreide huizen Hell en Diermen
2730006	Verspreide huizen Huinen en Halvinkhuizen
2730007	Verspreide huizen Gerven
2730008	Verspreide huizen Norden, Bijsteren en Hoef
2730009	Verspreide huizen Nulde
2730100	Koudhoorn
2730108	Verspreide huizen Krachtighuizen en omgeving
2730109	Verspreide huizen bosgebied
2740101	Jufferswaard
2740102	Grunsfoort
2740103	Onder de Bomen
2740104	Renkum Centrum
2740105	De Enk
2740106	Gelria
2740201	Keijenberg
2740202	Hogenkamp
2740203	Bakkershaag
2740204	Schaapsdrift
2740205	Fluitersmaat
2740206	Quadenoord
2740207	Renkumse Heide
2740301	Vosdal
2740302	Aan de Beek
2740303	Heidestein
2740304	Kamperdijk
2740305	Klein Zwitserland
2740306	Wilhelminapark
2740401	Hoog Doorwerth
2740402	Doorwerthsestraat
2740403	De Kamp
2740501	Boschhoeve
2740502	Wolfhezerbeek
2740503	De Stichting
2740504	Lawijckerhof
2740601	De Buunderkamp
2740602	Reijers-Camp
2740603	Duitsekampweg
2740604	Het Hazeleger
2740701	Doorwerthse Waarden
2740702	Doorwerthse Bossen
2740703	Kievitsdel
2740801	Doorwerth Zuid
2740802	Clusterwoningen
2740803	Cardanuslaan
2740901	Hunneschans - Valckeniersbossen
2740902	Heveadorp
2741001	Hemelse Berg
2741002	Valkenberg
2741003	Wodanswoud
2741004	Sonnenberg
2741005	Bilderberg
2741101	Oosterbeekse Waarden
2741102	Batos Wijk
2741103	Nieuwland
2741104	Stenenkruis
2741105	Klingelbeek
2741201	Beelaertslaan
2741202	Transvaal
2741203	Dreyeroord
2741204	Dennenkamp
2741205	De Dreijen
2741206	Talud
2750000	Dieren-Zuid beneden spoorlijn
2750001	Dieren-Noord boven spoorlijn
2750002	Dieren-West boven spoorlijn
2750003	Spankeren
2750004	Ellecom
2750005	Laag-Soeren
2750007	Verspreide huizen bosgebied Laag Soeren
2750008	Verspreide huizen Spankeren
2750009	Verspreide huizen Fraterwaard en Beimerwaard
2750010	Verspreide huizen bosgebied Ellecom
2750011	Verspreide huizen bosgebied Dieren
2750100	Rheden
2750101	Rheden-West ten westen van Oranjeweg en Haverweg
2750102	Verspreide huizen Rheden
2750103	De Steeg
2750106	Verspreide huizen bosgebied De Steeg
2750107	Verspreide huizen bosgebied Rheden
2750108	Verspreide huizen Havikerwaard en Middachten
2750200	Velp-Noord boven spoorlijn
2750201	Velp-Zuid beneden spoorlijn
2750202	Velp-Zuid ten zuiden van Waterstraat
2750208	Verspreide huizen Velp-Noordoost
2750209	Verspreide huizen Velp-Zuidoost
2770000	Rozendaal
2770009	Verspreide huizen Imbosch en Terlet
2790000	Scherpenzeel
2790008	Verspreide huizen ten zuiden van Scherpenzeel
2790009	Verspreide huizen ten noorden van Scherpenzeel
2810000	Binnenstad
2810001	Sterrebos
2810002	Hertogenwijk
2810003	Burgemeesterswijk
2810004	Stationsbuurt
2810005	Santwijck
2810006	De Lok
2810007	Het Ooij
2810009	Latenstein
2810010	Tiel-West
2810011	Wadenoijenlaan en omstreken
2810100	Elzenpas
2810101	Westroijen
2810102	Rauwenhof en omstreken
2810103	Rauwenhof
2810104	Drumpt
2810107	Industrieterrein Medel
2810108	Veluwe
2810109	Industrieterrein Kellen
2810200	Wadenoijen
2810201	Kapel-Avezaath
2810208	Kapel-Avezaath en omstreken
2810209	Wadenoijen en omstreken
2810300	Passewaaij-Noord-West
2810301	Passewaaij-Noord-Oost
2810302	Passewaaij-Zuid-West
2810303	Passewaaij-Zuid-Oost
2810304	Passewaaij en omstreken
2810305	Zennewijnen
2810306	Zennewijnen en omstreken
2850000	Voorst
2850001	Bussloo
2850002	Gietelo
2850005	Verspreide huizen Voorst en Wilpse Klei
2850006	Verspreide huizen Gietelo-Bussloo
2850007	Verspreide huizen langs de IJssel Voorster Klei
2850008	Verspreide huizen Appensche Veld
2850009	Verspreide huizen akkerbouwgebied Noord-Empe
2850100	Twello-Midden
2850101	Twello-Zuid
2850102	Twello-Noord
2850103	Terwolde
2850104	Nijbroek
2850105	Verspreide huizen Twello-Zuid
2850106	Steenenkamer
2850107	Verspreide huizen Twello-Noord
2850108	Verspreide huizen Nijbroek
2850109	Verspreide huizen op de oeverwal Terwolde
2850200	Klarenbeek gedeeltelijk
2850201	Teuge
2850202	Wilp-Achterhoek
2850203	De Vecht
2850205	Verspreide huizen De Vecht, De Pol en omgeving
2850206	Verspreide huizen Teuge
2850207	Verspreide huizen Wilp-Achterhoek
2850208	Verspreide huizen Klarenbeek-Noord
2850209	Verspreide huizen Klarenbeek-Zuid
2850300	Wilp
2850301	Posterenk
2850308	Verspreide huizen Wilp en Posterenk
2850309	Verspreide huizen op de Wilpse Klei
2890101	Rietveldbuurt
2890102	De Hooilanden
2890103	Mondriaanbuurt
2890104	Business & Science Park
2890201	Wageningen Campus en Droevendaal
2890202	De Blauwe Bergen en de Bongerd
2890301	De Weiden
2890302	Boomgaarden
2890401	Tarthorst
2890402	Roghorst
2890501	Kortenoord-West
2890502	Kortenoord-Oost
2890503	Haarweg
2890504	Marijkebuurt
2890601	Pomona
2890602	Haverlanden
2890603	De Buurt-West
2890604	De Buurt-Oost
2890701	Bovenbuurt
2890702	Benedenbuurt
2890801	Nude-buurt
2890802	Nudepark, Rijnhaven en Industrieweg
2890901	Binnenstad
2890902	Rustenburg
2891001	Veluvia
2891002	De Dreijen
2891003	Hamelakkers
2891101	Wageningen-Hoog
2891201	Het Binnenveld
2891202	De Eng
2891203	Wageningse Berg
2891204	Oude Nude
2891205	Uiterwaarden
2930000	Westervoort
2930001	Westervoort-Broeklanden
2930002	Westervoort-Lange Maat en Hoogeind
2930003	De Leigraaf-De Steenderens
2930004	De Ganzepoel-Schans
2930009	Verspreide huizen Westervoort
2940000	Centrale deel
2940001	Winterswijk-Zuidwest
2940002	Winterswijk-Noordwest
2940003	Winterswijk-Noordoost
2940004	Winterswijk-Zuidoost
2940100	Meddo
2940101	Kotten
2940102	Miste
2940103	Verspreide huizen Brinkheurne en omgeving
2940104	Verspreide huizen Meddo
2940105	Verspreide huizen ten noorden van Winterswijk
2940106	Verspreide huizen Ratum, Henxel, Huppel
2940107	Verspreide huizen Kotten
2940108	Woold
2940109	Verspreide huizen Miste
2940120	Verspreide huizen Corle en omgeving
2940121	Verspreide huizen Woold
2960000	Verspreide huizen wezel
2960001	Verspreide huizen Vormer
2960002	Verspreide huizen Bankhoef
2960100	Saltshof
2960101	Bedrijventerrein Bijsterhuizen
2960102	Woezik
2960103	Veenhof
2960104	Verspreide huizen Woezik
2960105	Lambrasse
2960106	Kraaijenberg
2960107	Heilige Stoel
2960108	Homberg
2960109	Wijchen Noord
2960110	Hofsedam
2960111	Bedrijventerrein Zesweg
2960112	Blauwe Hof
2960113	Aalsburg
2960114	Centrum
2960115	De Uilenboom
2960116	Valendries
2960117	Bedrijventerrein Nieuwenweg
2960118	Verspreide huizen Valendries
2960119	Zevendreef
2960120	Zesakkers
2960121	De Grippen
2960122	De Weertjes
2960123	Diepvoorde
2960124	Huissteden-Zuiderpoort
2960125	Hoogmeer
2960126	De Ververt
2960127	Sluiskamp
2960128	Oudelaan
2960129	Kronenland
2960130	Abersland
2960131	Elsland
2960132	De Geer
2960133	De gamert
2960134	De Meren
2960135	De Flier
2960136	Diemewei
2960137	De Lingert
2960138	Huurlingsedam
2960200	Balgoij
2960201	Verspreidehuizen Balgoij
2960300	Batenburg
2960301	Verspreide huizen Batenburg
2960400	Bergharen
2960401	Bedrijventerrein Breekwagen
2960402	Verspreide huizen Bergharen
2960500	Hernen
2960501	Verspreide huizen Hernen
2960600	Leur
2960601	Verspreide huizen Leur
2960700	Niftrik
2960701	Loonse Waard
2960702	Verspreide huizen Niftrik
2960800	Verspreide huizen Hoogbroek
2960801	Verspreide huizen Heumenseweg-Boskant
2960802	Verspreide huizen Lunen
2960803	Alverna
2970000	Zaltbommel Binnenstad
2970001	Zaltbommel Vergt en omgeving
2970002	Zaltbommel Spellewaard
2970007	Verspreide huizen Hoeven
2970008	Verspreide huizen Oostzijde
2970009	Verspreide huizen Westzijde
2970100	Brakel
2970101	Poederoijen
2970102	Aalst
2970103	Zuilichem
2970104	De Rietschoof
2970105	Verspreide huizen in de polder Aalst
2970106	Verspreide huizen in de polder Poederoijen
2970107	Verspreide huizen in de polder Brakel
2970108	Verspreide huizen in het Munnikenland
2970109	Verspreide huizen in de polder Zuilichem en omgeving
2970200	Kerkwijk
2970201	Bruchem
2970202	Beneden-Delwijnen
2970203	Gameren
2970204	Nieuwaal
2970207	Verspreide huizen polders Delwijnen en Bruchem
2970208	Verspreide huizen Kerkwijk en Bruchem
2970209	Verspreide huizen polders Gameren en Nieuwaal
2970300	Nederhemert-Noordzijde
2970301	Nederhemert-Zuidzijde
2970309	Verspreide huizen Nederhemert
2990000	Centrum
2990001	Molenwijk
2990002	Het Grieth
2990003	Schrijvershoek
2990004	Zonnemaat
2990005	Lentemorgen I
2990006	Stegeslag
2990007	Lentemorgen II
2990008	Tatelaar
2990009	De Horst
2990010	Methen
2990011	Mercurion
2990012	Hengelder
2990013	Zuidspoor
2990014	Oud Zevenaar
2990015	Ooy
2990016	Groot Holthuizen
2990017	Zevenaars Broek
2990018	7Poort
2990100	Babberich
2990101	Camphuizen
2990102	Buitengebied Babberich
2990200	Angerlo
2990201	Angerlos Broek
2990300	Giesbeek
2990301	Rhederlaag
2990302	Riverparc
2990400	Lathum
2990500	Rijnstrangen
2990600	Pannerden
2990601	Buitengebied Pannerden
2990700	Aerdt
2990701	Buitengebied Aerdt
2990800	Herwen
2990801	Buitengebied Herwen
2990900	Lobith
2991000	Tolkamer
2991001	De Bijland
2991100	Spijk
2991101	Buitengebied LobithenSpijk
3010000	Stadskern
3010001	Laarstraat en omgeving
3010002	Marswegkwartier
3010003	Nieuwstad en Coehoornsingel
3010004	De Hoven
3010100	Vijver en omgeving
3010101	Zeeheldenbuurt
3010102	Helbergen
3010103	Warnsveldsewegkwartier-Zuid
3010104	Warnsveldsewegkwartier-Noord
3010105	Staatsliedenbuurt
3010106	Pagemate en omgeving
3010200	Helleraetplein en omgeving
3010201	Weg naar Laren en omgeving
3010202	Deventerweg en Polbeek
3010203	Voorsteralleekwartier
3010300	Moesmate en Tichelkuilen
3010301	Zwanevlot en De Brink
3010302	Braamkamp
3010303	Stokebrand, Bagijnenland en Bronsbergen
3010304	Waarden en weerdslag
3010400	Ooyerhoek
3010401	De Enk
3010402	Eme en Broek
3010403	Looërenk en Woud
3010409	Vespreide huizen Leesten
3010500	Dorp Warnsveld
3010501	Welgelegen
3010502	Scheperkamp
3010503	Overkamp
3010509	Warken
3020000	Nunspeet-Oost
3020001	Nunspeet-West
3020002	Nunspeet-Zuid
3020003	Hulshorst
3020005	Verspreide huizen Hulshorst
3020006	Verspreide huizen Zuiderzeeland Nunspeet
3020007	Verspreide huizen Zuiderzeeland Hulshorst
3020008	Verspreide huizen bosgebied Nunspeet
3020009	Verspreide huizen bosgebied Hulshorst
3020100	Elspeet
3020101	Vierhouten
3020107	Verspreide huizen bosgebied Vierhouten
3020108	Verspreide huizen Elspeet en omgeving
3020109	Verspreide huizen Elspeetse Bos
3030101	Poort van Dronten
3030102	Business Zone Delta
3030103	De Gilden
3030104	De Munten
3030105	De Drieslag
3030210	Pioniersweg
3030211	Houtwijk
3030212	Hanzekwartier
3030213	De Oeverloperwijk
3030320	Centrum Dronten
3030321	Oud-Dronten
3030322	De Fazant
3030323	Bungalowpark
3030324	De Boeg
3030430	De Landmaten
3030431	De Manege
3030432	De Lancaster
3030433	De Landstreken
3030434	De Kruidentuin
3030435	Golfresidentie
3030548	AZC
3030549	Ketelhaven
3030550	Buitengebied Dronten
3030601	Oud-Biddinghuizen Buiten
3030602	Oud-Biddinghuizen
3030603	De Kaai
3030604	Centrum Biddinghuizen
3030605	De Baan
3030606	Bremerpark
3030607	De Graafschap
3030608	Noorderbaan
3030609	Oldebroekerweg
3030620	Buitengebied Biddinghuizen
3030701	Kampbuurt
3030702	Centrum Swifterbant
3030703	Oud-Swifterbant
3030704	Spelbuurt
3030705	Bloemenbuurt
3030706	De Kolk
3030707	Tarpan
3030708	Bedrijventerrein Spelwijk
3030720	Buitengebied Swifterbant
3070100	Hof
3070101	Nieuwstraat
3070102	Mooierstraat
3070103	Lieve Vrouwekerkhof
3070104	Coninckstraat
3070105	Beestenmarkt
3070106	Grote Haag
3070107	Stadhuisplein
3070108	Schimmelpenninckstraat
3070200	Smallepad
3070202	Snouckaertlaan
3070204	Zonnehof
3070205	Weltevreden
3070206	Bloemweg
3070300	Rivierenbuurt-Oost
3070301	Rivierenbuurt-West
3070302	G van Stellingwerfstraat
3070303	Bloemenbuurt-Oost
3070304	Bloemenbuurt-West
3070305	Bomenbuurt
3070306	Puntenburg
3070307	Piet Mondriaanlaan
3070401	Eemplein
3070402	Geldersestraat
3070403	Chromiumweg
3070404	Uraniumweg
3070500	BirkhovenenBokkeduinen
3070501	Vlasakkers
3070502	Zon en Schild
3070503	Wagenwerkplaats
3070600	Jericho en Jeruzalem
3070601	Meridiaan
3070603	Gildekwartier
3070700	Evertsenstraat
3070701	Neptunusplein
3070702	Columbusweg
3070800	Vuurtoren
3070801	De Plaatsen
3070803	Koperhorst
3070900	Elly Takmastraat
3070902	Camera Obscurastraat
3070903	Queekhoven
3070905	Het Gein
3071000	Liendertsedreef
3071001	Vinkenbaan
3071002	De Horsten
3071003	Albatrosstraat
3071004	Zwaluwenstraat
3071100	Rustenburg-Noord
3071101	Rustenburg-Zuid
3071201	Bloeidaal
3071202	Stoutenburgerlaan
3071300	Romeostraat
3071301	Ariaweg
3071302	Verdiweg
3071400	Willem III
3071401	Randenbroekerweg
3071402	Bachweg-Zuid
3071403	Weberstraat
3071500	Bekenstein en De Luiaard
3071501	Rubensstraat
3071502	Albert Cuypstraat
3071503	Dorrestein
3071600	De Driehoek
3071601	Voltastraat
3071602	Bosweg
3071603	Nimmerdor
3071700	Westerstraat
3071701	Juliana van Stolberg
3071702	Huygenslaan
3071703	De Lichtenberg
3071704	Verhoevenstraat
3071705	Indische Buurt
3071706	Curacaolaan
3071707	Klein Zwitserland
3071800	Regentesselaan
3071801	Station Berkenweg
3071802	Thorbeckeplein
3071803	Mr Th Heemskerklaan
3071804	Oranjelaan
3071900	De Ham
3071901	Langenoord
3071902	Bieshaar-Noord
3071903	Bieshaar-Zuid
3071904	De Bik
3071905	De Brinken
3071906	De Biezen
3072000	Vlinderbuurt
3072001	Erasmusstraat
3072002	Muziekbuurt-Noord
3072003	Muziekbuurt-Zuid
3072004	Architectenbuurt-Oost
3072005	Architectenbuurt-West
3072006	Sportpark Zielhorst
3072100	Stille Steeg
3072101	Amaniet
3072102	Woudzoom
3072103	Gesloten Stad
3072104	De Verwondering
3072105	Emiclaer
3072106	Groote Kreek
3072107	Het Hallehuis
3072108	De Horizon
3072201	Calveen
3072300	Park Schothorst-Zuid
3072301	Park Schothorst-Noord
3072400	Stadskwartier
3072402	Hoge Hoven
3072403	Centrum-Wat
3072404	Stadstuin
3072405	Waterkwartier
3072407	Lage Hoven
3072500	De Hoef-West
3072501	De Hoef-Oost
3072502	De Wieken
3072503	Vinkenhoef
3072504	Nijkerkerstraat
3072505	Bedrijventerrein Vathorst-Zuid
3072506	Podium
3072507	Bedrijventerrein Vathorst-Noord
3072508	De Brand
3072600	Dorpskern Hooglanderveen
3072601	Lient
3072602	Hoekveen
3072603	Heideweg
3072700	Coelhorst
3072701	Zeldert
3072709	Maatweg
3072800	Leersumseberg
3072801	Emminkhuizerberg
3072802	Sprengenberg
3072803	Duisterweg
3072804	Cycladen
3072805	Reinier
3072806	Lindeboomseweg
3072900	Roevoeterstraat
3072901	Winkelcentrum
3072902	Damespolder
3073000	De Bron Noord
3073001	De Bron Zuid
3073100	De Laak Oost
3073101	Hoornplantsoen
3073102	Muidenkade
3073103	Hogesteeg
3073104	Vathorst-West
3073108	Vathorst-Noord
3080000	Centrum
3080001	Schoonoordpark
3080002	Transvaal
3080003	Zandvoort
3080004	Oude-Oosterhei
3080005	Nieuwe-Oosterhei
3080006	Pekingpark
3080007	Amaliapark
3080100	Componistenwijk
3080101	Professorenwijk
3080102	Staatsliedenwijk
3080103	Schilderswijk
3080104	Eemdal-Noord
3080105	Eemdal-Zuid
3080109	Eemland waaronder Eembrugge
3080200	Wilhelminapark
3080201	Pr Hendrikpark
3080400	Verspreide huizen Baarn
3080401	Amerpoort Sherpa
3080500	Lage Vuursche
3080501	Verspreide huizen Lage Vuursche
3100101	Westbroek Kern
3100102	Westbroek Buitengebied
3100201	Hollandsche Rading Kern
3100202	Hollandsche Rading Buitengebied
3100301	Maartensdijk Kern
3100302	Industrieweg-Tolakkerweg
3100303	Maartensdijk Buitengebied
3100401	Groenekan Kern
3100402	Groenekan Buitengebied
3100505	De Leijen
3100601	Bilthoven Noord I
3100602	Bilthoven Noord II
3100603	Ridderoordsche Bossen
3100701	Bilthoven Centrum
3100702	Overbosch
3100703	Noord Houdringe
3100801	Tuindorp
3100802	Brandenburg
3100803	Larenstein
3100901	De Bilt West
3100902	Weltevreden
3100903	De Bilt Zuid
3101001	De Bilt Oost
3101002	Beerschoten-Oostbroek
3120000	Bunnik
3120001	Vechten
3120008	Verspreide huizen in het noorden
3120009	Verspreide huizen in het zuiden
3120100	Odijk
3120109	Verspreide huizen van Odijk
3120200	Werkhoven
3120209	Verspreide huizen van Werkhoven
3130001	Bunschoten
3130002	Spakenburg
3130003	Eemdijk
3130004	Broerswetering
3130005	Bikkersvaart
3130006	Blokhuiswetering
3130007	De Haar
3130008	Verspreide huizen
3130009	Koenraadswetering
3130011	Rengerswetering
3170210	Eembrugge
3170211	Eemmeer-Eemnes
3170212	Eemnes-Dorp
3170213	Eempolder
3170214	Polder te Veen
3170215	Goyergracht
3170216	Heidehoek
3170217	Noordbuurt
3170218	Wakkerendijk-Meentweg
3170219	Zuidbuurt
3211010	Oude Dorp
3211011	Oorden
3211012	Hoven
3211013	Gaarden
3211014	Hoeven
3211015	Erven
3211016	Poorten
3211017	Slagen
3211018	Borchen
3211019	Campen
3211050	Rondweg Noord-West
3211120	Centrum West
3211121	Centrum Oost
3211122	Molens
3211123	Hagen
3211124	Weiden
3211125	Gilden
3211126	Velden
3211127	Sloten
3211128	Bermen
3211129	Akkers
3211151	Rondweg Noord-Oost
3211230	Bouwen
3211231	Houten
3211232	Waters
3211233	Polders
3211234	Stenen
3211235	Muren
3211236	Castellum West
3211237	Castellum Oost
3211238	Schaften
3211252	Rondweg Zuid-West
3211340	Landen
3211341	Tuinen
3211342	Sporen
3211343	Meren
3211344	Mossen
3211345	Grassen
3211352	Rondweg Zuid-Oost
3212054	De Staart
3212055	Kaden
3212056	Vesten
3212057	Schepen
3212058	Boten
3212059	Honen
3212060	Hof van Wulven
3212061	Bruggen
3212062	Bogen
3212063	De Poel
3212064	Buitengebied Houten West
3212065	Buitengebied Houten Oost
3213070	Dorp t Goy
3213071	t Goyse Dorp
3213172	Buitengebied t Goy
3214080	t Waal
3214081	Tull
3214182	Buitengebied Tull en t Waal
3215090	Dorp Schalkwijk West
3215091	Dorp Schalkwijk Oost
3215192	Buitengebied Schalkwijk West
3215193	Buitengebied Schalkwijk Oost
3270000	Hamershof
3270001	Akkerhoeve
3270002	Noorwijck
3270003	Langenbeek
3270004	Zwanenburg
3270005	Munnikhove
3270006	Bosveld
3270007	Claverenblad
3270008	Wildenburg
3270009	Buitengebied Leusden-Centrum Oost
3270100	Hamersveld-Oud
3270101	Hamersveld-Nieuw
3270102	Rozenboom
3270103	Rozendaal
3270104	Alandsbeek-West
3270105	Alandsbeek-Oost
3270106	De Wetering
3270107	Rossenberg
3270108	Groenhouten
3270109	Buitengebied Leusden-Centrum West
3270200	Kern Leusden-Zuid
3270201	Tabaksteeg
3270209	Buitengebied Leusden-Zuid
3270300	Kern Achterveld
3270309	Buitengebied Achterveld
3270400	Stoutenburg
3270500	t Ruige Veld
3270501	t Vliet
3310000	Lopik-Dorp
3310001	Graaf
3310002	Uitweg
3310003	Lopikerkapel
3310004	Jaarsveld
3310005	Wielsekade
3310006	Cabauw
3310007	Zevender
3310008	Lekdijk tussen Jaarsveld en Schoonhoven
3310009	Langs de Lekdijk Lopikerwaard
3310010	Benschop-Dorp
3310019	Benschop Boveneind-Benedeneind
3310020	Polsbroek-Dorp
3310029	Polsbroek-Noordzijdseweg-Zuidzijdseweg
3350000	Montfoort
3350001	Tabakshof en Heeswijk gedeeltelijk
3350100	Linschoten
3350101	Polanen
3350102	Cattenbroek
3350103	Heeswijk
3350108	Verspreide huizen Linschoten
3350109	Verspreide huizen Mastwijk
3350200	Willeskop
3350201	Blokland
3350202	Beneden Kerkweg
3350209	Verspreide huizen
3390000	Renswoude
3390009	Verspreide huizen
3400001	Rhenen Binnenstad
3400101	Cunera
3400102	Vogelenzang
3400103	Grebbekwartier Zuid
3400104	Grebbekwartier Noord
3400105	Bruine Eng
3400201	Molenberg
3400202	Donderberg
3400203	Koerheuvel
3400301	Rhenen Hoog
3400302	Domineesberg
3400303	Helling Bergweg
3400401	Grebbeberg
3400501	Randzone
3400502	Veeneind
3400503	Rhenendael
3400504	Prattenburg
3400601	Binnenveld
3400701	Achterberg
3400702	De Horst
3400703	Achterberg West
3400801	Uiterwaarden Rhenen
3400901	Remmerden
3401001	Heuvelrug Rhenen
3401101	Heuvelrug Elst
3401201	Uiterwaarden Elst
3401301	De Vordel
3401302	Elst Centrum
3401303	Het Bosje
3401304	Elst West
3420101	Industrieterrein Soest
3420102	t Hart
3420103	Soestdijk
3420201	Klaarwater
3420301	Pijnenburg
3420302	Het Soesterveen
3420303	De Grachten
3420304	Boerenstreek
3420401	De Eng Noord West
3420402	De Eng
3420403	Soest Midden
3420404	Eemgebied
3420405	De Eng Zuid
3420501	Smitsveen
3420601	De Zoom
3420602	Wieksloot
3420604	Hees
3420605	Klein Engendaal
3420606	Klein Engendaal Noord
3420701	Soest Zuid
3420702	De Birkt
3420703	Soestduinen
3420704	Duinen Gebied
3420705	Paltz
3420706	Vlasakkers
3420801	Soesterberg Noord
3420802	Soesterberg Oost
3420803	Leusderheide
3420804	Soesterberg Kom
3440111	Welgelegen, Den Hommel
3440112	Oog in Al
3440113	Halve Maan-Zuid
3440114	Halve Maan-Noord
3440121	Lombok-Oost
3440122	Leidseweg en omgeving
3440123	Lombok-West
3440124	Laan van Nieuw-Guinea, Spinozaweg en omstreken
3440131	Nieuw Engeland, Th a Kempisplantsoen en omgeving
3440132	Schepenbuurt, Cartesiusweg en omstreken
3440133	Bedrijventerrein Lageweide
3440211	Pijlsweerd-Zuid
3440212	Pijlsweerd-Noord
3440221	Nijenoord, Hoogstraat en omgeving
3440222	Ondiep
3440223	2e Daalsebuurt en omgeving
3440224	Egelantierstraat, Mariëndaalstraat en omstreken
3440231	Julianapark en omgeving
3440232	Elinkwijk en omgeving
3440233	Prins Bernhardplein en omgeving
3440241	Geuzenwijk
3440242	Schaakbuurt en omgeving
3440243	Queeckhovenplein en omgeving
3440244	Zuilen-Noord
3440311	Taag- en Rubicondreef en omgeving
3440312	Wolga- en Donaudreef en omgeving
3440321	Zamenhofdreef en omgeving
3440322	Neckardreef en omgeving
3440331	Vechtzoom-zuid
3440332	Vechtzoom-noord, Klopvaart
3440333	Bedrijventerrein en omgeving
3440341	Zambesidreef en omgeving
3440342	Tigrisdreef en omgeving
3440343	Poldergebied Overvecht
3440411	Vogelenbuurt
3440412	Lauwerecht
3440413	Staatsliedenbuurt
3440414	Tuinwijk-West
3440415	Tuinwijk-Oost
3440421	Tuindorp en Van Lieflandlaan-West
3440422	Tuindorp-Oost
3440423	Voordorp en Voorveldsepolder
3440431	Huizingalaan, K Doormanlaan en omgeving
3440432	Zeeheldenbuurt, Hengeveldstraat en omgeving
3440433	Wittevrouwen
3440511	Buiten Wittevrouwen
3440512	Oudwijk
3440521	Abstede, Tolsteegsingel en omstreken
3440522	Sterrenwijk
3440523	Rubenslaan en omgeving
3440524	Watervogelbuurt
3440525	L Napoleonplantsoen en omgeving
3440526	Maarschalkerweerd en Mereveld
3440531	Schildersbuurt
3440532	Wilhelminapark en omgeving
3440533	Utrecht Science Park
3440534	Rijnsweerd
3440535	Galgenwaard en omgeving
3440611	Domplein, Neude, Janskerkhof
3440612	Lange Elisabethstraat, Mariaplaats en omgeving
3440613	Hoog-Catharijne NS en Jaarbeurs
3440621	Wijk C
3440622	Breedstraat en Plompetorengracht en omgeving
3440623	Nobelstraat en omgeving
3440624	Springweg en omgeving Geertebuurt
3440625	Lange Nieuwstraat en omgeving
3440626	Nieuwegracht-Oost
3440627	Bleekstraat en omgeving
3440628	Hooch Boulandt
3440711	Lunetten-Noord
3440712	Lunetten-Zuid
3440721	Tolsteeg en Rotsoord
3440722	Oud Hoograven-Noord
3440723	Oud Hoograven-Zuid
3440731	Bokkenbuurt
3440732	Nieuw Hoograven-Noord
3440733	Nieuw Hoograven-Zuid
3440811	Dichterswijk
3440812	Rivierenwijk
3440821	Bedrijvengebied Kanaleneiland
3440822	Transwijk-Zuid
3440823	Transwijk-Noord
3440831	Kanaleneiland-Zuid
3440832	Kanaleneiland-Noord
3440911	Bedrijventerrein De Wetering
3440912	Terwijde-West
3440913	Terwijde-Oost
3440921	Het Zand-West
3440922	Het Zand-Oost
3440931	Leidsche Rijn-Centrum
3440932	Grauwaart
3440933	Hoge Weide
3440934	Leeuwesteyn
3440941	Parkwijk-Noord
3440942	Parkwijk-Zuid
3440943	Langerak
3440951	Rijnvliet
3440952	Bedrijvengebied Strijkviertel
3440953	Bedrijvengebied Papendorp
3441011	Haarrijn
3441012	Haarzuilens en omgeving
3441013	Vleuten
3441014	Máximapark
3441021	Vleuterweide-West
3441022	Vleuterweide-NoordenOostenCentrum
3441023	Vleuterweide-Zuid
3441024	Veldhuizen
3441031	De Meern-Noord
3441032	De Meern-Zuid
3441033	Bedrijvengebied Oudenrijn
3441041	Rijnenburg
3450000	Koopcentrum
3450001	Vijgendam en omgeving
3450002	Schrijverswijk
3450003	Beatrixstraat en omgeving
3450100	Dragonder-Noord
3450101	Dragonder-Zuid
3450102	De Compagnie-Oost
3450103	Spitsbergen
3450104	Dragonder-Oost
3450105	Veenendaal-Oost
3450200	Engelenburg
3450201	Het Ambacht
3450202	Boslaan en omgeving
3450203	Petenbos
3450204	Petenbos-Oost
3450205	Nijverkamp
3450206	De Groene Velden
3450207	De Blauwe Hel
3450208	Bezuiden de Middelbuurtseweg
3450300	t Goeie Spoor en omgeving
3450301	Franse Gat
3450302	Salamander
3450400	Molenbrug
3450401	t Hoorntje
3450402	De Pol
3450403	De Gelderse blom
3450404	De Compagnie
3450405	De Batterijen
3450500	Oudeveen en De Schans en omgeving
3450501	Componistenbuurt
3450502	Vogelbuurt
3450503	Schepenbuurt
3450504	Dichtersbuurt
3450505	De Faktorij en De Vendel
3450506	Fort Buurtsteeg
3450507	Bezuiden de Dijkstraat
3510001	De Grift
3510002	Nico Bergsteijn
3510003	Nieuwoord
3510004	Laanzicht
3510005	Het Zeeland
3510006	Het Groene Woud
3510007	Woudenberg-Oost
3510008	Bedrijventerrein
3510009	Den Treek-Henschoten
3510010	Geerestein
3510011	Voskuilen
3510012	Rumelaar-Lambalgen
3520000	Binnenstad
3520001	De Engk
3520002	Frankenhof
3520003	De Heul
3520004	Noorderwaard-Noord
3520005	Noorderwaard-Zuid
3520006	De Horden Stenen en Ovens
3520007	De Horden Rivieren
3520008	De Horden Schepen
3520009	De Horden Parckwijk
3520010	Bedrijventerrein Broekweg & Langshaven
3520011	De Geer
3520100	Buitengebied Wijk bij Duurstede
3520101	Buitengebied ten zuiden van Amsterdam-Rijnkanaal
3520200	Cothen
3520201	Buitengebied Cothen
3520300	Langbroek
3520301	Buitengebied Langbroek
3530001	IJsselstein-Binnenstad
3530002	Nieuwpoort
3530003	Groenvliet
3530004	Kasteelkwartier
3530005	Europakwartier
3530006	Oranjekwartier
3530007	IJsselveld-Oost
3530008	IJsselveld-West
3530009	IJsseloevers
3530010	Hazenveld en Overwaard
3530011	Rijpickerwaard
3530012	Panoven
3530013	Paardenveld
3530014	Over Oudland
3530015	Industrieterrein Lage Dijk
3530016	Bedrijventerrein De Corridor
3530017	De Hoven en De Boomgaard
3530018	De Tuinen
3530019	Het Hart
3530020	De Wereldsteden
3530021	De Rivieren
3530022	Het Staatse
3530023	Benschopperpoort en Het Podium
3530024	Achterveld-Zuid
3530025	Achterveld-West
3530026	Achterveld-Noord
3530027	Achterveld-Oost
3530028	Eiterse Waard
3530029	Landelijk gebied Noord
3530030	Landelijk gebied Zuid
3550101	Carré
3550102	Centrumschil-Zuid
3550103	Centrumschil-Noord
3550104	Lyceumkwartier
3550105	Het Slot en omgeving
3550201	Patijnpark
3550202	Dijnselburg
3550203	Staatsliedenkwartier
3550204	Mooi Zeist
3550205	Vollenhove
3550206	Utrechtseweg
3550301	Griffensteijn en Kersbergen
3550302	Nijenheim
3550303	Crosesteijn
3550304	Vogelwijk
3550305	Brugakker
3550306	De Clomp
3550307	Couwenhoven
3550308	Blikkenburg en omstreken
3550309	Weidegebied
3550401	Hoge Dennen
3550402	Kerckebosch
3550403	Driebergseweg
3550404	Station NS
3550405	Zeister Bos
3550406	Austerlitz
3550407	Verspreide huizen Austerlitz
3550501	Huis ter Heide-Zuid
3550502	Huis ter Heide-Noord
3550503	Bosch en Duin
3550504	Beukbergen
3550505	Den Dolder-Zuid
3550506	Den Dolder-Noord
3550507	Soestdijkerweg en omgeving
3550508	Sterrenberg
3560100	Jutphaas Wijkersloot
3560200	Zuilenstein
3560300	Batau Zuid
3560400	Batau Noord
3560500	Doorslag
3560600	Huis de Geer
3560700	Blokhoeve
3560800	Galecop
3561000	Fokkesteeg
3561100	Hoogzandveld
3561200	Lekboulevard
3561300	Vreeswijk
3561400	Merwestein
3561500	Park Oudegein
3561600	Zandveld
3561800	Het Klooster
3562000	Laagraven
3562100	Plettenburg
3562200	De Wiers
3562300	Hoge Landen
3562400	Stadscentrum
3562500	Rijnhuizen
3580000	Centrum
3580001	Stommeer
3580004	Hornmeer
3580005	Uiterweg
3580100	Kudelstaart
3580200	Bovenlanden
3580201	Greenpark
3580205	Oosteinde
3580206	Schinkelpolder
3610100	Kooimeer
3610101	Dillenburg en Stadhouderskwartier
3610102	Staatsliedenkwartier en Landstraten
3610103	Oud-Rochdale
3610104	Emmakwartier
3610105	Nassaukwartier en Hout
3610106	Oranjepark
3610107	Cranenbroek
3610108	Bloemwijk en Zocherkwartier
3610109	Burgemeesterskwartier
3610200	Rekerbuurt en Ooievaarsnest
3610201	Oudorp-Noord en Oudorp-Oost
3610202	Oudorp-Centrum
3610203	Schermereiland en Omval
3610204	Oudorperpolder-Zuid
3610205	Oudorperpolder-Midden
3610206	Oudorperpolder-Noord
3610208	De Nollen
3610209	Beverkoog
3610300	Oud-Overdie
3610301	Oosterhout
3610302	Overdie-Oost
3610303	Overdie-West
3610308	Boekelermeer-Zuid
3610309	Boekelermeer-Noord
3610400	De Hoef III en IV
3610401	De Hoef I en II
3610402	Bergerwegkwartier
3610403	Bergerhof en Blaeustraatkwartier
3610404	Bergermeer
3610409	Landelijk gebied-West
3610500	Huiswaard-1-Zuid
3610501	Muiderwaard
3610502	Huiswaard-2-West
3610503	Huiswaard-2-Oost
3610600	t Rak-Zuid
3610601	t Rak-Noord
3610602	De Horn-Noord
3610603	De Horn-Zuid
3610604	De Mare
3610700	Daalmeer-Zuidoost
3610701	Daalmeer-Zuidwest
3610702	Koedijk en De Weijdt
3610703	Daalmeer-Noordwest
3610704	Daalmeer-Noordoost
3610709	Landelijk gebied Noord
3610800	Binnenstad-West
3610801	Binnenstad-Oost
3610802	Spoorbuurt
3610803	Overstad
3610900	Oterleek
3610901	Ursem gem S
3610902	Stompetoren
3610903	Schermerhorn
3610904	Zuidschermer
3610905	Driehuizen
3610906	Grootschermer
3611000	Noordeinde
3611001	West-Graftdijk
3611002	Graft
3611003	De Rijp
3611004	Oost-Graftdijk
3611005	Starnmeer
3611006	Markenbinnen
3611100	Vroonermeer-Zuid
3611101	Vroonermeer-Noord
3620101	Randwijck West
3620102	Randwijck Oost
3620201	Oranjebuurt
3620202	Patrimonium
3620301	Elsrijk West
3620302	Kruiskerkbuurt
3620303	Vredeveldbuurt
3620304	Elsrijk Oost
3620401	Stadshart
3620501	Uilenstede
3620502	Kronenburg
3620601	Heldenbuurt
3620602	Zeestratenbuurt
3620603	Boekenbuurt
3620604	Operabuurt
3620701	Middelpolder
3620702	Buurt over Ouderkerk
3620801	Oude Dorp
3620802	Kastanjebuurt
3620803	Van der Leekbuurt
3620804	Populierenbuurt
3620805	Augustinuspark
3620806	Startbaanbuurt
3620901	Langerhuize
3620902	Alpen Rondwegbuurt
3620903	In de Wolkenbuurt
3620904	Watercirkelbuurt
3620905	Kringloopbuurt
3621001	Beroepenbuurt
3621002	Hemellichamenbuurt
3621003	Punterbuurt
3621004	Molenbuurt
3621005	Galjoenbuurt
3621101	Bovenkerk
3621102	Buitenplaatsenbuurt
3621103	Betsy Perkbuurt
3621104	Legmeer
3621105	Landschappenbuurt
3621106	Theaterbuurt
3621201	Kastelenbuurt
3621202	Schrijversbuurt
3621203	Kruidenbuurt
3621204	De Scheg
3621301	Nes aan de Amstel
3621302	Legmeerpolder
3621401	Amsterdamse Bos Noord
3621402	Amsterdamse Bos Zuid
3630000	Kop Zeedijk
3630001	Oude Kerk en omstreken
3630002	Burgwallen Oost
3630003	Nes en omstreken
3630004	BG-terrein en omstreken
3630100	Stationsplein en omstreken
3630101	Hemelrijk
3630102	Nieuwendijk Noord
3630103	Spuistraat Noord
3630104	Nieuwe Kerk en omstreken
3630105	Spuistraat Zuid
3630106	Begijnhofbuurt
3630107	Kalverdriehoek
3630200	Langestraat en omstreken
3630201	Leliegracht en omstreken
3630202	Felix Meritisbuurt
3630203	Leidsegracht Noord
3630300	Spiegelbuurt
3630301	Gouden Bocht
3630302	Van Loonbuurt
3630303	Amstelveldbuurt
3630304	Rembrandtpleinbuurt
3630305	Reguliersbuurt
3630306	Leidsegracht Zuid
3630400	Oosterdokseiland
3630401	Scheepvaarthuisbuurt
3630402	Rapenburg
3630403	Lastage
3630404	Nieuwmarkt
3630405	Uilenburg
3630406	Valkenburg
3630407	Zuiderkerkbuurt
3630408	Waterloopleinbuurt
3630500	Westerdokseiland
3630501	Haarlemmerbuurt Oost
3630502	Haarlemmerbuurt West
3630503	Westelijke eilanden
3630505	Planciusbuurt Noord
3630506	Planciusbuurt Zuid
3630600	Driehoekbuurt
3630602	Bloemgrachtbuurt
3630603	Marnixbuurt Noord
3630604	Zaagpoortbuurt
3630605	Marnixbuurt Midden
3630606	Elandsgrachtbuurt
3630607	Passeerdersgrachtbuurt
3630608	Groenmarktkadebuurt
3630609	Marnixbuurt Zuid
3630610	Anjeliersbuurt Noord
3630611	Anjeliersbuurt Zuid
3630700	Leidsebuurt Noordwest
3630701	Leidsebuurt Zuidwest
3630702	Leidsebuurt Noordoost
3630703	Leidsebuurt Zuidoost
3630704	Weteringbuurt
3630705	Den Texbuurt
3630706	Utrechtsebuurt Zuid
3630707	Frederikspleinbuurt
3630800	Weesperbuurt
3630801	Sarphatistrook
3630803	de Plantage
3630804	Alexanderplein en omstreken
3630900	Marine-Etablissement
3630901	Kattenburg
3630902	Wittenburg
3630903	Oostenburg
3630904	Czaar Peterbuurt
3630905	Het Funen
3630907	Kazernebuurt
3630908	Kadijken
3631000	CoenhavenenMercuriushaven
3631001	Alfa-driehoek
3631002	Petroleumhaven
3631003	Westhaven Noord
3631004	Vervoerscentrum
3631005	Amerikahaven
3631006	Afrikahaven
3631007	Westhaven Zuid
3631100	Sloterdijk II
3631102	Sloterdijk III Oost
3631103	Sloterdijk III West
3631104	De Heining
3631105	Teleport
3631107	Bretten Oost
3631109	Bretten West
3631200	Houthavens West
3631201	Houthavens Oost
3631300	Zeeheldenbuurt
3631301	Spaarndammerbuurt Noordoost
3631302	Spaarndammerbuurt Zuidoost
3631303	Spaarndammerbuurt Zuidwest
3631304	Spaarndammerbuurt Midden
3631305	Spaarndammerbuurt Noordwest
3631306	Westergasfabriek
3631307	Overbraker Binnenpolder
3631400	De Wittenbuurt Noord
3631401	De Wittenbuurt Zuid
3631402	Staatsliedenbuurt Noordoost
3631403	Fannius Scholtenbuurt
3631404	Westerstaatsman
3631405	Buyskade en omstreken
3631500	Ecowijk
3631501	Markthallen
3631502	Bedrijvencentrum Westerkwartier
3631503	Marcanti
3631600	Frederik Hendrikbuurt Noord
3631601	Frederik Hendrikbuurt Zuidoost
3631602	Frederik Hendrikbuurt Zuidwest
3631700	Da Costabuurt Noord
3631800	Bellamybuurt Noord
3631801	Bellamybuurt Zuid
3631900	Da Costabuurt Zuid
3631901	Borgerbuurt
3631902	Lootsbuurt
3632000	Helmersbuurt Oost
3632001	WG-terrein
3632002	Cremerbuurt Oost
3632100	Cremerbuurt West
3632101	Vondelparkbuurt West
3632200	Vondelparkbuurt Oost
3632201	Vondelparkbuurt Midden
3632300	Zuidas Noord
3632301	RAI
3632302	VU-kwartier
3632303	Zuidas Zuid
3632304	Vivaldi
3632400	Hemonybuurt
3632401	Gerard Doubuurt
3632402	Frans Halsbuurt
3632403	Hercules Seghersbuurt
3632404	Sarphatiparkbuurt
3632500	Willibrordusbuurt
3632501	Van der Helstpleinbuurt
3632502	Lizzy Ansinghbuurt
3632503	Cornelis Troostbuurt
3632600	Diamantbuurt
3632601	Burgemeester Tellegenbuurt Oost
3632602	Burgemeester Tellegenbuurt West
3632700	Swammerdambuurt
3632701	Weesperzijde MiddenenZuid
3632702	Parooldriehoek
3632800	Oosterparkbuurt Noordwest
3632801	Oosterpark
3632802	Oosterparkbuurt Zuidoost
3632803	Oosterparkbuurt Zuidwest
3632900	Dapperbuurt Noord
3632901	Dapperbuurt Zuid
3632902	Oostpoort
3633000	Transvaalbuurt West
3633001	Transvaalbuurt Oost
3633100	Noordwestkwadrant Indische buurt Noord
3633101	Noordwestkwadrant Indische buurt Zuid
3633102	Zuidwestkwadrant Indische buurt
3633200	Noordoostkwadrant Indische buurt
3633201	Zuidoostkwadrant Indische buurt
3633202	Zeeburgerdijk Oost
3633203	Flevopark
3633300	Oostelijke Handelskade
3633301	Rietlanden
3633302	Java-eiland
3633303	KNSM-eiland
3633304	Sporenburg
3633305	Borneo
3633306	Entrepot-Noordwest
3633307	Architectenbuurt
3633308	Bedrijvengebied Veelaan
3633309	Bedrijvengebied Cruquiusweg
3633310	Bedrijvengebied Zeeburgerkade
3633400	Zeeburgereiland Noordwest
3633402	Zeeburgereiland Zuidoost
3633403	Zeeburgereiland Zuidwest
3633404	Nieuwe DiepenDiemerpark
3633405	RI Oost terrein
3633406	Zeeburgereiland Noordoost
3633500	Steigereiland Noord
3633501	Steigereiland Zuid
3633502	Haveneiland ZuidwestenRieteiland West
3633504	Haveneiland Noordwest
3633505	Haveneiland Noordoost
3633600	Woon- en Groengebied Sloterdijk
3633601	Bedrijventerrein Sloterdijk I
3633700	Bedrijventerrein Landlust
3633702	Bosleeuw
3633703	Landlust Zuid
3633704	Erasmusparkbuurt Oost
3633705	Gibraltarbuurt
3633706	Landlust Noord
3633802	Erasmusparkbuurt West
3633803	Robert Scottbuurt Oost
3633900	Robert Scottbuurt West
3633901	Laan van Spartaan
3633902	Kolenkitbuurt Zuid
3633903	Kolenkitbuurt Noord
3634000	Geuzenhofbuurt
3634001	Trompbuurt
3634002	Pieter van der Doesbuurt
3634100	John Franklinbuurt
3634101	Jan Maijenbuurt
3634102	Orteliusbuurt Noord
3634103	Mercatorpark
3634200	Balboaplein en omstreken
3634201	Columbusplein en omstreken
3634202	Orteliusbuurt Midden
3634203	Orteliusbuurt Zuid
3634300	Paramariboplein en omstreken
3634301	Postjeskade en omstreken
3634400	Surinamepleinbuurt
3634401	Westlandgrachtbuurt
3634402	Aalsmeerwegbuurt West
3634403	Aalsmeerwegbuurt Oost
3634404	Legmeerpleinbuurt
3634405	Bedrijventerrein Schinkel
3634500	Schinkelbuurt Noord
3634501	Schinkelbuurt Zuid
3634600	Valeriusbuurt Oost
3634601	Valeriusbuurt West
3634602	Willemsparkbuurt Noord
3634603	Vondelpark West
3634700	Johannnes Vermeerbuurt
3634701	PC Hooftbuurt
3634702	Concertgebouwbuurt
3634703	Cornelis Schuytbuurt
3634704	Banpleinbuurt
3634705	Hondecoeterbuurt
3634706	Harmoniehofbuurt
3634707	Museumplein
3634708	Vondelpark Oost
3634709	Duivelseiland
3634800	Bertelmanpleinbuurt
3634801	Marathonbuurt Oost
3634802	Marathonbuurt West
3634803	Olympisch Stadion en omstreken
3634804	IJsbaanpad en omstreken
3634805	Van Tuyllbuurt
3634900	Diepenbrockbuurt
3634901	Beethovenbuurt
3634902	Hiltonbuurt
3634903	Minervabuurt Noord
3634904	Minervabuurt Midden
3634905	Minervabuurt Zuid
3635000	Strandeiland
3635001	Middeneiland Zuidoost
3635003	Middeneiland Zuidwest
3635005	Buiteneiland
3635006	Centrumeiland
3635100	Rieteiland Oost
3635101	Haveneiland Oost
3635102	Haveneiland Noord
3635200	Wielingenbuurt
3635201	Scheldebuurt West
3635202	Scheldebuurt Midden
3635203	Scheldebuurt Oost
3635206	Veluwebuurt
3635207	Kop Zuidas
3635300	IJselbuurt West
3635301	IJselbuurt Oost
3635400	Kromme Mijdrechtbuurt
3635401	Rijnbuurt Oost
3635402	Rijnbuurt Midden
3635403	Rijnbuurt West
3635404	Zorgvlied
3635501	De Eenhoorn
3635502	Julianapark
3635503	Don Bosco
3635504	Frankendael
3635505	Tuindorp Amstelstation
3635506	De Wetbuurt
3635507	Tuindorp Frankendael
3635508	Van der Kunbuurt
3635600	Linnaeusparkbuurt
3635601	Middenmeer Noord
3635602	Middenmeer Zuid
3635603	Sportpark Middenmeer Zuid
3635604	Sportpark Middenmeer Noord
3635605	Park de Meer
3635606	Sportpark Voorland
3635607	Science Park Noord
3635608	Science Park Zuid
3635700	Betondorp
3635701	Nieuwe Oosterbegraafplaats
3635702	Drieburg
3635801	Weespertrekvaart
3635804	Amstelglorie
3635805	Overamstel
3635806	Amstelkwartier Noord
3635807	De Omval
3635808	Amstelkwartier Zuid
3635809	Amstelkwartier West
3635900	Prinses Irenebuurt
3635901	Beatrixpark
3636000	Van der Pekbuurt
3636001	Bloemenbuurt Zuid
3636002	Bloemenbuurt Noord
3636100	IJplein en omstreken
3636101	Vogelbuurt Zuid
3636102	Vogelbuurt Noord
3636103	Vliegenbos
3636200	Tuindorp Nieuwendam West
3636201	Tuindorp Nieuwendam Oost
3636300	Blauwe Zand
3636400	Buiksloterdijk West
3636401	Buiksloterdijk Oost
3636402	Nieuwendammerdijk West
3636403	Nieuwendammerdijk Oost
3636404	Nieuwendammerdijk Zuid
3636500	Tuindorp Oostzaan West
3636501	Tuindorp Oostzaan Oost
3636502	Terrasdorp
3636503	De Bongerd
3636601	Oostzanerdijk
3636602	Walvisbuurt
3636603	Twiske West
3636604	Noorder IJplas
3636605	Molenwijk
3636606	CircusenKermisbuurt
3636700	Kadoelen
3636701	Twiske Oost
3636800	Baanakkerspark Noord
3636801	Baanakkerspark Zuid
3636802	Werengouw Midden
3636803	Markengouw Midden
3636804	Markengouw Zuid
3636805	Werengouw Zuid
3636900	Rode Kruisbuurt
3636902	Loenermark
3636909	Buikslotermeerplein
3636910	Plan van Gool
3636911	De Kleine Wereld
3636912	Buikslotermeer Noord
3637000	Banne Zuidwest
3637001	Banne Zuidoost
3637002	Banne Noordwest
3637003	Banne Noordoost
3637004	Buiksloterbreek
3637005	Marjoleinterrein
3637102	Papaverweg en omstreken
3637104	Cornelis Douwesterrein
3637105	NDSM terrein
3637106	Buiksloterham
3637107	Overhoeks
3637200	Bedrijventerrein Hamerstraat
3637201	Zamenhofstraat en omstreken
3637202	Bedrijventerrein Nieuwendammerdijk
3637300	Schellingwoude West
3637301	Schellingwoude Oost
3637302	Schellingwoude Noord
3637303	Durgerdam
3637304	Zwarte Gouw
3637305	Ransdorp
3637306	Holysloot
3637307	Zunderdorp
3637308	Noorderstrook West
3637309	Noorderstrook Oost
3637400	Nintemanterrein
3637401	Elzenhagen Zuid
3637402	Elzenhagen Noord
3637500	Kortenaerkwartier
3637501	Filips van Almondekwartier
3637502	De Wester Quartier
3637503	Van Brakelkwartier
3637600	Buurt 3
3637601	Buurt 2
3637700	Slotermeer Zuid
3637701	Noordoever Sloterplas
3637702	Buurt 4 Oost
3637703	Buurt 5 Noord
3637704	Sloterpark
3637705	Buurt 5 Zuid
3637800	Buurt 6
3637801	Buurt 7
3637802	Buurt 8
3637803	Buurt 9
3637804	Eendrachtspark
3637900	Osdorper Binnenpolder
3637901	Buurt 10
3638000	Ookmeer
3638001	Osdorper Bovenpolder
3638002	Bedrijvenpark Lutkemeer
3638100	Wildeman
3638101	Meer en Oever
3638102	Osdorpplein en omstreken
3638103	CalandlaanenLelylaan
3638104	Osdorp Zuidoost
3638200	Osdorp Midden Noord
3638201	Osdorp Midden Zuid
3638202	Zuidwestkwadrant Osdorp Noord
3638203	Zuidwestkwadrant Osdorp Zuid
3638300	De Punt
3638301	Bedrijvencentrum Osdorp
3638400	Middelveldsche Akerpolder
3638401	De Aker West
3638402	De Aker Oost
3638500	Oostoever Sloterplas
3638501	Emanuel van Meterenbuurt
3638502	Jacob Geelbuurt
3638600	Overtoomse Veld Noord
3638601	Overtoomse Veld Zuid
3638602	Rembrandtpark Noord
3638603	Rembrandtpark Zuid
3638604	Johan Jongkindbuurt
3638605	LucasenAndreasziekenhuis en omstreken
3638700	Koningin Wilhelminaplein
3638701	Andreasterrein
3638702	Delflandpleinbuurt Oost
3638703	Delflandpleinbuurt West
3638704	Riekerhaven
3638705	Schipluidenbuurt
3638800	Riekerpolder
3638801	Park Haagseweg
3638802	Nieuwe Meer
3638803	Sloterweg en omstreken
3638804	Nieuw Sloten Noordwest
3638805	Nieuw Sloten Noordoost
3638806	Belgiëplein en omstreken
3638807	Nieuw Sloten Zuidwest
3638808	Nieuw Sloten Zuidoost
3638809	Dorp Sloten
3638900	Louis Chrispijnbuurt
3638901	Jacques Veltmanbuurt
3638902	Staalmanbuurt
3638903	Medisch Centrum Slotervaart
3639000	Gelderlandpleinbuurt
3639002	Buitenveldert Midden Zuid
3639003	Buitenveldert Zuidwest
3639004	Amsterdamse Bos
3639008	Buitenveldert West Midden
3639009	Zuiderhof
3639100	De Klenckebuurt
3639101	Buitenveldert Oost Midden
3639102	Buitenveldert Zuidoost
3639103	Amstelpark
3639200	Hoofdcentrum Zuidoost
3639201	Amstel III deel AenB Noord
3639202	Amstel III deel CenD Noord
3639203	Amstel III deel AenB Zuid
3639204	Amstel III deel CenD Zuid
3639205	AMC
3639206	Hoge Dijk
3639300	Venserpolder West
3639301	Venserpolder Oost
3639302	D-buurt
3639303	F-buurt
3639304	Amsterdamse Poort
3639305	Hoptille
3639306	Rechte H-buurt
3639307	HakfortenHuigenbos
3639308	Huntum
3639309	Vogeltjeswei
3639310	Nelson Mandelapark
3639400	E-buurt
3639401	G-buurt West
3639402	Bijlmermuseum Noord
3639403	Kortvoort
3639404	Kelbergen
3639405	K-buurt Midden
3639406	K-buurt Zuidoost
3639407	K-buurt Zuidwest
3639408	GrunderenKoningshoef
3639409	G-buurt Oost
3639410	Kantershof
3639411	Gooise Kant
3639412	G-buurt Noord
3639413	Bijlmermuseum Zuid
3639500	L-buurt
3639501	Gaasperpark
3639502	Gaasperplas
3639600	Holendrecht West
3639601	Reigersbos Noord
3639602	Holendrecht Oost
3639603	Gaasperdam Noord
3639604	Gaasperdam Zuid
3639605	Reigersbos Midden
3639606	Reigersbos Zuid
3639700	Gein Noordwest
3639701	Gein Zuidwest
3639702	Gein Noordoost
3639703	Gein Zuidoost
3639800	Dorp Driemond
3639801	Landelijk gebied Driemond
3700000	Middenbeemster
3700001	Westbeemster
3700002	Noordbeemster
3700003	Oostbeemster
3700006	Verspreide huizen ten zuiden en oosten van Middenbeemster
3700007	Verspreide huizen in het Noordoosten
3700008	Verspreide huizen in Noorden en Noordwesten
3700009	Verspreide huizen ten zuidwesten van Middenbeemster
3700100	Zuidoostbeemster Tuinhoek
3700109	Verspreide huizen Zuidoostbeemster
3730101	Bergen-Centrum
3730102	Van Reenen
3730103	Boschrand
3730104	Negen-Nessen
3730105	Landweg
3730106	Oudtburgh
3730107	De Rekere
3730108	Elkshove
3730109	Saenegheest
3730110	Tuin-en Oostdorp
3730111	Boendermaker
3730112	Kruidenbuurt
3730113	Conincx
3730114	Beekhove
3730115	Oldehove
3730116	Geest
3730117	Westdorp
3730200	Bergen aan Zee
3730300	Buitengebied Bergen
3730400	Egmond aan Zee
3730401	Prins Hendrik Stichting
3730402	Zuid I en II
3730403	Sportlaan
3730500	Egmond-Binnen
3730501	Rinnegom
3730600	Egmond aan den Hoef
3730601	Slotplan
3730602	Wimmenum
3730609	Verspreide huizen Egmondermeer
3730700	Schoorl met Bregtdorp
3730701	Schoorldam gedeeltelijk
3730702	Aagtdorp
3730703	Catrijp
3730704	Groet met Hargen
3730705	Camperduin
3730709	Verspreide huizen in de polders
3750000	Wijkertoren
3750001	Meerplein
3750002	Koningstraat
3750003	Burgerhartstraat
3750004	Sint Aagtendorp
3750005	Reguliersstraat
3750100	Vondellaan
3750101	Ronde Boogaard
3750102	Westerhout
3750200	Oranjebuurt
3750201	Oud Sportpark
3750202	Beijnes
3750300	Plantage
3750301	Oostertuinen
3750302	Kuenenplein
3750303	De Naald
3750400	Warande
3750401	De Horn
3750500	Westertuinen
3750501	Creutzberglaan
3750502	Binnenduin
3750600	Oosterwijk
3750601	Zwaansmeer
3750700	Bleriotlaan
3750701	Fokkerlaan
3750702	Wijkerbaan
3750703	Overbos
3750800	Wijk aan Zee
3750801	Industriegebied Hoogovens
3750900	De Pijp
3750901	Kagerweg
3750902	Wijkerbroek
3751000	Lanen
3751001	De Ladder Noord
3751002	De Ladder Zuid
3751003	Waterwijk
3760101	Bijvanck
3760102	Blaricum-Dorp
3760103	Blaricummer Heide
3760104	Blaricummermeent
3760105	Crailo
3760106	De Kampen
3760107	Eemmeer-Blaricum
3760108	Stichtsebrug
3760109	Warandepark-De Eng
3770000	Bloemendaal
3770001	Veen en Duin
3770002	Wildhoef
3770003	Duinlustpark
3770004	Provinciaal Ziekenhuis
3770005	De Rijp
3770009	Verspreide huizen Bloemendaal
3770100	Overveen
3770101	Oldenhove
3770109	Overveen-West
3770200	Aerdenhout-Centrum
3770201	Aerdenhout-West
3770202	Aerdenhout-Noord
3770209	Aerdenhout-Zuid
3770300	Vogelenzang
3770309	Verspreide huizen Vogelenzang
3770400	Oude Kern Bennebroek
3770401	Villawijk Het Duin
3770402	Leidsevaart- Bloemhof
3770403	Villawijk Bijweg
3770404	Meerwijk
3770409	Vogelenzang Psychiatrisch Ziekenhuis
3830001	Centrum-Noord
3830011	Centrum-Zuid
3830101	Oranjebuurt
3830111	Kooiweg
3830201	Molendijk
3830211	Noord-End
3830221	Alberts Hoeve
3830301	Beverwijkerstraatweg
3830311	Buitengebied
3830401	Bakkum-Noord
3830411	Bakkum-Zuid
3830421	Duin en Bosch
3830431	Duingebied
3830501	Akersloot Oost
3830511	Akersloot West
3830601	De Woude
3830701	Limmen West
3830711	Limmen Centrum
3830721	Limmen Oost
3840101	Buytenstee
3840102	Oud Diemen
3840103	Vogelweide
3840104	Scheepskwartier
3840105	Vlindertuin
3840106	Diemerpolder
3840201	Centrum West
3840202	Ruimzicht West
3840203	Spoorzicht
3840204	Buitenlust
3840205	Spoordriehoek
3840206	Ruimzicht Oost
3840207	Centrum Oost
3840208	Studentenflats Rode Kruislaan
3840301	Akkerland
3840302	Bomenrijk
3840303	Beukenhorst
3840304	Anne Frank
3840305	Schelpenhoek
3840306	Kruidenhof
3840307	Polderland
3840308	Biesbosch
3840401	Bergwijkpark
3840501	Campus Diemen Zuid
3840502	Holland Park
3840503	Holland Park Zuid
3840504	Holland Park West
3840601	Verrijn Stuart
3840602	De Sniep
3840603	Stammerdijk
3840701	Plantage de Sniep Zuid
3840702	Plantage de Sniep Noord
3840703	Sportpark De Diemen
3840801	Gemeenschapspolder
3840802	Overdiemerpolder
3840803	Overdiemen
3840804	Diemer Vijfhoek
3850001	Edam-Oude kom
3850002	Edam-Industriegebied
3850003	Edam-Zuid
3850004	Edam-Singelwijk
3850005	Edam-Molenbuurt
3850006	Zeevangpolder
3850101	Purmerpolder
3850201	Volendam-Oude kom
3850202	Volendam-Katham + Planetenbuurt
3850203	Volendam-Blokgouw 1 en 2
3850204	Volendam-Blokgouw 3
3850205	Volendam-Blokgouw 4, 5 en 6
3850206	Volendam-Blokgouw 7 en 8
3850207	Volendam-Rozettenbuurt
3850208	Volendam-Bloemenbuurt
3850209	Volendam-Industriegebied
3850210	Volendam-Middengebied
3850211	Lange Weeren
3850212	Broeckgouw
3850301	Beets
3850401	Oosthuizen
3850402	De Watering
3850501	Warder
3850601	Middelie
3850701	Kwadijk
3850801	Schardam
3850901	Hobrede
3880000	Centrum Vissersbuurt Oosterhaven
3880001	Havenbuurt Snouck van Loosenpark
3880002	Boerenhoek Molenweg Burgwal
3880003	Enkhuizen-Noord
3880100	Westeinde
3880101	Kadijken
3880102	Oude Gouw-Gommerwijk
3880103	Oosterdijk
3920101	Stationsbuurt
3920102	Binnenstad
3920103	Bakenes
3920104	Burgwal
3920105	Vijfhoek
3920106	Heiliglanden
3920201	Koninginnebuurt
3920202	Florapark
3920203	Welgelegen
3920204	Rozenprieel-noord
3920205	Rozenprieel-zuid
3920206	Bosch en Vaart
3920207	Haarlemmerhout
3920208	Zuiderhout
3920301	Garenkokerskwartier
3920302	Hasselaersbuurt
3920303	Leidsebuurt-west
3920304	Leidsebuurt-oost
3920401	Van Galenbuurt
3920402	Zeeheldenbuurt
3920403	Geschiedschrijversbuurt
3920404	Natuurkundigenbuurt-west
3920405	Natuurkundigenbuurt-oost
3920501	Veldzigt
3920502	Bloemenbuurt
3920503	Ramplaankwartier
3920504	Tuinbouwgebied-noord
3920505	Tuinbouwgebied-zuid
3920506	Oosterduin
3920601	Sportliedenbuurt
3920602	Waarderpolder
3920603	Schoteroog en Veerpolder
3920701	Oude Amsterdamsebuurt
3920702	Potgieterbuurt
3920703	Cremerbuurt
3920704	Van Zeggelenbuurt
3920801	Kruistochtbuurt
3920802	Componistenbuurt
3920803	Karolingenbuurt
3920804	Verzetsliedenbuurt
3920901	Architectenbuurt
3920902	Zuiderpolder-noord
3920903	Buitengebied Zuiderpolder
3920904	Kunstschildersbuurt
3920905	Zuiderpolder-zuid
3920906	Reinaldapark
3921001	Generaalsbuurt
3921002	De Goede Hoop
3921003	Nelson Mandelabuurt
3921004	Frans Halsbuurt
3921005	Patrimoniumbuurt
3921101	Medanbuurt
3921102	Nieuw-Guineabuurt
3921103	Weltevredenbuurt
3921104	Molukkenbuurt
3921105	Soendabuurt
3921201	Bomenbuurt-west
3921202	Bomenbuurt-oost
3921203	Schoterveenpolder
3921204	Kweektuinbuurt
3921205	Kleverpark-noord
3921206	Ripperdabuurt
3921207	Kleverpark-zuid
3921301	Noorderhout
3921302	Schotervlieland
3921303	De Krim
3921304	Sinnevelt
3921305	Planetenbuurt
3921306	Burgemeesterskwartier
3921307	Sterrenbuurt
3921401	Nachtegaalbuurt
3921402	Meeuwenbuurt
3921403	Dietsveld
3921404	Spaarndammerpolder-zuid
3921501	Schrijversbuurt
3921502	Van Schendelbuurt
3921503	Rivierenbuurt
3921601	Van der Aart sportpark
3921602	Hekslootpolder
3921603	Roemer Visscherbuurt
3921604	Muiderkring
3921605	Van Aemstelbuurt
3921701	Oude Spaarndammerpolder
3921702	Oud Spaarndam
3921801	Romolenpolder-west
3921802	Kruidenbuurt
3921803	Schoolenaer
3921804	Landenbuurt
3921805	De Eenhoorn
3921806	Stedenbuurt-west
3921807	Stedenbuurt-oost
3921901	Romolenpolder-oost
3921902	Boerhaavevaart
3921903	Geleerdenbuurt
3921904	Professorenbuurt
3921905	Poelpolder-noord
3921906	Geneesherenbuurt
3922001	Zuid-Schalkwijkerweg
3922002	Hondsbos-Dever
3922003	Waddenbuurt
3922004	Ellertsveld
3922005	De Burgen
3922006	Saeftinge-Nemelaar
3922007	Molenplas
3922101	Winkelcentrum Schalkwijk
3922102	Spijkerboorbuurt
3922103	Nobelprijsbuurt
3922104	Poelpolder-zuid
3922105	Archimedesbuurt
3922106	Erasmusbuurt
3922107	Meerwijkplas
3940101	Hoofddorp West
3940102	Hoofddorp Zuid
3940103	Hoofddorp Graan voor Visch
3940104	Hoofddorp Oost
3940105	Hoofddorp Noord
3940106	Hoofddorp Pax West
3940107	Hoofddorp Pax Oost
3940108	Hoofddorp Bornholm West
3940109	Hoofddorp Bornholm Oost
3940111	Hoofddorp Overbos Noord
3940112	Hoofddorp Overbos Zuid
3940113	Hoofddorp Toolenburg West
3940114	Hoofddorp Toolenburg Oost
3940115	Hoofddorp Vrijschot Noord
3940116	Hoofddorp Floriande West
3940117	Hoofddorp Floriande Oost
3940118	Hoofddorp Toolenburg Zuid
3940119	Hoofddorp De Landman
3940122	Hoofddorp Omgeving
3940123	Hoofddorp De Hoek
3940124	Hoofddorp Graan voor Visch Zuid
3940125	Hoofddorp Beukenhorst Oost
3940126	Hoofddorp De President
3940127	Hoofddorp Buiten
3940230	Nieuw-Vennep Oost
3940231	Nieuw-Vennep Welgelegen
3940232	Nieuw-Vennep Welgelegen Noord
3940233	Nieuw-Vennep West
3940234	Nieuw-Vennep Zuid
3940235	Nieuw-Vennep Linquenda
3940236	Nieuw-Vennep Getsewoud Noord
3940237	Nieuw-Vennep Getsewoud Zuid
3940239	Nieuw-Vennep Wilhelminahoeve
3940240	Nieuw-Vennep Omgeving
3940241	Nieuw-Vennep t Kabel
3940343	Zwanenburg West
3940344	Zwanenburg Zuidwest
3940345	Zwanenburg Zuidoost
3940346	Zwanenburg Oost
3940347	Zwanenburg Noordoost
3940348	Zwanenburg Noordwest
3940349	Zwanenburg Dijk
3940350	Zwanenburg Omgeving
3940429	Lijnden Omgeving
3940465	Lijnden
3940466	Boesingheliede
3940551	Badhoevedorp Omgeving
3940552	Badhoevedorp Noordwest
3940553	Badhoevedorp West
3940554	Badhoevedorp Bouwlust
3940556	Badhoevedorp Zuid
3940557	Badhoevedorp Centrum
3940558	Badhoevedorp Noordoost
3940559	Badhoevedorp Antoniushoeve
3940560	Badhoevedorp Oost
3940561	Badhoevedorp Schuilhoeve
3940562	Badhoevedorp Dijk
3940564	Badhoevedorp Nieuwe Meer
3940674	Schiphol-Rijk
3940675	Oude Meer
3940676	Aalsmeerderbrug
3940677	Rozenburg Noord
3940678	Rozenburg Omgeving
3940779	Rijsenhout Dorp
3940780	Rijsenhout Zuid
3940781	Rijsenhout Dijk
3940782	Rijsenhout Omgeving
3940883	Burgerveen
3940884	Leimuiderbrug
3940885	Weteringbrug
3940986	Abbenes
3940987	Abbenes Omgeving
3940988	Buitenkaag
3940989	Abbenes Dijk
3941090	Lisserbroek
3941091	Lisserbroek Omgeving
3941192	Beinsdorp Omgeving
3941193	Beinsdorp
3941294	Zwaanshoek
3941295	Zwaanshoek Omgeving
3941397	Cruquius
3941398	Cruquius Omgeving
3941399	Cruquius Cruqiushoeve
3941567	Vijfhuizen
3941569	Vijfhuizen Stellinghof
3941570	Vijfhuizen Omgeving
3941571	Vijhuizen Nieuwebrug
3941663	Schiphol
3942038	Spaarndam
3942042	Spaarndam Omgeving
3942096	Spaarnwoude
3942120	Haarlemmerliede
3942121	Penningsveer
3942128	Haarlemmerliede Omgeving
3942272	Halfweg
3942273	Halfweg Omgeving
3960100	Centrum
3960101	Zaalbergkwartier
3960200	Commandeurs
3960201	Eikenhof
3960202	Landgoed Marquette
3960300	Oud Haarlem
3960301	Harteheem
3960302	Oosterwijk
3960303	Zuidbroek
3960400	De Houtwegen
3960401	Industriegebied
3960402	Heemskerkerduin
3960403	Noorddorp
3960404	Westertuinen
3960408	Business park Ijmond
3960409	Duingebied
3960500	Poelenburg
3960501	Oosterzij
3960502	Neksloot
3960503	Steenstrapark
3960600	De Maer
3960601	De Die
3960602	Rendorppark
3960603	Breedweer
3960604	Tolhek
3960605	De Trompet
3960607	Noorderveld
3960700	Onderwijzersbuurt
3960701	Villabuurt
3960702	Beijnesbuurt
3960800	Slotherenbuurt
3960801	Verzetstrijdersbuurt
3960802	Beijerlust
3960900	Hoogdorp
3960901	Waterakkers
3961001	De Citadel
3961002	De Wadden
3961100	Landelijk gebied
3970000	Centrum
3970001	Oude Dorp, Indische buurt en omgeving
3970002	Zandvoortselaan en Berkenrode en omgeving
3970003	Heemsteedse Dreef, Schildersbuurt en omgeving
3970004	Van Merlenbuurt en Valkenburgerplein en omgeving
3970005	Schouwbroekerpolder
3970006	Rivierenbuurt
3970007	Kennemerduin en omgeving
3970008	Provincienbuurt
3970009	Geleerdenbuurt
3970100	De Glip
3970101	Glipper Dreef en Staatsliedenbuurt
3970102	Manpad en Hartekamp
3970200	Dichters- en Vogelbuurt
3980100	Schrijverswijk
3980201	Schilderswijk 1
3980202	Schilderswijk 2
3980400	Planetenwijk
3980601	Bomenbuurt
3980602	Recreatiebuurt
3980603	Waarderhout
3980701	Centrumwaard
3980702	Heemradenbuurt
3980800	Edelstenenwijk
3980901	Stadshart
3980902	Stationsplein
3981000	Molenwijk
3981100	Rivierenwijk
3981201	Zandhorst 1
3981202	Zandhorst 2
3981203	Zandhorst 3
3981204	De Frans
3981205	Beveland
3981206	De Vaandel
3981207	Overtoom
3981301	Butterhuizen 1
3981302	Butterhuizen 2
3981400	Oostertocht
3981501	Zuidwijk 1
3981502	Zuidwijk 2
3981601	Huygenhoek 1
3981602	Huygenhoek 2
3981603	Huygenhoek 3
3981701	Stad van de Zon
3981702	Park van Luna
3981801	De Draai Noord
3981802	De Draai Midden
3981803	De Draai Zuid
3981900	Broekhorn
3982000	De Noord
3983000	Buitengebied Noord
3984000	t Kruis
3985000	Buitengebied Zuid
3990101	Blockhovepark
3990201	Noorderneg
3990202	Oud West
3990301	Tuindorp
3990302	Gemeentebos
3990303	Plan Oost
3990304	Nijenburg
3990401	Zuiderneg
3990402	Zuid West
3990501	Akkerbuurt
3990502	Oud Zuid
3990503	Vennewater
3990504	Zuiderloo
3990601	Willibrord
3990602	Oude Werf
3990603	Zuid Oost
3990604	Oosterzij
3990701	Het Die
3990801	De Volkstuinen
3990802	Kapelbuurt
4000100	Marinehaven
4000101	Oostsloot
4000102	Centrum
4000103	Willemsoord
4000104	Sluisdijk
4000105	Visbuurt
4000106	Grachtengordel
4000107	Havenbuurt
4000108	Vogelbuurt
4000109	Mijnendienst
4000200	Oud Den Helder
4000201	Van Galenbuurt
4000202	Indische buurt-Noord
4000203	Indische buurt-Zuid
4000204	Geleerdenbuurt
4000205	Tuindorp-West
4000206	Tuindorp-Oost
4000207	Fort Erfprins
4000208	Fort Dirksz Admiraal
4000300	Huisduinen
4000301	Liniebuurt
4000302	Jeruzalem
4000303	Duinbuurt
4000304	Donkere Duinen
4000400	Nieuwlandbuurt
4000401	Golfstroombuurt
4000402	Grote Rivierenbuurt
4000403	Kleine Rivierenbuurt
4000404	Deltabuurt
4000405	Falga
4000406	Zuiderzeebuurt
4000407	Schepenbuurt
4000408	Nieuw Den Helder Zuid-Oost
4000409	Dirksz Admiraal
4000500	Westoever
4000501	Marina
4000502	Schouten en Schepenenbuurt
4000503	Walvisvaarderbuurt
4000504	Zeeloodsenbuurt
4000505	Boerderijbuurt
4000506	Schooten-Centrum
4000507	Landmetersbuurt
4000508	Waterkeringsbuurt
4000509	Guldemond
4000600	Julianadorp-Oost
4000601	Oostoever
4000602	Friesebuurt
4000603	Kooypunt
4000604	Koegras-Noord
4000605	Blauwe Keet
4000606	Koegras-Zuid
4000607	De Kooy
4000700	Mariëndal
4000701	De Zandloper
4000702	Ooghduyne
4000800	Julianadorp-West
4000801	Middelzand
4000802	Vogelzand
4000803	Doorzwin
4000804	Kruiszwin
4000805	Wierbalg
4000806	Malzwin
4000807	Boterzwin
4000808	Zwanenbalg
4000809	Noorderhaven
4020101	Centrum
4020102	Havenstraatbuurt
4020103	Sint Vitusbuurt
4020104	Langgewenstbuurt
4020201	Boomberg
4020202	Raadhuiskwartier
4020203	Trompenberg-Zuid
4020204	Villaparken
4020205	Trompenberg-Noord
4020206	Media Park
4020301	Havenkwartier
4020302	Het Rode Dorp
4020303	Zeverijn
4020304	Kerkelanden
4020401	Bloemenkwartier Noord
4020402	Bloemenkwartier Zuid
4020403	Schrijverskwartier
4020404	Staatsliedenkwartier
4020405	Zeeheldenkwartier
4020501	Schilderskwartier
4020502	t Hoogt van t Kruis
4020503	Arenaparkkwartier
4020504	West-Indiëkwartier
4020505	Van Riebeeckkwartier
4020506	Egelshoek
4020601	Geuzenbuurt
4020602	Electrobuurt
4020603	Kleine Driftbuurt
4020604	Liebergen
4020605	Astronomische Buurt
4020606	Annas Hoeve
4020701	Johannes Geradtswegbuurt
4020702	Erfgooiersbuurt
4020703	Noord
4020704	AZC Crailo
4020801	Hilversumse Meent
4020901	Landelijk Gebied 91
4020902	Landelijk Gebied 92
4020903	Landelijk Gebied 93
4020904	Landelijk Gebied 94
4020905	Landelijk Gebied 95
4020906	Landelijk Gebied 96
4020907	Landelijk Gebied 97
4051000	Binnenstad - Buurt 10 00
4051001	Binnenstad - Buurt 10 01
4051002	Binnenstad - Buurt 10 02
4051003	Binnenstad - Buurt 10 03
4051100	Venelaankwartier - Buurt 11 00
4051101	Venelaankwartier - Buurt 11 01
4051102	Venelaankwartier - Buurt 11 02
4051103	Venelaankwartier - Buurt 11 03
4051200	Hoorn Noord - Buurt 12 00
4051201	Hoorn Noord - Buurt 12 01
4051202	Hoorn Noord - Buurt 12 02
4051203	Hoorn Noord - Buurt 12 03
4051204	Hoorn Noord - Buurt 12 04
4051300	Grote Waal - Buurt 13 00
4051301	Grote Waal - Buurt 13 01
4051302	Grote Waal - Buurt 13 02
4051303	Grote Waal - Buurt 13 03
4051304	Grote Waal - Buurt 13 04
4051305	Grote Waal - Buurt 13 05
4051306	Grote Waal - Buurt 13 06
4051307	Grote Waal - Buurt 13 07
4051308	Grote Waal - Buurt 13 08
4052000	Risdam-Zuid - Buurt 20 00
4052001	Risdam-Zuid - Buurt 20 01
4052002	Risdam-Zuid - Buurt 20 02
4052003	Risdam-Zuid - Buurt 20 03
4052004	Risdam-Zuid - Buurt 20 04
4052005	Risdam-Zuid - Buurt 20 05
4052006	Risdam-Zuid - Buurt 20 06
4052007	Risdam-Zuid - Buurt 20 07
4052008	Risdam-Zuid - Buurt 20 08
4052100	Risdam-Noord - Buurt 21 00
4052101	Risdam-Noord - Buurt 21 01
4052102	Risdam-Noord - Buurt 21 02
4052103	Risdam-Noord - Buurt 21 03
4052104	Risdam-Noord - Buurt 21 04
4052105	Risdam-Noord - Buurt 21 05
4052200	Nieuwe Steen - Buurt 22 00
4052201	Nieuwe Steen - Buurt 22 01
4053000	Zwaag - Buurt 30 00
4053001	Zwaag - Buurt 30 01
4053002	Zwaag - Buurt 30 02
4053004	Zwaag - Buurt 30 04
4053005	Zwaag - Buurt 30 05
4053006	Zwaag - Buurt 30 06
4053100	Blokker - Buurt 31 00
4053101	Blokker - Buurt 31 01
4053102	Blokker - Buurt 31 02
4053103	Blokker - Buurt 31 03
4053104	Blokker - Buurt 31 04
4053200	Kersenboogerd-Noord - Buurt 32 00
4053201	Kersenboogerd-Noord - Buurt 32 01
4053202	Kersenboogerd-Noord - Buurt 32 02
4053203	Kersenboogerd-Noord - Buurt 32 03
4053300	Kersenboogerd-Zuid - Buurt 33 00
4053301	Kersenboogerd-Zuid - Buurt 33 01
4053302	Kersenboogerd-Zuid - Buurt 33 02
4053303	Kersenboogerd-Zuid - Buurt 33 03
4053304	Kersenboogerd-Zuid - Buurt 33 04
4053305	Kersenboogerd-Zuid - Buurt 33 05
4053306	Kersenboogerd-Zuid - Buurt 33 06
4053307	Kersenboogerd-Zuid - Buurt 33 07
4053308	Kersenboogerd-Zuid - Buurt 33 08
4053309	Kersenboogerd-Zuid - Buurt 33 09
4053400	Hoorn 80 - Buurt 34 00
4053401	Hoorn 80 - Buurt 34 01
4053402	Hoorn 80 - Buurt 34 02
4053501	Bangert en Oosterpolder - Buurt 35 01
4053502	Bangert en Oosterpolder - Buurt 35 02
4053503	Bangert en Oosterpolder - Buurt 35 03
4053504	Bangert en Oosterpolder - Buurt 35 04
4053505	Bangert en Oosterpolder - Buurt 35 05
4053506	Bangert en Oosterpolder - Buurt 35 06
4053600	Zevenhuis - Buurt 36 00
4060001	De Noord
4060002	De Zuid
4060103	Westereng
4060204	Flevo
4060205	Bikbergen
4060206	Crailo
4060307	Thames
4060308	IJzeren veld
4060327	Parrewijn
4060328	Tafelberger Heide
4060329	Rijsbergen
4060330	Huizerhoogt
4060409	Sijsjesberg
4060410	Zuidereng
4060511	Gooierhoofd
4060512	Wolfskamer
4060513	Industriewijk t Plaveen
4060614	Bovenweg
4060615	Zenderwijk
4060716	Stad en Lande
4060817	Huizermaat West
4060818	Huizermaat Zuid
4060919	Huizermaat Noord
4061020	Bijvanck Noord
4061021	Bijvanck West
4061123	Bovenmaat Noord
4061124	Bovenmaat West
4061125	Bovenmaat-Oost
4061226	Filosofenbuurt
4061231	De Tuit
4150000	Landsmeer
4150001	Plan Centrum-Noord
4150002	Plan Centrum-Zuid
4150003	Plan Centrum-West
4150009	Verspreide huizen ten oosten van Landsmeer
4150101	Purmerland
4150102	Den Ilp
4160000	Oudkarspel
4160001	Noord-Scharwoude
4160002	Zuid-Scharwoude
4160003	Broek op Langedijk
4160004	Laanweg en Waarddijk
4160005	Sint Pancras
4160006	Koedijk
4170320	Laren-Centrum
4170321	Laren-Natuurgebied
4170322	Omloop
4170323	Oostereng
4170324	Postiljon
4170325	Rijksweg-Noord
4170326	Rijksweg-Zuid
4170327	Steenbergen
4170328	Zevenend
4170329	Zwarte Berg
4200101	Medemblik Oude Stad
4200102	Medemblik Plan West
4200103	Medemblik Parkwijk
4200104	Medemblik Koggenwijk
4200105	Medemblik Randwijk en Gildenwijk
4200106	Medemblik Schepenwijk
4200107	Medemblik Bedrijventerrein
4200108	Medemblik Vooroever
4200109	Medemblik Zuiderzee
4200110	Medemblik Buitengebied
4200201	Opperdoes Centrum
4200202	Opperdoes Buitengebied
4200301	Twisk Centrum
4200302	Twisk Buitengebied
4200401	Lambertschaag
4200501	Abbekerk Centrum
4200502	Abbekerk Buitengebied
4200601	Sijbekarspel Centrum
4200602	Sijbekarspel Buitengebied
4200701	Benningbroek Centrum
4200702	Benningbroek Buitengebied
4200801	Wognum Centrum
4200802	Wognum Westergouw
4200803	Wognum Kreeklanden
4200804	Wognum Bloesemgaerde
4200805	Wognum Leekerweide
4200806	Wognum Oosteinde
4200807	Wognum Bedrijventerrein
4200808	Wognum Wadway
4200809	Wognum Buitengebied
4200901	Zwaagdijk-West Centrum
4200902	Zwaagdijk-West Buitengebied
4201001	Nibbixwoud Centrum
4201002	Nibbixwoud Bedrijventerrein
4201003	Nibbixwoud Buitengebied
4201101	Midwoud Centrum
4201102	Midwoud Buitengebied
4201201	Oostwoud Centrum
4201202	Oostwoud Buitengebied
4201301	Hauwert
4201401	Zwaagdijk-Oost Centrum
4201402	Zwaagdijk-Oost Bedrijventerrein
4201403	Zwaagdijk-Oost Buitengebied
4201501	Wervershoof Centrum
4201502	Wervershoof Oost
4201503	Wervershoof West
4201504	Wervershoof Vooroever
4201505	Wervershoof Buitengebied
4201506	Wervershoof Onderdijk
4201507	Wervershoof Onderdijk Aan de Vliet
4201508	Wervershoof Onderdijk Buitengebied
4201601	Andijk Centrum
4201602	Andijk Oost
4201603	Andijk Midden
4201604	Andijk Zuid
4201605	Andijk Bangert
4201606	Andijk Grootslag en IJsselhof
4201607	Andijk Vooroever
4201608	Andijk Bedrijventerrein
4201609	Andijk Waterzuivering
4201610	Andijk Buitengebied
4310000	Kerkbuurt
4310001	Zuideinde
4310002	Kerkstraat
4310003	De Haal en De Heul en Noordeinde
4320000	Opmeer-Noord
4320001	Opmeer-Zuid, Spanbroek gedeeltelijk
4320002	Zandwerven en Lutkedijk
4320003	Wadway
4320007	Verspreide huizen in De Kaag
4320009	Overige verspreide huizen
4320100	Hoogwoud
4320101	Aartswoud
4320102	Langereis gedeeltelijk
4320103	Gouwe
4320200	De Weere
4370000	Ouderkerk aan de Amstel
4370001	Duivendrecht
4370002	Industriegebied Amstel
4370006	Verspreide huizen in de Rondehoeppolder
4370007	Verspreide huizen in de Duivendrechtsche polder
4370008	Verspreide huizen in de Bullewijker polder
4370009	Verspreide huizen langs De Bullewijk en De Hole
4390101	Binnenstad
4390102	Stationsbuurt
4390103	Zuiderpolder
4390201	Overwhere-Zuid
4390202	De Koog
4390203	Wagenweg
4390204	Overwhere-Noord
4390205	Molenkoog
4390301	Wheermolen-West
4390302	Wheermolen-Oost
4390303	Dwarsgouw
4390401	Gors-Zuid
4390402	Gors-Noord
4390501	Overlanderstraat en omgeving
4390502	Werktuigenbuurt
4390503	Maten- en Zuivelbuurt
4390504	De Graeffweg en omgeving
4390505	Baanstee en omgeving
4390506	Golfterrein en verspreide bebouwing
4390601	Purmer-ZuidenNoord
4390602	Purmer-ZuidenZuid
4390603	Purmerbos en verspreide bebouwing
4390701	Hazepolder
4390702	Azië
4390703	Amerika
4390704	Afrika
4390705	Europa
4410101	Schagerbrug woonkern
4410190	t Buurtje en Buitengebied
4410191	De Stolpen en Buitengebied
4410192	Buitengebied Schagerbrug-Noord
4410301	Burgerbrug woonkern
4410390	Buitengebied Burgerbrug
4410391	Burgervlotbrug en Buitengebied
4410401	Sint Maarten woonkern
4410402	Stroet
4410490	Buitengebied Sint Maarten
4410491	Valkkoog en Buitengebied
4410492	Groenveld en Buitengebied
4410493	t Rijpje en Buitengebied
4410494	Eenigenburg en Buitengebied
4410501	Warmenhuizen-Centrum
4410502	Schelphoek
4410503	Debbemeer-Noord
4410504	Debbemeer-Zuid
4410505	Warmenhuizen-Zuid
4410506	Schoorldam
4410580	Huisweid en omgeving
4410581	Oudevaart-Zuid
4410590	Buitengebied Warmenhuizen
4410591	Krabbendam en Buitengebied
4410601	Kalverdijk
4410602	Tuitjenhorn-Centrum en Kerkbuurt
4410603	Tuitjenhorn-West en -Zuid
4410690	Buitengebied Tuitjenhorn
4410701	Waarland woonkern
4410790	Buitengebied Waarland
4410801	Dirkshorn woonkern
4410880	De Banne en omgeving
4410890	Buitengebied Dirkshorn
4410901	Oudesluis woonkern
4410990	Buitengebied Oudesluis
4411001	Schagen-Centrum
4411002	Schagen-Centrum-Zuid
4411003	Nesdijk
4411004	Groeneweg-Zuid
4411005	Groeneweg-Noord
4411006	Muggenburg
4411007	Muggenburg-Zuid
4411101	Petten-Centrum en Korfwater
4411102	Petten-West
4411103	Nolmerban
4411170	Pettemerduinen
4411180	Onderzoekslocatie Petten
4411190	Buitengebied Petten
4411201	Sint Maartensbrug woonkern
4411290	Buitengebied Sint Maartensbrug
4411301	t Zand-West- en -Zuid
4411302	t Zand-Noordoost
4411380	Kolksluis
4411390	Buitengebied t Zand-Oost
4411391	Buitengebied t Zand-West
4411401	Sint Maartensvlotbrug woonkern
4411470	Sint Maartensvlotbrug-West
4411471	Sint Maartenszee
4411490	Buitengebied Sint Maartensvlotbrug
4411501	Callantsoog woonkern
4411502	Uyterland
4411570	Zwanenwater
4411590	Groote Keeten, Abbestede en Buitengebied
4411591	Buitengebied Callantsoog-Oost
4411592	Buitengebied Callantsoog-Noord
4411601	Waldervaart-Zuid
4411602	Waldervaart-Noordwest
4411603	Waldervaart-Noordoost
4411680	Lagedijk
4411690	Burghorn en Buitengebied
4411691	Tolke, Tjallewal en Buitengebied
4411701	Hoep-Zuid
4411702	Hoep-Noord
4411703	Nes-Noord
4411780	Witte Paal
4411790	Keinse, t Wad en Buitengebied
4411791	Nes en Buitengebied
4480000	Den Burg
4480001	De Koog
4480002	Oosterend
4480003	De Waal
4480004	Oudeschild
4480005	Den Hoorn
4480007	Verspreide huizen Op Het Oude Land
4480008	Verspreide huizen De Kuil, Hoornder Nieuwland
4480009	Verspreide huizen De Koog en het Duingebied
4480100	De Cocksdorp
4480107	Verspreide huizen in de polders Eierland en Eendracht
4480108	Verspreide huizen in de polder Het Noorden
4480109	Verspreide huizen in de polders Burger Nieuwland
4500001	De Koog
4500002	De Kleis
4500003	Waldijk
4500004	Oude Dorp
4500005	Bedrijventerrein
4500006	Buitengebied
4511500	Dorpscentrumcentrum
4512500	Thamerdal
4513500	Zijdelwaard
4514500	Legmeer
4515000	Langs de Vuurlinie
4515500	Veilinggebied
4516500	Meerwijk
4517500	Bedrijventerrein
4518500	Meerwijk
4519000	Glastuinbouwgebied
4519500	Veenweidegebied
4530000	Velsen-Dorp
4530001	Velserbeek
4530002	Velsen-Oost
4530003	Kapelbuurt
4530004	Kriemhildebuurt
4530005	Driehuis-Dorp
4530100	Lagersbuurt
4530101	Heidebuurt
4530102	Zeeheldenbuurt
4530103	Verzetsheldenbuurt
4530104	Natuurkundigenbuurt
4530105	Kikvorsbuurt
4530106	Stadhuisbuurt
4530200	Tussenbeeksbuurt
4530201	Vogelbuurt
4530202	Bomenbuurt
4530203	Velseroord
4530204	Paterskerkbuurt
4530205	Schildersbuurt
4530206	Rivierenbuurt
4530300	Moerbergbuurt
4530301	Vissersbuurt
4530302	Oud-IJmuiden
4530303	Zuidzijdebuurt
4530400	Herculesbuurt
4530401	Canopusbuurt
4530402	Saturnusbuurt
4530403	Schiplaanbuurt
4530404	Bellatrixbuurt
4530405	Kruisbergbuurt
4530406	Keetbergbuurt
4530500	Gildenbuurt
4530501	Westerwijkbuurt
4530502	Van Gelderbuurt
4530503	Duinvlietbuurt
4530504	Watervlietbuurt
4530505	Wijkermeerbuurt
4530506	Staalbuurt
4530507	Reyndersbuurt
4530600	Kerkpadbuurt
4530601	Biezenbuurt
4530602	West-Indische buurt
4530603	Santpoort-Dorp
4530604	Bloemenbuurt
4530605	Kerkerinkbuurt
4530606	Spanjaardsbergbuurt
4530607	Santhaesbuurt
4530608	Duinenbuurt
4530700	Neethofbuurt
4530701	Rijkersparkbuurt
4530702	Blekersbuurt
4530703	Eltabuurt
4530800	Hofgeest
4530801	Maadbuurt
4530802	Weidbuurt
4530803	Pijlkruidbuurt
4530804	Florarondebuurt
4530805	Bastionbuurt
4530806	Springerbuurt
4530807	Tjotterbuurt
4530808	Westbroekbuurt
4530900	Noord-Spaarndammerpolder
4530901	Zuid-Spaarndammerpolder
4570001	Centrum
4570002	Herensingelkwartier
4570101	Bedrijventerrein Van Houten
4570102	Zuid I
4570103	Zuid II
4570104	De Klomp
4570201	Dichtersbuurt
4570202	Schildersbuurt
4570301	Hogewey Noord
4570302	Hogewey Midden
4570303	Hogewey Zuid
4570304	Bedrijventerrein Noord
4570401	Aetsveld Noord
4570402	Aetsveld Zuid
4570701	Aetsveldsepolder
4570801	Oostelijke Vechtoever
4570901	Leeuwenveld
4570902	Bedrijventerrein Nijverheidslaan
4570903	Weespersluis
4730101	Boulevard Noord
4730102	Stations omgeving
4730103	Oud Noord
4730104	Nieuw Noord - bedrijven
4730105	Nieuw Noord - wonen
4730106	Sport Circuit
4730107	Recreatiepark
4730201	Boulevard Midden
4730202	Boulevard Zuid
4730203	Brederode- Gerkestraat en omstreken
4730204	Zandvoortselaan
4730205	Kostverloren en omstreken
4730206	Centrum
4730301	Bentveld Noord
4730302	Bentveld Zuid
4730401	Noord strand
4730402	Zuid strand
4730403	Zuid duinen
4730404	Noord duinen
4791110	Achtersluispolder
4791120	Bomenbuurt
4791130	Burgemeestersbuurt
4791210	Poelenburg
4791310	Peldersveld
4791320	Hoornseveld
4791410	Rosmolenbuurt
4791510	Kogerveld
4791520	Boerejonkerbuurt
4791610	Kalf
4791620	Kalverpolder
4792110	Havenbuurt
4792120	Zuiderhout
4792130	Het Eiland
4792140	Russische buurt
4792210	Oud West
4792220	Spoorbuurt
4792230	Schilders- en Waddenbuurt
4792310	Westerspoor
4792320	Westerwatering
4793110	Oud Koog
4793210	Westerkoog
4794110	Oud Zaandijk
4794210	Rooswijk
4794220	Rooswijk Noord
4795110	Wormerveer Zuid
4795120	Guisveld
4795130	Wormerveer Noord
4795140	Karnemelksepolder
4795150	Westknollendam
4795160	Industriebuurt
4796110	Zuiderhoofdbuurt
4796120	Noorderhoofdbuurt
4796130	Snuiverbuurt
4796140	Rosariumbuurt
4796210	Zuiderham
4796220	Noorderham
4796230	Krommeniedijk
4796240	Willis
4797110	De Zuid
4797120	Centrum
4797130	Westerpolder
4797210	Waterrijk
4797220	Langeheit
4797230	Parkrijk
4798110	Westzanerpolder
4798120	Westzaan Zuid
4798130	JJ Allanbuurt
4798140	Westzaan Noord
4798150	Middel
4820101	Cortgene
4820102	Redersbuurt
4820103	kerkbuurt
4820104	Polderbuurt
4820105	De Werven
4820201	Dijk
4820202	Vogelbuurt
4820203	Waterland
4820204	Groene Long
4820205	Rivierenbuurt
4820206	Nieuw Kinderdijk
4820301	Zeelt
4820302	Middelland
4820303	Blokweer Noord
4820304	Blokweer Zuid
4820305	Drentsebuurt
4820306	Florabuurt
4820307	Staatsliedenbuurt
4820401	Schildersbuurt
4820402	Schrijversbuurt
4820403	Klein Alblas
4820404	Oranjebuurt
4820501	Vinkenwaard
4820502	Hoogendijk
4820503	Nieuwland
4820601	Polder Blokweer
4820602	Polder Kortland
4820603	Polder Souburgh
4820604	Polder Vinkenwaard
4840101	Gnephoek
4840102	Woubrugseweg
4840103	Heuvelweg
4840104	Weteringpark
4840105	Ambachtenbuurt-West
4840106	Ambachtenbuurt-Oost
4840107	Bedrijventerrein Heimanswetering
4840108	Stromenbuurt
4840109	Nuovaweg
4840110	Groenoord
4840111	De Heul
4840201	Ridderbuurt
4840202	Herenweg
4840203	Horstenbuurt-Noord
4840204	Horstenbuurt-Zuid
4840205	Burgtenbuurt
4840206	Preludeweg
4840207	Componistenbuurt-Noord
4840208	Componistenbuurt-Zuid
4840209	Rijnoord
4840210	Planetenbuurt-Noord
4840211	Planetenbuurt-Zuid
4840301	Steinenbuurt
4840302	Paddestoelenbuurt
4840303	Ericapark
4840304	Weidebloemenbuurt-Noord
4840305	Weidebloemenbuurt-Zuid
4840306	Edelstenenbuurt
4840307	Kromme Aar
4840401	Bedrijventerrein Rijnhaven-West
4840402	Bedrijventerrein Rijnhaven-Oost
4840403	Zeeheldenbuurt
4840404	Bomenbuurt
4840405	Bospark
4840501	Emmalaan
4840502	Burgemeester Visserpark
4840503	Paradijslaan
4840504	Hazeveld
4840505	Gouwsluis
4840506	Bedrijventerrein De Schans I
4840601	Nieuwe Sloot
4840602	Lijsterlaan
4840603	Van Boetzelaerstraat
4840604	Beerendrecht
4840605	De Bijlen
4840701	Steekterbuurt
4840702	Hoogendoornlaan
4840801	Bedrijventerrein Molenwetering
4840802	Europaplein
4840803	Evenaar-West
4840804	De Oude Wereld-West
4840805	De Oude Wereld-Oost
4840806	Evenaar-Oost
4840807	Zefierzijde
4840808	Vroonhoevebuurt
4840809	Archeon
4840810	Polderpeil-West
4840811	Polderpeil-Oost
4840812	Bedrijventerrein De Schans II
4840813	Wagenburg
4840901	Rietveldsepad
4843101	Noordpolder
4843102	Benthuizen Dorp-West
4843103	Benthuizen Dorp-Oost
4843104	Bentwoud
4844501	Noordeinde
4844502	Hoge Dijk
4844503	Aarlanderveen Dorp
4844504	Zuideinde
4847001	Nesse
4847002	Rijneveld-Noord
4847003	Rijneveld-Zuid
4847004	Laag Boskoop
4847005	Draaistok
4847006	Biezen-West
4847007	Biezen-Oost
4847008	Zonnedauw
4847009	Snijdelwijk
4847010	Vogelbuurt
4847011	Voorofschebuurt
4847012	Appelbuurt
4847013	Botanicusbuurt
4847014	Zuidwijk
4847015	Spoelwijk
4847101	Zwammerdam Dorp
4847102	Hooge Burch
4847103	De Burcht
4849101	Buitengebied Hazerswoude-Dorp
4849102	Rietveldse polder
4849103	Hazerswoude-Dorp-West
4849104	Hazerswoude-Dorp-Oost
4849105	Voorweg
4849401	Rijndijk
4849402	Rhynenburch
4849403	Zonneveld
4849404	Buitengebied Hazerswoude-Rijndijk
4849601	Buitengebied Koudekerk aan den Rijn
4849602	Koudekerk aan den Rijn-Noord
4849603	Koudekerk aan den Rijn-Zuid
4849604	Bedrijventerrein Hoogewaard
4890101	Centrum
4890102	Centrum Oost
4890103	Centrum West
4890204	Noord 1
4890205	Noord 2
4890206	Noord 3
4890207	Noord 4
4890308	Binnenland
4890409	Oranjewijk 1
4890410	Oranjewijk 2
4890511	Buitenoord 1
4890512	Buitenoord 2
4890513	Buitenoord 3
4890614	Ter Leede
4890715	Paddewei
4890816	Molenvliet 1
4890817	Molenvliet 2
4890918	Nieuweland 1
4890919	Nieuweland 2
4890920	Nieuweland 3
4890921	Nieuweland 4
4890922	Nieuweland 5
4891023	Dorpzicht
4891124	Bijdorp
4891225	Smitshoek
4891226	Smitshoek 1
4891227	Smitshoek 2
4891328	Voordijk
4891429	Meerwede Noordoost
4891430	Meerwede Noordwest
4891431	Meerwede Zuidoost
4891432	Meerwede Zuidwest
4891533	Waterkant
4891634	Havenkwartier
4891735	Gaatkensoog
4891836	Riederhoek
4891937	Vrijheidsakker
4892039	Vrijenburg
4893050	Sportpark Smitshoek
4893051	Sint Clarabos
4893052	Vrijenburgbos
4893053	Kooiwalbos
4893054	Dordtsestraatweg
4893160	Koedood
4893161	Achterzeedijk West
4893162	Achterzeedijk Oost
4893163	Noldijk
4893164	Kilweg
4895070	BT Reijerswaard
4895071	BT Cornelisland
4895072	BT Dierenstein
4895073	BT Veiling
4895074	BT Handelscentrum
4895075	BT Gebroken Meeldijk
4895076	BT Ziedewij
4895077	BT Bijdorp
4895078	BT Kilweg Noord
4895080	BT Achterzeedijk
4895081	BT Vaanpark 1
4895082	BT Vaanpark 2
4895083	BT Vaanpark 3
4895084	BT Vaanpark 4
4980000	Centrum Hoogkarspel
4980001	Ten westen van Tolweg
4980009	Wijzend
4980100	Westwoud
4980101	Oudijk
4980109	Binnenwijzend
4980200	Oosterblokker
4980300	Centrum Venhuizen
4980301	De Buurt
4980302	Hem
4980306	De Hout en Blokdijk
4980307	Drieban gedeeltelijk, Hem
4980308	Drieban gedeeltelijk, Venhuizen
4980309	Zuiderdijk
4980400	Wijdenes
4980401	Oosterleek
4980500	Schellinkhout
5010000	Brielle
5010001	Spuilaan en omgeving
5010002	De Kapel en omgeving
5010003	Rugge
5010004	Noord Meeuwenoord
5010005	Kleine Goote
5010006	Nieuwland
5010009	Verspreide huizen
5010100	Vierpolders
5010109	Verspreide huizen
5010200	Zwartewaal
5010201	Tuindorp-Hofstede
5010202	Zalmlaan
5010209	Verspreide huizen
5010300	Recreatiestrook Brielse Maas
5020110	IJsseldijk
5020111	Redebuurt
5020112	RendierenNavigatiebuurt
5020113	Zeeheldenbuurt-west
5020114	Zeeheldenbuurt-oost
5020115	Chopinbuurt
5020116	Bizetbuurt
5020117	Paganinibuurt
5020118	Rossinibuurt
5020119	Puccinibuurt
5020223	Reviusbuurt
5020224	Dichtersbuurt
5020225	Merelbuurt
5020226	Schildersbuurt
5020227	Valeriusbuurt
5020228	Rozenburcht
5020229	Oude Plaats
5020332	Hovenbuurt
5020333	Koperwiek
5020334	Meeuwenbuurt
5020335	Alkenoord
5020336	Vuykterrein
5020337	Oude Kern
5020338	Kievitlaan
5020441	De Baronie
5020442	Diepenbuurt
5020443	Dalenbuurt
5020444	Couwenhoek
5020445	Eilandenbuurt
5020446	Waardenbuurt
5020447	AWZI Oostgaarde
5020448	Baaienbuurt
5020449	Paradijssel
5020551	BeemsterenPurmerhoek
5020552	Schermerhoek
5020553	Wormerhoek
5020554	Scandinavischebuurt
5020555	Amerikaansebuurt
5020556	Bergenbuurt
5020557	Molukkenbuurt
5020621	s-GravenwegenAlexanderlaan
5020622	s-Gravenpark
5020631	Stationsbuurt
5020658	Klaverweide
5020659	Klinkert
5020661	Molenbuurt
5020662	Florabuurt
5020663	Bloemenbuurt-west
5020664	Bloemenbuurt-oost
5020665	AkkerenHaagwinde
5020666	Sportpark Schenkel
5020770	Dansenbuurt-noord
5020771	Burgenbuurt
5020772	Dansenbuurt-zuid
5020773	Ervenbuurt
5020774	Stadsdeelpark
5020775	Instrumentenbuurt
5020776	Kunstenaarsbuurt
5020777	Operabuurt
5020778	Gebouwenbuurt
5020779	Schildersvormenbuurt
5020880	Hoofdweg sector EenF
5020881	Hoofdweg sector A
5020882	Hoofdweg sector B
5020883	Hoofdweg sector C
5020884	Hoofdweg sector D
5020885	Hoofdweg sector G
5020886	Sporenbuurt-west
5020887	Sporenbuurt-oost
5020888	Tuinenbuurt
5020889	Kunstenaarsbuurt-noord
5020991	Fascinatio-west
5020992	Fascinatio-oost
5020993	Capelsebrug
5020994	Rijckevorselpark
5020995	Rivium 1e straat
5020996	AWZI Rivium
5020997	Rivium 2e straat
5020998	Rivium Promenade
5031100	Bedrijventerrein Wateringseweg
5031101	Centrum-Noord
5031102	Centrum-West
5031103	Centrum-Oost
5031104	Centrum
5031105	Stationsbuurt
5031106	Centrum-Zuidwest
5031107	In de Veste
5031108	Centrum-Zuidoost
5031109	Zuidpoort
5031200	Bedrijventerrein Haagweg
5031201	Indische Buurt-Noord
5031202	Indische Buurt-Zuid
5031203	Sint Joris
5031204	Koepoort
5031205	Bomenwijk
5031206	Biesland
5031207	Heilige Land
5031208	Bedrijventerrein Delftse Poort-West
5031300	Bedrijventerrein Altena
5031301	Agnetaparkbuurt
5031302	Ministersbuurt-West
5031303	Ministersbuurt-Oost
5031304	Westeindebuurt
5031305	Olofsbuurt
5031306	Krakeelpolder
5031307	Westerkwartier
5031400	Kuyperwijk-Noord
5031401	Kuyperwijk-Zuid
5031402	Ecodus
5031403	Marlot
5031404	Westlandhof
5031405	Hoornse Hof
5031406	Den Hoorn
5031407	Molenbuurt
5031600	De Bras
5031601	Bedrijventerrein Ypenburgsepoort
5031602	De Grote Plas
5031603	Bedrijventerrein Delftse Poort-Oost
5031604	Hoflaan
5032200	Bedrijventerrein Tanthof-West
5032201	Afrikabuurt-West
5032202	Afrikabuurt-Oost
5032203	Latijns Amerikabuurt
5032204	Aziëbuurt
5032205	Tanthofkadebuurt
5032300	Bedrijventerrein Tanthof-Oost
5032301	Boerderijbuurt
5032302	Dierenbuurt
5032303	Vogelbuurt-West
5032304	Vogelbuurt-Oost
5032305	Bosrand
5032400	Poptahof-Noord
5032401	Poptahof-Zuid
5032402	Bedrijventerrein Voorhof
5032403	Mythologiebuurt
5032404	Aart van der Leeuwbuurt
5032405	Roland Holstbuurt
5032406	Voorhof-Hoogbouw
5032407	Multatulibuurt
5032408	Bedrijventerrein Vulcanusweg
5032500	Reinier de Graafbuurt
5032501	Buitenhof-Noord
5032502	Juniusbuurt
5032503	Gillisbuurt
5032504	Fledderusbuurt
5032505	Het Rode Dorp
5032506	Pijperring
5032507	Verzetstrijdersbuurt
5032508	Vrijheidsbuurt
5032509	Buitenhof-Zuid
5032510	Kerkpolder
5032600	Abtswoude
5032700	Delftzicht
5032702	Bedrijventerrein Schieweg-Noord
5032703	Bedrijventerrein Schieweg-Zuid
5032704	Schieweg-Polder
5032800	Zeeheldenbuurt
5032801	TU-Noord
5032802	Wippolder-Noord
5032803	Wippolder-Zuid
5032804	Bedrijventerrein Rotterdamseweg-Noord
5032805	TU-Campus
5032806	Professorenbuurt
5032807	Bedrijventerrein Delftech
5032808	Pauwmolen
5032809	Koningsveldbuurt
5032900	Bedrijventerrein Rotterdamseweg-Zuid
5032901	Bedrijventerrein Technopolis
5032902	Ackersdijk
5050100	Nieuwe Haven en omgeving
5050101	Groenmarkt en omgeving
5050102	Grote Markt en omgeving
5050103	Wijnstraat en omgeving
5050104	Kalkhaven
5050105	Achterhakkers en omgeving
5050106	Boogjes en omgeving
5050107	Lombard en omgeving
5050108	Centrum
5050109	Augustijnenkamp en omgeving
5050110	Geldelozepad en omgeving
5050111	Rozenhof en omgeving
5050112	Beverwijcksplein en omgeving
5050113	Burgemeester de Raadtsingel en omgeving
5050114	Kon Wilhelminastraat en omgeving
5050200	Bleijenhoek
5050201	Stadswerven
5050202	Lijnbaan
5050203	Matenas Pad en omgeving
5050204	Merwestein-Noord
5050205	Kasperspad en omgeving
5050206	Park Merwestein en omgeving
5050300	Zuidendijk
5050301	Viottakade en omgeving
5050302	Erasmuslaan en omgeving
5050303	Breitnerstraat en omgeving
5050304	Jacob Marisstraat en omgeving
5050305	Krispijnse Driehoek
5050306	Jacob Catsstraat en omgeving
5050307	Rembrandtlaan en omgeving
5050400	Pr Bernhardstraat en omgeving
5050401	Waldeck Pyrmontweg en omgeving
5050402	Anna Paulownastraat en omgeving
5050403	Emmastraat en omgeving
5050404	Bloemenbuurt
5050405	Weizigtpark
5050406	Nieuweweg en omgeving
5050500	Wantijpark en omgeving
5050501	Transvaalstraat en omgeving
5050502	Indische Buurt-Zuid
5050503	Indische Buurt-Noord
5050504	Boeroestraat en omgeving
5050505	Vogelplein-Aalscholverstraat en omgeving
5050506	Hoekenessestraat en omgeving
5050507	Standhasenstraat en omgeving
5050508	Heysterbachstraat en omgeving
5050509	Maria Montessorilaan en omgeving
5050510	Sportterrein Krommedijk
5050600	Plein 1940-1945 en omgeving
5050601	Beekmanstraat en omgeving
5050602	Noorderkwartier
5050603	Amerstraat en omgeving
5050604	Merwedepolder-West
5050605	Merwedepolder-Oost
5050606	Spaarbekken
5050607	1e Merwedehaven en omgeving
5050608	2e Merwedehaven en omgeving
5050700	Admiraalsplein
5050701	Van Kinsbergenstraat en omgeving
5050702	Cornelis Evertsenstraat en omgeving
5050703	Dorus Rijkersstraat en omgeving
5050704	Van Ewijckstraat en omgeving
5050705	Zeehavenlaan en omgeving
5050706	Laan der Verenigde Naties Noord
5050707	Dordtse Hout
5050800	Crabbehof-Zuid
5050801	Crabbehof-Noord
5050802	Zuidhoven
5050900	Sterrenburg 1-West
5050901	Sterrenburg 1-Oost
5050902	Waterman en omgeving
5050903	Driehoek en omgeving
5050904	Blaauwweg en omgeving
5050905	Minnaertweg en omgeving
5050906	Mildenburg en omgeving
5050907	Zuilenburg en omgeving
5050908	Vredenburg en omgeving
5050909	Wittenstein en omgeving
5050910	Smitsweg
5051000	Vissersdijk-West
5051001	Vissersdijk-Beneden
5051002	Vissersdijk-Oost
5051003	Egstraat en omgeving
5051004	Oudendijk en omgeving
5051005	Vissersdijk-Noord
5051006	Dubbeldam-Noord
5051007	Dubbeldam-Zuid
5051008	Bastion locatie
5051009	Locatie Karel Lotsyweg
5051010	Albert Schweitzerplaats
5051011	De Hoven
5051012	Zuidpolder
5051013	Belthure Park
5051100	Amazone en omgeving
5051101	Palissander en omgeving
5051102	Azobe en omgeving
5051103	Iroko en omgeving
5051104	Bedrijventerrein Groene Zoom
5051105	Van Ravesteijn-erf en omgeving
5051106	Van den Broek-erf en omgeving
5051107	Suze Groeneweg-erf en omgeving
5051108	Joke Smit-erf en omgeving
5051109	Pearl Buck-erf en omgeving
5051110	Aletta Jacobs-erf en omgeving
5051111	Johanna Naber-erf en omgeving
5051112	Bildersteeg en omgeving
5051900	Weeskinderendijk en Dokweg
5051901	Handelskade en s-Gravendeelsedijk
5051902	Voltastraat en omgeving - De Put
5051903	Louterbloemen
5051904	Wilhelminahaven
5051905	Julianahaven
5051906	Krabbegors
5051907	Krabbepolder
5051909	Wieldrecht
5051910	Dordtse Kil I
5051911	Amstelwijck-West
5051912	Schotman terrein
5051913	Locatie Refaja
5051914	Amstelwijck
5051915	Tweede Tol
5051916	Dordtse Kil II
5051917	Dordtse Kil III
5051918	Oostkil
5051919	Dordtse Kil IV
5059800	Merwelanden
5059801	3e Merwedehaven
5059804	Dordtse Biesbosch
5059805	Bovenpolder
5120101	Bovenstad
5120102	Benedenstad
5120200	Wijdschild
5120300	Lingewijk
5120403	Haarwijk West
5120404	Haarwijk Oost
5120500	Stalkaarsen
5120600	Gildenwijk
5120700	Schelluinsestraat
5120800	Avelingen Oost
5120900	Avelingen West
5121000	Molenvliet
5121105	Laag Dalem I
5121106	Laag Dalem II
5121107	Laag Dalem Oost
5121108	Laag Dalem Zuid
5121200	Dalem
5121300	Hoog Dalem
5121409	Linge
5121410	Oost I
5121411	Oost II
5121500	Papland
5121600	Schotdeuren
5121700	Bedrijventerrein Noord
5121800	Landelijk gebied West
5121900	Landelijk gebied Noord
5122000	Landelijk gebied Oost
5122100	Landelijk gebied Zuid
5130100	Nieuwe Markt en omstreken
5130101	De Baan en omstreken
5130102	Turfmarkt en omstreken
5130103	Raam en omstreken
5130104	Nieuwe Park Oost
5130105	Nieuwe Park West
5130200	De Korte Akkeren Oud
5130201	De Korte Akkeren Nieuw
5130202	Industrieterrein Kromme Gouwe
5130203	Industrieterrein Hollandsche IJssel
5130204	Weidebloemkwartier
5130300	Boerhaavekwartier
5130301	Windrooskwartier en Heesterbuurt
5130302	Groenhovenkwartier
5130303	Bloemendaalseweg
5130304	De Goudse Poort
5130305	Gaardenbuurt
5130400	Hoef- en Veldbuurt
5130401	Zomenbuurt
5130402	Hoevenbuurt
5130403	Lusten-, Burgen- en Steinenbuurt
5130404	Grassen- Waterbuurt
5130405	Bodegraafsestraatweg
5130406	De Mammoet
5130407	Wervenbuurt
5130500	Ouwe Gouwe
5130501	Statensingel
5130502	Wethouder Venteweg
5130503	Achterwillenseweg
5130504	Slagenbuurt
5130505	Middenwillens
5130509	De Goudse Hout
5130600	Oosterwei
5130601	Vreewijk
5130602	Voorwillenseweg
5130603	Kadenbuurt
5130604	Kort Haarlem
5130700	Sportbuurt
5130701	Molenbuurt
5130702	Polderbuurt
5130703	Vrijheidsbuurt
5130704	Componistenbuurt
5130705	Muziekbuurt
5130800	Stolwijkersluis Oost
5130809	Stolwijkersluis West
5130900	Gouwestroom
5130901	Ringvaartbocht
5130902	Oostpolder in Schieland
5130903	De Eilanden
5130904	Tuinenbuurt
5130909	Westergouwe
5180170	Oostduinen
5180271	Belgisch Park
5180373	Westbroekpark
5180374	Duttendel
5180448	Nassaubuurt
5180475	Uilennest
5180476	Duinzigt
5180477	Waalsdorp
5180478	Arendsdorp
5180479	Van Hoytemastraat en omgeving
5180546	Archipelbuurt
5180605	Van Stolkpark en Scheveningse Bosjes
5180701	Oud Scheveningen
5180702	Vissershaven
5180703	Scheveningen Badplaats
5180704	Visserijbuurt
5180772	Rijslag
5180800	Duindorp
5180907	Statenkwartier
5180908	Geuzenkwartier
5181041	Zorgvliet
5181142	Stadhoudersplantsoen
5181143	Sweelinckplein en omgeving
5181250	Bloemenbuurt-West
5181251	Bloemenbuurt-Oost
5181252	Bomenbuurt
5181309	Vogelwijk
5181481	Bosjes van Pex
5181492	Bohemen en Meer en Bos
5181590	Ockenburgh
5181591	Kijkduin
5181697	Kraayenstein en Vroondaal
5181785	Kerketuinen en Zichtenburg
5181786	Houtwijk
5181795	Kom Loosduinen
5181806	Waldeck-Zuid
5181840	Nieuw Waldeck
5181882	Rosenburg
5181893	Componistenbuurt
5181894	Waldeck-Noord
5181953	Vruchtenbuurt
5181983	Eykenduinen
5182054	Heesterbuurt
5182055	Valkenboskwartier
5182110	Rond de Energiecentrale
5182144	Koningsplein en omgeving
5182245	Zeeheldenkwartier
5182347	Willemspark
5182449	Haagse Bos
5182561	Landen
5182567	Kampen
5182568	Marlot
5182569	Burgen en Horsten
5182664	Bezuidenhout-West
5182665	Bezuidenhout-Midden
5182666	Bezuidenhout-Oost
5182718	Huygenspark
5182762	Rivierenbuurt-Zuid
5182763	Rivierenbuurt-Noord
5182811	Kortenbos
5182812	Voorhout
5182813	Uilebomen
5182814	Zuidwal
5182915	Schildersbuurt-West
5182916	Schildersbuurt-Noord
5182917	Schildersbuurt-Oost
5183032	Transvaalkwartier-Noord
5183033	Transvaalkwartier-Midden
5183034	Transvaalkwartier-Zuid
5183130	Rustenburg
5183131	Oostbroek-Noord
5183135	Oostbroek-Zuid
5183284	Leyenburg
5183387	Venen, Oorden en Raden
5183396	Zijden, Steden en Zichten
5183398	Dreven en Gaarden
5183399	De Uithof
5183480	Morgenstond-Zuid
5183488	Morgenstond-West
5183489	Morgenstond-Oost
5183536	Zuiderpark
5183620	Moerwijk-Oost
5183637	Moerwijk-West
5183638	Moerwijk-Noord
5183639	Moerwijk-Zuid
5183721	Groente- en Fruitmarkt
5183819	Laakhaven-Oost
5183822	Laakhaven-West
5183823	Spoorwijk
5183824	Laakkwartier-West
5183825	Laakkwartier-Oost
5183826	Noordpolderbuurt
5183960	Binckhorst
5184001	Erasmus Veld
5184002	Hoge Veld
5184003	Parkbuurt oosteinde
5184004	Lage Veld
5184005	Zonne Veld
5184106	Vlietzoom-West
5184107	Vliegeniersbuurt
5184110	De Reef
5184208	Bosweide
5184209	Tedingerbuurt
5184211	De Venen
5184212	Morgenweide
5184213	Singels
5184214	Waterbuurt
5184215	De Bras
5184316	Vlietzoom-Oost
5184317	De Rivieren
5184418	De Lanen
5184419	De Velden
5184420	De Vissen
5184421	Rietbuurt
5230000	Boven-Hardinxveld
5230001	Neder-Hardinxveld
5230002	Giessendam
5230003	De Peulen
5300000	De Vesting
5300001	Glaciswijk
5300003	Groote Weergors
5300004	Marinebuurt
5300005	Dichters- en Schrijversbuurt
5300100	Nieuw-Helvoet
5300101	Bloemen- en Plantenbuurt
5300102	Kulck-Noord
5300103	Kulck-Zuid
5300104	Rijksstraatweg en omgeving
5300105	Dorp en Hoonaart
5300106	Vogelbuurt
5300107	Boomgaard
5300200	Nieuwenhoorn
5300201	t Lange Land
5300300	Kanaalzicht
5300301	Wittens Hoeck
5300302	Gorsingen Hoeck
5300303	Hooghen Hoeck
5300400	Hout Hoeffe
5300401	Koele Nacht
5300402	Morgen Stont
5300404	Vlotbrug
5300500	Tolhoeck
5300502	Out Jaar
5300503	Logendal
5300504	Kruis Hoeffe
5300505	Salem
5300600	Wagenzicht
5300601	Altena
5300700	Centrumgebied-West
5300701	Centrumgebied-Oost
5300800	Kickers Bloem
5300900	Duinhoeck
5300901	Buitengebied
5300902	Heliushaven
5301001	Kern Oudenhoorn
5301002	Poldergebied Oudenhoorn
5301003	Poldergebied Nieuwenhoorn
5310101	Dorp
5310102	Oostendam
5310103	Kruiswiel
5310201	Krommeweg-Noord
5310202	Krommeweg-Zuid
5310203	De Sandeling
5310204	Ambachtszone
5310301	Volgerlanden-West
5310302	Volgerlanden-Oost
5310400	Sandelingen-Ambacht
5310501	Antoniapolder
5310502	Noordoevers
5320000	Centrum Grootebroek
5320001	Lutjebroek
5320002	Kloosterhof en Oostersluis
5320100	Bovenkarspel-Centrum
5320101	Broekerhaven
5320102	Plan Zuid en Princenhof
5320103	Rozeboom
5340101	Centrum
5340102	Oranjebuurt
5340103	Vosselaankwartier
5340104	Hillegommerbeek
5340105	Brouwerlaankwartier
5340201	Patrimonium
5340202	Horst ten Daal
5340203	Treslong
5340204	Kastelenbuurt
5340205	Vossepolder
5340206	Staatsliedenbuurt
5340301	Leidsestraat
5340302	Olympiakwartier
5340303	Schilderskwartier
5340304	Wendes
5340305	Hemen
5340306	Ringoevers
5340401	Om de Zanderij
5340402	Weerestein
5340501	De Zanderij
5340502	De Arnoud
5340503	Buitengebied
5370101	Rijnsoever-West
5370102	Rijnsoever-Oost
5370103	Hoornes-West
5370104	Hoornes-Oost
5370105	Rijnsoever-Noord
5370106	Rijnsoever-Midden
5370201	t Heen-Zuid
5370202	t Heen-Noord
5370301	Dorp
5370302	t Sandt
5370303	Molenwijk
5370304	Cleijn Duin
5370305	Koestal
5370306	Zanderij
5370501	Strand
5370502	De Noord
5370503	Noord-Oost
5370504	Centrum
5370505	Midden
5370506	Zuid-West
5370507	Zuid
5370508	Zuid-Oost
5370509	Witte Hek
5370510	Overduin
5370601	Noordduinen
5370602	Zuidduinen
5370604	De Mient en Kooltuin
5370700	Centrum
5370701	Kleipetten
5370702	De Horn
5370703	Frederiksoord-Noord
5370704	Frederiksoord-Zuid
5370705	Centrum-Noord
5370706	De Hoek
5370707	Westerhaghe
5370708	Kamphuizerpolder
5370709	Rijnsburg-Noord
5370800	Dorp
5370801	t Joght
5370802	t Duyfrak
5370808	Valkenburgse Meer
5370809	Overige verspreide huizen Valkenburg
5420000	Oud Krimpen
5420001	Kortland-Noord
5420002	Kortland-Zuid
5420003	Boveneind
5420004	Langeland
5420005	Lansingh-Zuid
5460000	Pieterswijk
5460001	Academiewijk
5460002	Levendaal-West
5460003	Levendaal-Oost
5460100	De Camp
5460101	Marewijk
5460102	Pancras-West
5460103	Pancras-Oost
5460104	dOude Morsch
5460105	Noordvest
5460106	Havenwijk-Noord
5460107	Havenwijk-Zuid
5460108	Molenbuurt
5460109	De Waard
5460200	Stationskwartier
5460300	Groenoord
5460301	Noorderkwartier
5460302	De Kooi
5460400	Meerburg
5460401	Rijndijkbuurt
5460402	Professorenwijk-Oost
5460403	Burgemeesterswijk
5460404	Professorenwijk-West
5460405	Tuinstadwijk
5460406	Cronestein
5460407	Klein Cronestein
5460408	Roomburg
5460409	Waardeiland
5460500	Vreewijk
5460501	Haagweg-Noord
5460502	Gasthuiswijk
5460503	Fortuinwijk-Noord
5460504	Boshuizen
5460505	Oostvliet
5460506	Haagweg-Zuid
5460507	Fortuinwijk-Zuid
5460600	Transvaalbuurt
5460601	Lage Mors
5460602	Hoge Mors
5460700	Pesthuiswijk
5460701	Houtkwartier
5460702	Raadsherenbuurt
5460703	Vogelwijk
5460704	Leeuwenhoek
5460800	Slaaghwijk
5460801	Zijlwijk-Zuid
5460802	Zijlwijk-Noord
5460803	Merenwijk-Centrum
5460804	Leedewijk-Zuid
5460805	Leedewijk-Noord
5460900	Schenkwijk
5460901	Kloosterhof
5460902	Dobbewijk-Noord
5460903	Dobbewijk-Zuid
5470000	Kerkwijk
5470001	Ouderzorg inclusief De Houtkamp
5470002	Zijlkwartier
5470003	De Vogelwijk
5470004	De Baanderij
5470005	De Schansen
5470006	Winkelhof
5470007	Binnenhof
5470008	Voorhof
5470009	Elizabethhof
5470100	Oranjewijk
5470101	Doeskwartier
5470109	Verspreide huizen
5470200	Buitenhof-Oost-Zuid
5470201	Buitenhof-Midden-West
5470202	Leyhof
5530101	Meer en Duin
5530102	Meerenburgh
5530103	De Blinkerd
5530104	Oranjebuurt
5530105	Zeeheldenbuurt
5530201	Berkhout
5530202	Blokhuis
5530203	Het Vierkant
5530204	Van Rijckevorsel
5530205	Bloemenbuurt
5530301	Dever
5530302	Vogelbuurt
5530303	Componistenbuurt
5530304	Schildersbuurt
5530305	Geestwater
5530306	Vrouwenpolder
5530307	Lisse Rond
5530401	Halfweg
5530402	De Engel
5530403	Ter Beek
5530404	3e Poellaan
5530405	Buitengebied
5560101	Taanschuurpolder
5560201	Vertobuurt
5560202	Bloemenbuurt
5560203	Bomendal
5560301	Sluispolder Oost
5560302	Sluispolder West
5560303	Binnenstad
5560401	Kapelpolder
5560402	Componistenbuurt
5560403	Koningshoek
5560404	Het Balkon
5560405	Nieuwe waterweg
5560501	Vogelbuurt
5560502	Burgemeesterswijk
5560601	Steendijkpolder Noord
5560602	Steendijkpolder Zuid
5560701	Zuidbuurt
5560702	De Dijk
5560801	Wilgenrijk
5690000	Nieuwkoop
5690001	Noorden gedeeltelijk
5690002	Nieuwveenseweg
5690003	Uitbreiding dorpskern Nieuwkoop
5690004	Achttienhoven
5690005	Uitbreiding dorpskern Noorden
5690006	Woerdense Verlaat
5690008	Verspreide huizen in het Noorden
5690009	Verspreide huizen en Nieuwkoop Plassengebied
5690100	Nieuwveen
5690101	Schoterveld
5690104	Vrouwenakker
5690108	Verspreide huizen in het Oosten en Zuiden
5690109	Verspreide huizen in het Noorden
5690200	Zevenhoven
5690201	Noordse Dorp
5690202	Recreatiegebied
5690203	Noordse Buurt
5690208	Verspreide huizen in het Westen
5690209	Verspreide huizen in het Oosten
5690300	Ter Aar buitengebied
5690301	Langeraar
5690302	Papenveer
5690303	Korteraar
5690305	Ter Aar-Centrum voorheen Aardam
5690306	Langeraar-Nieuwbouw
5690309	Verspreide huizen Ter Aar
5750000	Dorpskern
5750001	Beeklaan-kwartier
5750002	Boerenburg en Grashoek
5750004	Estec
5750005	Dr Mr W van den Berghstichting
5750009	Verspreide huizen Zuiden en Oosten
5750100	Dorpskern
5750101	Villawijk-Zuid
5750102	De Noord
5750108	Sancta Maria
5750109	Verspreide huizen Langeveld
5750200	Noordwijkerhout
5750201	Kleine Zilk
5750202	Grote Zilk
5750208	Verspreide huizen ten zuiden van de gemeente
5750209	Verspreide huizen in het Centrum
5790001	Rhijngeest
5790002	Rijnfront
5790003	Buitengebied
5790011	Oranje Nassau
5790012	Oudenhof
5790013	Bloemenbuurt
5790014	Voscuyl
5790015	Buitenlust
5790021	Haaswijk-West
5790022	Haaswijk-Oost
5790023	De Morsebel
5790024	Poelgeest
5890101	Kern Hekendorp
5890102	Hekendorpse buurt
5890201	Kern Oudewater
5890202	de Noort syde
5890203	Brede dijk
5890204	Klein Hekendorp
5890205	Kern Hoenkoop
5890206	Markveld
5890207	Groenbuffer noord
5890208	Tappersheul
5890209	Klein Hekendorp buitengebied
5890210	Rozendaal
5890211	Hoenkoopse buurt
5890212	Willeskop
5890213	Ruige weide
5890301	Kern Papekop
5890302	Diemerbroek
5890401	Snelrewaard
5900001	Westpolder
5900002	Molenvliet
5900003	Kraaihoek
5900004	Middenpolder
5900005	Wilgendonk
5900006	Oosteind en De Kooy
5900007	Oostpolder
5900008	Vriesenpolder
5970100	Centrum
5970200	West
5970300	Oost
5970400	Drievliet
5970500	Het Zand
5970600	Slikkerveer
5970700	Bolnes
5970800	Rijsoord
5970900	Oostendam
5971000	Donkersloot
5971100	Verenambacht
5971200	Cornelisland
5990110	Stadsdriehoek
5990111	Oude Westen
5990112	Cool
5990113	Cs Kwartier
5990118	Nieuwe Werk
5990119	Dijkzigt
5990320	Delfshaven
5990321	Bospolder
5990322	Tussendijken
5990323	Spangen
5990324	Nieuwe Westen
5990325	Middelland
5990327	Oud Mathenesse
5990328	Witte Dorp
5990329	Schiemond
5990451	Kleinpolder
5990452	Noord Kethel
5990454	Schieveen
5990455	Zestienhoven
5990456	Overschie
5990457	Landzicht
5990515	Agniesebuurt
5990516	Provenierswijk
5990531	Bergpolder
5990532	Blijdorp
5990534	Liskwartier
5990535	Oude Noorden
5990558	Blijdorpsepolder
5990660	Schiebroek
5990661	Hillegersberg Zuid
5990662	Hillegersberg Noord
5990664	Terbregge
5990665	Molenlaankwartier
5990814	Rubroek
5990836	Nieuw Crooswijk
5990837	Oud Crooswijk
5990841	Kralingen West
5990842	Kralingen Oost
5990843	Kralingse Bos
5990845	De Esch
5990847	Struisenburg
5991017	Kop van Zuid
5991079	Kop van Zuid - Entrepot
5991080	Vreewijk
5991081	Bloemhof
5991082	Hillesluis
5991085	Katendrecht
5991086	Afrikaanderwijk
5991087	Feijenoord
5991088	Noordereiland
5991283	Oud IJsselmonde
5991284	Lombardijen
5991289	Groot IJsselmonde
5991290	Beverwaard
5991391	Pernis
5991444	s-Gravenland
5991446	Kralingseveer
5991448	Prinsenland
5991449	Het Lage Land
5991463	Ommoord
5991466	Zevenkamp
5991467	Oosterflank
5991468	Nesselande
5991570	Charlois Zuidrand
5991571	Tarwewijk
5991572	Carnisse
5991573	Zuidwijk
5991574	Oud Charlois
5991575	Wielewaal
5991576	Zuidplein
5991577	Pendrecht
5991578	Zuiderpark
5991593	Heijplaat
5991692	Hoogvliet Noord
5991699	Hoogvliet Zuid
5991701	Strand en Duin
5991702	Dorp
5991703	Rijnpoort
5991853	Spaanse Polder
5991926	Nieuw Mathenesse
5992194	Waalhaven
5992196	Eemhaven
5992198	Waalhaven Zuid
5992295	Vondelingenplaat
5992306	Botlek
5992307	Europoort
5992308	Maasvlakte
5992459	Bedrijvenpark Noord-West
5992540	Rivium
5992650	Bedrijventerrein Schieveen
5992704	Rozenburg
5992705	Noordzeeweg
6030111	Cromvliet
6030112	Leeuwendaal
6030221	Oud-Rijswijk
6030222	Bomenbuurt
6030223	Welgelegen
6030224	Rembrandtkwartier
6030225	Havenkwartier
6030391	Hoornwijck
6030392	Broekpolder
6030431	Julianapark
6030432	Huis te Lande
6030434	Te Werve
6030581	Plaspoelpolder
6030633	Stationskwartier
6030641	Spoorzicht
6030642	Kleurenbuurt
6030643	Artiestenbuurt
6030771	Muziekbuurt
6030772	Wilhelminapark
6030851	Overvoorde
6030852	Strijp
6030853	Presidentenbuurt
6030854	Ministerbuurt
6030961	Stervoorde
6030962	Eikelenburg
6030963	Hoekpolder
6031064	Sion
6031082	Elsenburg
6031083	Pasgeld
6031084	Haantje
6031193	Kraayenburg
6031194	Vrijenban
6060000	Buurt 00
6060101	Stadserf
6060102	Natuurkundigenbuurt
6060103	Singelkwartier
6060104	Stationsbuurt
6060105	Wetenschappersbuurt
6060106	Newtonbuurt
6060107	Rotterdamsedijk
6060201	Brandersbuurt
6060202	Walvisbuurt
6060203	De Plantage
6060301	Schildersbuurt
6060302	Schrijversbuurt
6060303	Fabribuurt
6060304	Frankenland
6060305	Liduinabuurt
6060306	Nassaubuurt
6060307	Oranjekwartier
6060308	Haverschmidtkwartier
6060309	Distillateursbuurt
6060401	Noletbuurt
6060402	Eilandenbuurt
6060403	Piet Sandersbuurt
6060404	Maasboulevard
6060405	Havenbuurt
6060500	Nieuw-Mathenesse
6060602	Spieringshoek
6060603	Staatsliedenbuurt
6060604	Vakbondsliedenbuurt
6060605	Hollandiabuurt
6060606	Schiehart
6060607	Nolensbuurt
6060608	Wibautbuurt
6060701	ParkenbuurtenBijdorp
6060702	Groenoord-Zuid
6060703	Groenoord-Midden
6060704	Groenoord-Noord
6060705	Kethel-dorp
6060706	Vogelbuurt
6060707	Tuindorp
6060801	Spaanse Polder
6060802	s-Gravelandsepolder
6060803	Polderwetering
6060901	Toneelspelersbuurt
6060902	Ambachtenbuurt
6060903	Kastelenbuurt
6060904	Botenbuurt
6060905	De GaardenenSveafors
6060906	De VlinderhovenenSveaholm
6060907	De Akkers en De Velden
6060908	Sveaborg en -Dal
6060909	Noordkethelpolder
6100101	Baanhoek-West
6100102	Baanhoek-Bedrijven
6100103	De Weren
6100104	Benedenveer
6100105	Baanhoek-Oost
6100106	Prickwaert en Weresteijn
6100107	De Hoven
6100108	Molendijk
6100109	Bedrijventerrein Het Plaatje
6100201	Rivierenbuurt-Noord
6100202	Rivierenbuurt-Zuid
6100203	Kerkbuurt-West
6100204	Buitenuitbreiding-West
6100205	Bedrijventerrein Kerkerak
6100206	Stationsweg
6100207	Staatsliedenbuurt
6100208	Winklerplein-Noord
6100209	Winklerplein-Zuid
6100210	Kerkbuurt-Oost
6100211	Buitenuitbreiding-Oost
6100301	Vogelbuurt-Noord
6100302	Vogelbuurt-Zuid
6100303	Middenveer
6100304	Rivierdijk-West
6100305	De Grienden
6100306	Rivierdijk-Midden
6100307	Rivierdijk-Oost
6100401	Het Buitengebied
6100402	Bedrijventerrein De Driehoek
6100403	Bedrijventerrein Nijverwaard
6100404	Bedrijventerrein Stationspark
6100405	Sportpark
6100406	Bedrijventerrein Noordoost-Kwadrant
6130101	Valckesteyn
6130102	Zwaardijk-Kruisdijk
6130103	Poortugaal
6130104	Buitengebied Poortugaal
6130205	Rhoon Noord
6130207	Buitengebied Rhoon-Noord
6130308	Beatrixstraat
6130309	Landweg
6130310	Poortugaal-Centrum
6130311	Poortugaal Zuid
6130312	Polder Albrandswaard
6130313	Kijvelanden
6130414	Rhoon-Centrum
6130415	Ghijseland
6130416	Overhoeken
6130417	Park Rhoon
6130418	Rhoon-Zuidoost
6130419	Tijsjesdijk
6130420	Buitengebied Rhoon-Zuid
6130521	Portland-Koedoodzone
6130522	Buitengebied
6130623	Driehoek
6130624	Portland-Centrum
6130625	Wijkpark Portland
6130626	De Eilanden
6130706	Distripark
6140000	Rockanje
6140001	Helhoek
6140002	Strijpe
6140003	Stuifakker
6140004	Zuidhoek
6140005	Nieuw gebied
6140009	Verspreide huizen
6140100	Oostvoorne
6140101	De Waranda
6140102	Kruiningergors
6140103	Tinte
6140104	Goudhoek
6140105	Vogelenzang
6140106	Duinoord
6140108	Verspreide huizen in het Westen
6140109	Verspreide huizen in het Oosten
6220101	Indische Buurt
6220102	Vettenoordse Polder Oost
6220103	Centrum
6220104	Hoogstad
6220201	Hoogkamer
6220202	Zuidbuurt
6220203	Wetering
6220204	Lage Weide
6220205	Buitengebied Zuidbuurt
6220301	De Vergulde Hand
6220302	Lickebaert
6220303	t Scheur
6220304	Deltagebied
6220305	Park Zuidbuurt
6220306	Vettenoordse Polder West
6220307	Maasboulevard
6220401	Hofbuurt
6220402	Oostbuurt
6220403	Havengebied Oost
6220404	Vijfsluizen
6220501	Babberspolder Noord
6220502	Oranjebuurt
6220503	Babberspolder West
6220504	Babberspolder Oost
6220505	t Nieuwe Lant
6220601	Vaart Zuid
6220602	Statenbuurt
6220603	Loper Zuid
6220604	Vogelbuurt Noord
6220605	Sportpark Holy
6220606	Vogelbuurt Zuid
6220701	Drevenbuurt
6220702	Kruidenbuurt
6220703	Loper Noord
6220704	Hoofdstedenbuurt
6220705	Park Holy Noord
6220706	Hoevenbuurt
6220707	Holierhoekse Polder
6220708	Vaart Noord
6220801	Broekpolder gebied
6260001	Noord-Hofland
6260002	Adegeest
6260004	Boschgeest
6260006	Bijdorp
6260007	Vlietwijk
6260008	Starrenburg
6260009	Dobbewijk
6260010	Krimwijk
6260011	Centrum
6260012	Nassauwijk
6260013	Bloemenwijk
6260014	Buitengebied
6270101	Groenswaard 1
6270102	Groenswaard 2
6270103	Groenswaard 3
6270104	Peter Zuidlaan en Horstenbuurt
6270105	West 1
6270106	Bomenwijk
6270202	Zuidplas 80
6270203	Zuidplas 90
6270204	Triangel
6270205	West 2
6270301	Oranjewijk Zuid
6270302	Oranjewijk Noord
6270303	Vondelwijk
6270304	Noordkade
6270401	Centrum
6270402	Oostpolderwijk
6270403	Bedrijventerrein Mercuriusweg
6270404	Zuid
6270405	Coenecoop
6270406	t Weegje
6270407	Oost
6270408	Zeeheldenbuurt
6290000	Drie Papegaaien
6290001	Oud-Wassenaar
6290002	Nieuw-Wassenaar
6290003	Duindigt met Groenendaal
6290004	Oud-Clingendaal
6290005	De Kieviet
6290006	Kerkehout
6290007	Klingenbosch
6290008	Verspreide huizen Eikenhorst
6290009	Verspreide huizen Meijendel
6290100	De Paauw
6290101	Dorp Wassenaar
6290102	Oostdorp
6290103	Zijlwatering en haven
6290104	De Deijl
6290105	Groot Deijleroord en Ter Weer
6290106	Rijksdorp met De Pan
6290107	Maaldrift
6290108	Verspreide huizen Raaphorst en in poldergebied
6290109	Verspreide huizen Duinrell Wassenaarse Slag
6290110	Weteringpark
6320101	Binnenstad
6320102	Bloemen- en Bomenkwartier
6320103	Bedrijventerrein Honthorst
6320104	Staatsliedenkwartier
6320105	Vogelkwartier
6320106	Schilderskwartier
6320201	Bedrijventerrein Barwoutswaarder
6320202	Molenvliet-West
6320203	Molenvliet-Oost
6320204	Kromwijk
6320301	Middelland-Noord
6320302	Middelland-Zuid
6320303	Snel en Polanen
6320304	Bedrijventerrein Polanen
6320305	Waterrijk
6320401	Rietveld
6320402	Barwoutswaarder
6320501	Geestdorp
6320502	Breeveld
6320503	Cattenbroek
6320601	Harmelen-Noord dorp
6320602	Harmelen-Zuid dorp
6320603	Putkop
6320604	Buitengebied Harmelen
6320605	Reijerscop
6320606	Gerverscop
6320701	Kamerik dorp
6320702	Kanis
6320703	Buitengebied Kamerik
6320801	Zegveld dorp
6320802	Buitengebied Zegveld
6370001	Dorp
6370002	Stadscentrum
6370003	Palenstein
6370004	Driemanspolder
6370100	Meerzicht-West
6370101	Meerzicht-Oost
6370200	Buytenwegh
6370201	De Leyens
6370300	Seghwaert-Zuid-West
6370301	Seghwaert-Noord-Oost
6370400	Noordhove-West
6370401	Noordhove-Oost
6370500	Rokkeveen-West
6370501	Rokkeveen-Oost
6370600	Oosterheem-Zuid-West
6370601	Oosterheem-Noord-Oost
6370800	Rokkehage circa
6370801	Lansinghage circa
6370802	Zoeterhage circa
6370803	Hoornerhage circa
6370902	Balijbos
6370903	Westerpark circa
6370904	Buitengebied-West
6370905	Meerpolder
6370906	Scheidingszone
6370907	Van Tuyllpark
6380001	Westwout
6380002	Vogelweide
6380003	Bloemenweide
6380004	Blankaartpark
6380005	Dorp Zuid
6380006	Dorpskern
6380007	Dorp Noord
6380101	Westeinde
6380202	Zuidbuurt
6380303	Weipoort
6380404	Gelderswoude
6380909	Verspreide huizen
6381004	Rijnegom
6381005	Oosthoek
6381006	Meerburg
6381007	De Goede Herder
6381010	Industriegebied Grote Polder
6381011	Industriegebied Barrepolder
6381012	Hoge Rijndijk Noord
6381013	Hoge Rijndijk Oost
6420101	Slagveld en Omgeving
6420102	Veerplein - Oostkeetshaven
6420103	Drinkwaterbedrijf
6420104	Balkengat
6420105	Noordpark
6420106	Industriegebied Ringdijk
6420107	Staatsliedenbuurt-Noord
6420108	Europesebuurt
6420109	Staatsliedenbuurt-Zuid
6420110	Oud- en Gerbrandyplein
6420111	Winkelcentrum Walburg
6420112	De Were en omgeving
6420113	Lievershil en omgeving
6420114	Eem- en Zonnestein
6420115	Swanendrif-Zuid
6420201	Veerplein - De Werf
6420202	Euryza
6420203	Westkeetshaven
6420204	Brugweg
6420205	Corridor-Oost
6420206	Voormalig veilingterrein
6420207	Burgemeester Doornplein en omgeving
6420208	Prins Bernhardstraat en omgeving
6420209	Juliandorp
6420301	Industriegebied Develpoort
6420302	Corridor-West
6420303	Schildersbuurt
6420304	Sterrenbeeldenbuurt
6420305	Planetenbuurt
6420306	Begraafplaats Noord
6420307	Officiervliet-Oost
6420308	Officiervliet-West
6420309	Ter Steeghe
6420310	Pilotenbuurt
6420311	Langeraarstraat en omgeving
6420312	Hoveniersplein - Griend
6420313	Prinsessenbuurt
6420401	De Hoge Devel
6420402	Componistenbuurt-Zuid
6420403	Componistenbuurt-Midden
6420404	Componistenbuurt-Noord
6420405	Oudeland en Meubelmaker
6420406	Klarinetsingel en omgeving
6420407	Sonate en omgeving
6420408	De As
6420409	Park Molenvliet
6420410	Industriegebied Molenvliet
6420501	Noordzijde De Hoge Devel
6420502	Develsteincollege
6420503	Swinhove - De Lus
6420504	Koloniënbuurt
6420505	Meerdervoort
6420506	Dichtersbuurt-Midden
6420507	Dichtersbuurt-West
6420508	Verzetsheldenbuurt
6420509	Kapiteinflats
6420510	Zeeheldenbuurt
6420511	Bloemenbuurt Madelief - Zonnenbloem
6420512	Bloemenbuurt Dahlia - Geranium
6420513	Bloemenbuurt Begonia - Crocus
6420514	Bloemenbuurt Hyacinth - LObelia
6420515	Bloemenbuurt Akelei
6420601	IJsvogelplein
6420602	Vogelbuurt-Oost
6420603	Ooievaar- en Vinkplein
6420604	Vogelbuurt-West
6420605	Leeuwerik- en Fazantplein
6420606	Moermond-Zuid
6420607	Boshuizen - Rechteren
6420608	Assumburg - Lunenburg
6420609	Hilverbeek en omgeving
6420610	Develzijde Nederhoven
6420701	Industriegebied Groote Lindt
6420702	De Geer-Oost
6420703	De Geer-West
6420704	Achterlindtsestraat
6420705	Kijfhoek
6420706	Emplacement "Kijfhoek"
6420707	Groenesteeg - Langeweg
6420708	Bakestein
6420801	Molenweg-West
6420802	Dorp-Noordoost
6420803	Dorp-Zuidoost
6420804	Dorp-Zuid
6420805	Bedrijventerrein Gors-Noord
6420901	Emplacement Kijfhoek en Langeweg
6420902	Sportcomplex "De Molenwei"
6420903	Polder Heerjansdam
6420904	Kleine Lindt Polder
6420905	Hooge Nespolder
6420906	Het Buitenland en omgeving
6420907	Bedrijventerrein Gors-Zuid
6540101	Baarland Kern
6540102	Verspreide huizen Baarland
6540201	Borssele Kern
6540202	Verspreide huizen Borssele
6540301	Driewegen Kern
6540302	Verspreide huizen Driewegen
6540401	Ellewoutsdijk Kern
6540402	Verspreide huizen Ellewoutsdijk
6540501	Heinkenszand Kern
6540502	Verspreide huizen Heinkenszand
6540601	Hoedekenskerke Kern
6540602	Verspreide huizen Hoedekenskerke
6540701	Kwadendamme Kern
6540702	Verspreide huizen Kwadendamme
6540801	Lewedorp Kern
6540802	Verspreide huizen Lewedorp
6540901	Nieuwdorp Kern
6540902	Verspreide huizen Nieuwdorp
6540903	Havengebied Sloe
6541001	Nisse Kern
6541002	Verspreide huizen Nisse
6541101	Oudelande Kern
6541102	Verspreide huizen Oudelande
6541201	Ovezande Kern
6541202	Verspreide huizen Ovezande
6541301	s-Gravenpolder Kern
6541302	Verspreide huizen s-Gravenpolder
6541401	s-Heer Abtskerke Kern
6541402	Verspreide huizen s-Heer Abtskerke
6541501	s-Heerenhoek Kern
6541502	Verspreide huizen s-Heerenhoek
6640101	Goes-Centrum
6640102	Goes-Oost
6640103	Goes-Zuid
6640104	Goes-West
6640105	Goes-Noordwest
6640106	Goes-Noordoost
6640107	Industrieterrein De Poel
6640108	Industrieterrein Haven
6640109	Goese Meer
6640110	Overzuid
6640111	Mannee
6640220	Wilhelminadorp
6640229	Verspreide huizen Wilhelminadorp
6640330	Kloetinge
6640331	Oostmolenpark
6640338	Verspreide huizen in het Oosten
6640339	Verspreide huizen in het Zuiden
6640440	Kattendijke
6640449	Verspreide huizen Kattendijke
6640550	s-Heer-Arendskerke
6640551	De Schenge
6640559	Verspreide huizen in het Westen
6640660	Eindewege
6640770	s-Heer-Hendrikskinderen
6640778	Verspreide huizen ten noorden van s-Heer-Hendrikskinderen
6640779	Verspreide huizen ten zuiden van s-Heer-Hendrikskinderen
6640880	Wolphaartsdijk
6640889	Verspreide huizen Wolphaartsdijk
6640990	Oud-Sabbinge
6680100	Kern Alphen
6680101	Buitengebied Alphen
6680200	Kern Altforst
6680201	Buitengebied Altforst
6680300	Kern Appeltern
6680301	Buitengebied Appeltern
6680400	Kern Beneden-Leeuwen
6680401	Buitengebied Beneden-Leeuwen
6680500	Kern Boven-Leeuwen
6680501	Buitengebied Boven-Leeuwen
6680600	Kern Dreumel
6680601	Buitengebied Dreumel
6680700	Kern Maasbommel
6680701	Buitengebied Maasbommel
6680800	Kern Wamel
6680801	Buitengebied Wamel
6770101	Binnenstad
6770102	Carmel
6770103	Linie
6770104	Dullaert
6770105	Puienput
6770106	Nassau
6770107	Groote Kreek
6770108	Zoetevaart
6770109	Absdaalseweg
6770110	Hogeweg
6770111	Buitengebied Hulst
6770201	Polderken
6770202	Walhoek
6770203	Gedelfte
6770204	Buitengebied Sint Jansteen
6770301	Goukensberg
6770302	Durpe
6770303	Buitengebied Clinge
6770401	Kern Graauw
6770402	Paal
6770403	Buitengebied Graauw
6770501	Kern Heikant
6770502	Buitengebied Heikant
6770601	Kern Nieuw Namen
6770602	Buitengebied Nieuw Namen
6770701	Kern Kapellebrug
6770702	Buitengebied Kapellebrug
6770801	Groenendijk
6770802	Zandewijk
6770803	Molenstraat
6770804	Hoek en Bosch
6770805	Buitengebied Kloosterzande
6770901	Kern Lamswaarde
6770902	Buitengebied Lamswaarde
6771001	Kern Terhole
6771002	Buitengebied Terhole
6771101	Stoppeldijk
6771102	Boschkapelle
6771103	Buitengebied Vogelwaarde
6771201	Kern Hengstdijk
6771202	Buitengebied Hengstdijk
6771301	Kern Ossenisse
6771302	Buitengebied Ossenisse
6771401	Kern Kuitaart
6771402	Buitengebied Kuitaart
6771501	Kern Walsoorden
6771502	Perkpolder
6771503	Buitengebied Walsoorden
6780000	Kapelle
6780009	Verspreide huizen Kapelle
6780100	Wemeldinge
6780109	Verspreide huizen Wemeldinge
6780200	Schore
6780209	Verspreide huizen Schore
6870003	Abdij
6870004	Stadhuis
6870005	Markt
6870006	Damplein
6870007	Dampoort
6871008	Griffioen I
6871009	Griffioen II
6871010	Poppenroede
6871102	Seislaan
6871111	Klarenbeek I
6871112	Klarenbeek II & III
6871213	Nieuw Middelburg
6871301	Brigdamme
6871314	Leliendale
6871415	Sint Laurens
6871416	Rozenhof
6871417	Popkensburg
6871518	Ramsburg
6871619	Prooijenspark
6871620	Veersepoort
6871721	Golsteinseweg
6871768	Nieuwenhove
6871781	Brigdamsepad
6871822	Zandvoort
6871823	Goedgelegen
6871824	Pronkenburg
6871925	Schellach
6871926	Krooneveld
6872027	Poelendaele
6872028	t Zand
6872031	Stromenwijk
6872032	Toorenvliedt
6872084	Breewijk
6872933	Breeweg
6872934	Ter Hooge
6872935	Lustenburg
6872936	Nieuw Abeele
6873037	Magistraatwijk I
6873038	Magistraatwijk II
6873039	Erasmuswijk
6873040	Magistraatwijk III
6873041	Reijershove
6873082	Veldzigt
6873083	Essenvelt
6873143	Kruitmolen
6873144	Dauwendaele I
6873145	Dauwendaele II
6873171	Edelstenenbuurt
6873247	Arnestein I
6873248	Arnestein II
6873946	Mortiere I
6873950	Mortiere III
6873970	Mortiere II
6874051	Nieuw- en Sint Joosland
6874952	Nieuwlandsrust
6874953	Vlackeweg
6874954	Middelburgschepolder
6874955	Mortierepolder
6874956	Oudedorp
6874957	Derdeweg
6875058	Dorp
6875059	Poldertje
6875060	Brakenburg I
6875061	Brakenburg II
6875062	Brakenburg III
6875063	Hazenburg I
6875069	De Lage Landen
6875085	Hazenburg II
6875164	Kleverskerke
6875265	Oranjeplaat
6875367	Veerse Meer
6875966	Buitengebied
7030000	Yerseke - Kern
7030001	Yerseke - West
7030002	Yerseke - Steehof
7030006	Yerseke - MolenpolderenOlzendepolder
7030009	Verspreide huizen Yerseke
7030100	Kruiningen - Kern
7030101	Kruiningen - Zandweg
7030102	Kruiningen - Kruseveer
7030106	Kruiningen - Nishoek
7030109	Verspreide huizen Kruiningen
7030200	Krabbendijke - Kern
7030201	Krabbendijke - Oostpolder
7030202	Krabbendijke - Rozeboom
7030206	Krabbendijke - Zuidweg
7030209	Verspreide huizen Krabbendijke
7030300	Waarde
7030309	Verspreide huizen Waarde
7030400	Rilland - Kern
7030401	Rilland- Stationsbuurt
7030402	Rilland - Bath
7030403	Rilland - Werfkampen
7030406	Rilland - De Poort
7030409	Verspreide huizen Rilland
7030500	Hansweert - Kern
7030501	Hansweert - Tramper
7030509	Verspreide huizen Hansweert
7030600	Oostdijk
7030609	Verspreide huizen Oostdijk
7150101	Binnenstad-Java
7150401	Handelspoort
7150402	Noorderdokken
7150403	Zevenaar
7150404	Zuidpoort
7150701	Driewegen
7150702	Katspolder
7150703	Oudelandse Hoeve
7150704	Oude Vaart
7150705	Zeldenrust
7151001	Lievenspolder
7151002	Noordpolder
7151003	Serlippenspolder
7151004	Triniteit
7151005	Zuiderpark
7151301	Othene
7151600	Buitengebied Terneuzen
7151900	Kern Axel
7152200	Buitengebied Axel
7152500	Kern Biervliet
7152800	Buitengebied Biervliet
7153100	Kern Hoek
7153400	Buitengebied Hoek
7153700	Kern Koewacht
7154000	Buitengebied Koewacht
7154300	Kern Overslag
7154600	Buitengebied Overslag
7154900	Kern Philippine
7155200	Buitengebied Philippine
7155500	Kern Sas van Gent
7155800	Buitengebied Sas van Gent
7156100	Kern Sluiskil
7156400	Buitengebied Sluiskil
7156700	Kern Spui
7157000	Buitengebied Spui
7157300	Kern Westdorpe
7157600	Buitengebied Westdorpe
7157900	Kern Zaamslag
7158200	Buitengebied Zaamslag
7158500	Kern Zuiddorpe
7158800	Buitengebied Zuiddorpe
7160000	Tholen
7160009	Verspreide huizen Tholen
7160100	Poortvliet
7160109	Verspreide huizen Poortvliet
7160200	Scherpenisse
7160209	Verspreide huizen Scherpenisse
7160300	Sint-Maartensdijk
7160309	Verspreide huizen Sint-Maartensdijk
7160400	Stavenisse
7160409	Verspreide huizen Stavenisse
7160500	Sint-Annaland
7160509	Verspreide huizen Sint-Annaland
7160600	Oud-Vossemeer
7160609	Verspreide huizen Oud-Vossemeer
7160700	Sint Philipsland
7160709	Verspreide huizen Sint Philipsland
7160710	Anna Jacobapolder
7170000	Veere
7170001	Zanddijk
7170002	Buiten de Veste
7170009	Verspreide huizen Veere
7170100	Gapinge
7170109	Verspreide huizen Gapinge
7170200	Vrouwenpolder
7170201	Breezand
7170209	Verspreide huizen Vrouwenpolder
7170300	Serooskerke
7170309	Verspreide huizen Serooskerke
7170400	Domburg
7170409	Verspreide huizen Domburg
7170500	Oostkapelle
7170501	Randduin
7170502	Duno
7170508	Verspreide huizen in het Zuiden
7170509	Verspreide huizen in het Noorden
7170600	Aagtekerke
7170609	Verspreide huizen Aagtekerke
7170700	Grijpskerke
7170709	Verspreide huizen Grijpskerke
7170800	Meliskerke
7170809	Verspreide huizen Meliskerke
7170900	Koudekerke
7170901	Dishoek
7170908	Verspreide huizen recreatiegebied van Koudekerke
7170909	Verspreide huizen buiten recreatiegebied Koudekerke
7171000	Biggekerke
7171001	De Ruiser
7171008	Verspreide huizen in recreatiegebied van Biggekerke
7171009	Verspreide huizen buiten recreatiegebied Biggekerke
7171100	Zoutelande
7171101	Kustlicht
7171109	Verspreide huizen Zoutelande
7171200	Westkapelle
7171201	Joossesweg
7171209	Verspreide huizen Westkapelle
7180100	Oude Binnenstad
7180101	Scheldestraat en omstreken
7180102	Stadhuisplein en omstreken
7180103	Scheldekwartier
7180200	Vredehof Zuid
7180201	Bonedijkestraat en omstreken
7180202	Bloemenlaan en omstreken Oost
7180203	Baskensburg Zuid
7180204	Vredehof Noord
7180205	Het Fort en omstreken
7180206	Hercules Segherslaan en omstreken
7180207	Baskensburg Noord
7180208	Boulevards Bankert en Evertsen
7180209	Bloemenlaan en omstreken West
7180300	Paauwenburg Zuidoost
7180301	Paauwenburg West
7180302	Westduin
7180303	Paauwenburg Noordoost
7180400	Rosenburg
7180401	Bossenburgh - Weyevliet
7180402	Westerzicht
7180403	Lammerenburg
7180405	Papegaaienburg - Hofwijk
7180406	West-Souburg
7180407	Landelijk gebied Lammerenburg
7180408	Vrijburg
7180500	Kern Oost-Souburg West
7180501	Zeewijksingel
7180502	Schoonenburg - Groot Abeele
7180503	Molenweg en omstreken
7180504	Landelijk gebied Oost-Souburg
7180505	Kern Oost-Souburg Oost
7180506	Schoonenburg
7180507	Souburg-Noord
7180600	Ritthem
7180601	Rammekens
7180602	Welzinge
7180603	Bedrijventerrein Oost-Souburg Oost
7180700	Kennishaven
7180701	Buitenhaven
7180702	Bedrijventerrein Oost-Souburg West
7180800	Sloegebied
7360101	Mijdrecht Dorp
7360102	Hofland
7360103	Molenland
7360104	Proostdijland
7360105	Twistvlied-Wickelhof
7360106	Sportpark Mijdrecht
7360107	Bedrijventerrein Mijdrecht
7360108	Mijdrecht Buitengebied
7360201	de Hoef
7360202	de Hoef Buitengebied
7360301	Amstelhoek
7360401	Vinkeveen Dorp
7360402	Zuiderwaard-Westerheul
7360403	Vinkeveen Plassengebied
7360404	Vinkeveen Buitengebied
7360501	Waverveen
7360502	Waverveen Buitengebied
7360601	Wilnis Dorp
7360602	de Maricken-Veenzijde
7360603	Wilnis Buitengebied
7360701	Abcoude-Noordoost
7360702	Abcoude-Zuidwest
7360703	Abcoude Buitengebied
7360801	Baambrugge Dorp
7360802	Baambrugge Buitengebied
7370000	Burgum
7370009	Verspreide huizen Burgum
7370100	Aldtsjerk
7370101	Oentsjerk
7370102	Verspreide huizen Wyns
7370108	Verspreide huizen Aldtsjerk
7370109	Verspreide huizen Oentsjerk
7370200	Mûnein
7370201	Gytsjerk
7370208	Verspreide huizen Mûnein
7370209	Verspreide huizen Gytsjerk
7370300	Ryptsjerk
7370309	Verspreide huizen Ryptsjerk
7370400	Tytsjerk
7370401	Suwâld
7370408	Verspreide huizen Tytsjerk
7370409	Verspreide huizen Suwâld
7370500	Earnewâld
7370501	Garyp
7370508	Verspreide huizen Earnewâld
7370509	Verspreide huizen Garyp
7370600	Sumar
7370609	Verspreide huizen Sumar
7370700	Eastermar
7370701	Jistrum
7370708	Verspreide huizen Eastermar
7370709	Verspreide huizen Jistrum
7370800	Noordburgum
7370809	Verspreide huizen Noordburgum
7370900	Hurdegaryp
7370909	Verspreide huizen Hurdegaryp
7430101	Hoogveld
7430102	Nobis
7430103	Florapark
7430201	Kleine Heitrak
7430202	Voordeldonk
7430301	Appelbuurt
7430302	Sterrenbuurt
7430303	Oude Bloemenbuurt
7430401	Paddenstoelenbuurt
7430402	Nieuwe Bloemenbuurt
7430403	Vlinderbuurt
7430404	Kruidenbuurt
7430405	Loverbosch
7430501	Hemelberg
7430502	Centrum zuid
7430503	De Bergen
7430504	Hulterman
7430601	Ostade
7430602	Centrum west
7430603	Centrum
7430701	Verspreide huizen Asten west
7430702	Hazeldonk
7430801	Heusden centrum
7430802	Verspreide huizen Heusden
7430901	De Groote Peel
7431001	Ommel centrum
7431002	Verspreide huizen Ommel
7431101	Ommel recreatie
7440000	Baarle-Nassau
7440001	Bungalowpark
7440002	Hoogbraak
7440009	Verspreide huizen Baarle-Nassau
7440100	Ulicoten
7440109	Verspreide huizen Ulicoten
7440209	Verspreide huizen Castelre
7480000	Centrum
7480001	Havenkwartier
7480002	Vestinggronden-Noord
7480003	Vestinggronden-Zuid
7480004	Het Fort
7480005	Zeekant
7480006	Het Glacis
7480100	Meilust Zuid
7480101	Meilust Noord
7480102	Tuinwijk
7480103	Noordgeest
7480200	Gageldonk-West
7480201	Warande-West
7480202	Gageldonk-Oost
7480203	Warande-Oost
7480204	Nieuw Borgvliet
7480205	Langeweg
7480206	Lage Meren
7480208	Verspreide huizen Heimolen
7480209	Buitengebied-Oost
7480300	Bergse Plaat
7480301	De Markiezaten
7480302	Schelde Vesting
7480306	Waterfront-Industriegebied
7480308	Augustapolder
7480309	Buitengebied-West
7480400	Halsteren-Centrum
7480401	De Beek
7480402	Nieuwe Molen
7480403	Jankenberg
7480404	Rode Schouw
7480405	De Schans en Oude Molen
7480408	Verspreide huizen Vrederust
7480409	Verspreide huizen Halsterse Polders
7480500	Lepelstraat
7480507	Verspreide huizen Kladde
7480508	Verspreide huizen Klutsdorp
7480509	Verspreide huizen Oud Glymespolder
7530001	Centrum
7530002	Hoge Akker
7530003	Speelheide
7530004	De Leeuwerik
7530005	Villawijk
7530006	Batadorp
7530007	Salderes
7530008	Wilhelminadorp
7530009	Naastenbest
7530010	t Zand
7530011	Breeven
7530012	Heide
7530013	Heuveleind
7530014	Heivelden
7530015	Buitengebied
7530016	Dijkstraten
7530017	Kantonnier
7530018	Steegsche Velden
7530019	Aarlesche Erven
7550000	Boekel
7550005	Verspreide huizen Logt en Berkhoek
7550006	Verspreide huizen Arendnest-Zijp
7550007	Verspreide huizen Zandhoek en Peelstraat
7550008	Verspreide huizen Molenwijk, Elzen en Neerbroek
7550009	Verspreide huizen Bovenstehuis en Peelsehuis
7550100	Venhorst
7550109	Verspreide huizen Venhorst
7560000	Boxmeer Centrum
7560001	Bakelgeert-Noord
7560002	Bakelgeert-Zuid
7560003	De Elzen
7560004	Villapark t Zand
7560005	Luneven
7560006	Hollesteeg
7560007	Maasbroeksche Blokken
7560008	Bedrijventerrein Saxa Gotha
7560009	Verspreide huizen Boxmeer
7560100	Sambeek Centrum
7560109	Verspreide huizen Sambeek
7560200	Beugen Centrum
7560209	Verspreide huizen Beugen
7560300	Oeffelt Centrum
7560309	Verspreide huizen Oeffelt
7560400	Rijkevoort Centrum
7560409	Verspreide huizen Rijkevoort
7560500	Vortum-Mullem Centrum
7560509	Verspreide huizen Vortum-Mullem
7560600	Vierlingsbeek Centrum
7560601	Groeningen Centrum
7560609	Verspreide huizen Vierlingsbeek en Groeningen
7560700	Overloon Centrum
7560707	Verspreide huizen Westerbeek
7560708	Verspreide huizen Stevensbeek
7560709	Verspreide huizen Overloon
7560800	Maashees Centrum
7560809	Verspreide huizen Maashees
7560900	Holthees Centrum
7560909	Verspreide Huizen Holthees
7570000	Boxtel-Centrum
7570001	Boxtel-Oost
7570002	Boxtel-Noord
7570003	Munsel-Selissen
7570004	Industrieterrein Boxtel
7570005	Verspreide huizen Kleinderliempde
7570006	Verspreide huizen Tongeren, Luissel en Nergena
7570007	Verspreide huizen Hal en Heult
7570008	Verspreide huizen Langenberg
7570009	Verspreide huizen Roond
7570100	Lennisheuvel
7570109	Verspreide huizen Lennisheuvel
7570200	Liempde
7570206	Hezelaar
7570207	Vrilkhoven
7570208	Verspreide huizen Kasteren en Berg
7570209	Verspreide huizen Velders, Bosch en De Scheeken
7580001	Valkenberg
7580002	Chassé
7580003	Fellenoord
7580004	Schorsmolen
7580005	Station
7580006	City
7580100	Belcrum
7580101	Doornbos-Linie
7580102	Biesdonk
7580103	Geeren-zuid
7580104	Wisselaar
7580105	Krogten
7580106	Geeren-noord
7580107	Waterdonken
7580200	Brabantpark
7580201	Sportpark
7580202	Zandberg
7580203	Heusdenhout
7580204	Moleneind-oost
7580205	Hoogeind
7580300	Blauwe Kei
7580301	Ypelaar
7580302	Overakker
7580303	Ginneken
7580309	Mastbos
7580400	Boeimeer
7580401	Ruitersbos
7580500	Haagpoort
7580501	Heuvel
7580502	Tuinzigt
7580503	Princenhage
7580504	Westerpark
7580505	Heilaar
7580506	Hazeldonk
7580507	Steenakker
7580508	Effen-Rith
7580509	Liesbos
7580600	Gageldonk
7580601	Kievitsloop
7580602	Kesteren
7580603	Muizenberg
7580604	Heksenwiel
7580605	Overkroeten
7580606	Kroeten
7580607	Emer
7580609	Hagebeemd
7580700	Bavel
7580701	Nieuw Wolfslaar
7580709	Buitengebied Bavel
7580800	Ulvenhout
7580809	Buitengebied Ulvenhout
7580900	Prinsenbeek
7580909	Buitengebied Prinsenbeek
7581000	Teteringen
7581008	Vuchtpolder
7581009	Buitengebied Teteringen
7620000	Deurne-Centrum
7620001	Sint Jozefparochie
7620002	Zeilberg
7620003	Walsberg
7620004	Koolhof
7620005	Heiakker
7620006	Industrieterrein
7620007	De Vennen
7620009	Verspreide huizen Deurne
7620100	Vlierden
7620109	Verspreide huizen Vlierden
7620200	Liessel
7620209	Verspreide huizen Liessel
7620300	Neerkant
7620309	Verspreide huizen Neerkant
7620400	Helenaveen
7620409	Verspreide huizen Helenaveen
7650000	Oude Pekela
7650009	Verspreide huizen Oude Pekela
7650100	Nieuwe Pekela
7650101	Boven-Pekela
7650109	Verspreide huizen Nieuwe Pekela
7660101	West 1
7660102	Buitengebied West 1
7660103	West 2
7660104	Buitengebied West 2
7660105	Centrum
7660106	Beljaart
7660107	Biezen
7660108	Hoge Akker
7660109	Oud Dongen
7660110	Buitengebied Oost
7660111	Klein Dongen
7660112	Dongen-Vaart
7660113	Buitengebied Klein DongenenDongen-Vaart
7660114	Tichelrijt
7660115	Wildert
7660216	s Gravenmoer
7660217	Buitengebied s Gravenmoer
7700000	Eersel-kom en Lindeakkers
7700001	Molenakkers
7700002	Eersel-Zuid
7700003	De Dijken
7700004	Kortkruis
7700005	Bedrijventerrein Eersel
7700006	Molenveld en Schadewijk
7700007	Stokkelen en Hoogstraat
7700008	De Hees en Genderweg
7700009	Verspreide huizen Eersel
7700010	Kerkebogten
7700100	Duizel
7700101	De Donksbergen
7700102	Bedrijventerrein Duizel
7700109	Verspreide huizen Duizel
7700200	Steensel
7700209	Verspreide huizen Steensel
7700300	Vessem-kom
7700309	Verspreide huizen Vessem
7700400	Wintelre-kom
7700409	Verspreide huizen Wintelre
7700500	Knegsel-kom
7700501	Knegsel-Oeyenbos
7700509	Verspreide huizen Knegsel
7721110	Binnenstad
7721120	Bergen
7721130	Witte Dame
7721140	Fellenoord
7721150	TU-terrein
7722110	Irisbuurt
7722120	Rochusbuurt
7722130	Elzent-Noord
7722140	Tuindorp
7722150	Joriskwartier
7722160	Bloemenplein
7722170	Looiakkers
7722180	Elzent-Zuid
7722210	Kerstroosplein
7722220	Gerardusplein
7722230	Genneperzijde
7722240	Roosten
7722250	Eikenburg
7722260	Sportpark Aalsterweg
7722300	Puttense Dreef
7722310	Poeijers
7722320	Burghplan
7722330	Sintenbuurt
7722340	Tivoli
7722350	Gijzenrooi
7722360	Nieuwe Erven
7722370	Kruidenbuurt
7722380	Schuttersbosch
7722390	Leenderheide
7722399	Riel
7723110	Villapark
7723120	Lakerlopen
7723210	Doornakkers-West
7723220	Doornakkers-Oost
7723280	Tongelresche Akkers
7723330	Muschberg, Geestenberg
7723340	Urkhoven
7723350	t Hofke
7723360	Karpen
7723370	Koudenhoven
7724100	Limbeek-Zuid
7724110	Limbeek-Noord
7724120	Hemelrijken
7724130	Gildebuurt
7724140	Woenselse Watermolen
7724210	Woensel-West
7724220	Kronehoef
7724230	Barrier
7724240	Mensfort
7724250	Rapenland
7724260	Vredeoord
7724310	Generalenbuurt
7724320	Oude Toren
7724330	Hondsheuvels
7724340	Oude Gracht-West
7724350	Oude Gracht-Oost
7724360	Eckartdal
7725110	Driehoeksbos
7725120	Prinsejagt
7725130	Jagershoef
7725140	t Hool
7725150	Winkelcentrum
7725160	Vlokhoven
7725200	Kapelbeemd
7725210	Kerkdorp Acht
7725220	Achtse Barrier-Gunterslaer
7725230	Achtse Barrier-Spaaihoef
7725240	Achtse Barrier-Hoeven
7725310	Woenselse Heide
7725320	Tempel
7725330	Blixembosch-West
7725340	Blixembosch-Oost
7725350	Castiliëlaan
7725410	Eckart
7725420	Luytelaer
7725430	Vaartbroek
7725440	Heesterakker
7725450	Esp
7725460	Bokt
7726110	Eliasterrein, Vonderkwartier
7726120	Philipsdorp
7726130	Engelsbergen
7726140	Schouwbroek
7726150	Schoot
7726160	Strijp S
7726210	Hurk
7726220	Het Ven
7726230	Lievendaal
7726240	Drents Dorp
7726250	Zwaanstraat
7726260	Wielewaal
7726270	Herdgang
7726280	Mispelhoef
7726310	BeA2
7726320	Meerbos
7726330	Grasrijk
7726340	Zandrijk
7726350	Waterrijk
7726360	Park Forum
7726370	Flight Forum
7726380	Eindhoven Airport
7726390	Bosrijk
7726399	Meerrijk
7727110	Schrijversbuurt
7727120	Oude Spoorbaan
7727130	Hagenkamp
7727210	Genderdal
7727220	Blaarthem
7727230	Rapelenburg
7727240	Bennekel-Oost
7727250	Bennekel-West, Gagelbosch
7727260	Gennep
7727270	Beemden
7727310	Genderbeemd
7727320	Hanevoet
7727330	Ooievaarsnest
7770000	Centrum Oost 1
7770001	Centrum Oost 2
7770002	Centrum Oost 3
7770003	Centrum West 1
7770004	Centrum West 2
7770005	Het Hooghuis
7770100	Midden bedrijventerrein Vosdonk
7770200	Midden landelijk gebied
7771000	Noord 1
7771001	Noord 2
7771002	Noord 3
7771003	Noord 4
7771004	Baai 1
7771005	Baai 2
7771006	Baai 3
7771007	Baai 4
7771008	Sander-Banken 1
7771009	Sander-Banken 2
7771010	Sander-Banken 3
7771011	Sander-Banken 4
7771012	De Grient
7771013	De Keen
7771014	Attelaken
7771015	Schoenmakershoek
7771100	Bedrijventerrein Vossendaal
7771200	Noord landelijk gebied 1
7771201	Noord landelijk gebied 2
7771202	Noord landelijk gebied 3
7771203	Noord landelijk gebied 4
7772000	Banakkers 1
7772001	Banakkers 2
7772002	Banakkers 3
7772003	Banakkers 4
7772004	Grauwe Polder 1
7772005	Grauwe Polder 2
7772006	Grauwe Polder 3
7772007	Grauwe Polder 4
7772008	Grauwe Polder 5
7772009	Hoge Neerstraat
7772010	Centrum Zuid
7772011	De Streek
7772100	Zuid bedrijventerrein Vosdonk
7772200	Bedrijventerrein Trivium
7772300	Zuid landelijk gebied 1
7772301	Zuid landelijk gebied 2
7772302	Zuid landelijk gebied 3
7772303	Zuid landelijk gebied 4
7790000	Raamsdonksveer
7790001	Hooipolder en De Hoeven
7790002	Industrieterrein Dombosch
7790009	Verspreide huizen Raamsdonksveer
7790100	Raamsdonk
7790109	Verspreide huizen Raamsdonk
7790200	Geertruidenberg-Kom
7790201	Geertruidenberg-West
7790202	Geertruidenberg-Noord
7790203	Industrieterrein Dongeoever Amerkant
7790209	Verspreide huizen Geertruidenberg
7840000	Rijen
7840007	Bedrijventerrein Haansberg
7840009	Verspreide huizen Rijen
7840100	Gilze
7840107	Bedrijventerrein Broekakkers
7840109	Verspreide huizen Gilze
7840200	Molenschot
7840209	Verspreide huizen Molenschot
7840300	Hulten
7840309	Verspreide huizen Hulten
7850101	Goirle-Centrum
7850202	Grobbendonck
7850303	De Groote Akkers
7850304	De Leijzoom
7850405	De Hoogte
7850406	De Vallei
7850507	Abcoven
7850608	Wildackers
7850709	t Ven
7850710	Burgemeesters
7850811	Tilburgseweg
7850812	De Boschkens-West
7850813	De Boschkens-Oost
7850914	Vennen
7850915	Bomen
7850916	De Villa
7850917	Rivieren
7850918	Kruiden
7851019	De Nieuwe Erven
7851120	Hoogeind
7851121	Geestelijken
7851122	Herstallen
7851223	Sportpark Van den Wildenberg
7851324	Tijlvoort-Noort
7851325	Tijlvoort-Zuid
7851426	Verspreide huizen Goirle
7852027	Riel-Dorp
7852028	Spaansehoek
7852129	Bedrijventerrein Riel
7852230	Sportpark De Krim
7852331	Verspreide huizen Riel
7860539	Escharen kom
7860540	Buitengebied Oost
7860543	Buitengebied Westin Raam
7860736	Nieuw Velp
7860744	Buitengebied Zuid
7860750	De Eek industrieterrein
7860751	Buitengebied NoordRijksw
7860752	Oud Velp
7860842	Buitengebied Gassel
7860848	Gassel kom
7861337	Bikkelkamp
7861338	De Stoof
7861341	Zittert
7861345	Mars
7861346	Binnenstad
7861347	Wisseveld:industrieterrein
7861349	Estersveld
7880100	Haaren
7880101	t Eind
7880108	Verspreide huizen in het Westen
7880109	Verspreide huizen in het Oosten
7880110	Noenes
7880200	Helvoirt
7880201	Distelberg
7880207	Verspreide huizen Helvoirtse Heide
7880208	Verspreide huizen Brokkenbroek en Laar
7880209	Verspreide huizen Gijzel, Raam en Molenstraat
7880300	Esch
7880309	Verspreide huizen Esch
7880400	Biezenmortel
7880401	Huize Assisië
7880409	Verspreide huizen Biezenmortel
7941000	Centrum
7941002	Leonardus
7941003	Heipoort
7941004	Stationsgebied
7941005	Vossenberg
7941006	Annabuurt en Suytkade
7941007	Steenweg en omgeving
7941100	Beisterveld
7941101	Beisterveldse Broek
7941102	Straakven
7941200	Bloemvelden
7941201	Binderen
7941202	Eeuwsels
7941300	t Hout-Centrum
7941301	Kroon
7941302	Akkers
7941303	Gansenwinkel
7941309	Groot Goor
7941400	Brouwhuis-Dorp
7941401	Brouwhuis-West
7941402	Brouwhuis-Oost
7941404	Brouwhorst
7941409	Kloostereind
7941500	West
7941501	Houtsdonk
7941600	Oranjebuurt
7941601	Zwanenbeemd
7941609	Overbrug
7941700	Stiphout-Dorp
7941701	Schooten
7941709	Geeneind
7941801	Rijpelberg-Oost
7941802	Rijpelberg-West
7941809	Berkendonk
7941900	Kern Dierdonk
7941909	Scheepstal
7942100	Brand
7942101	De Veste
7942102	Schutsboom
7942103	Stepekolk
7942104	Berenbroek
7942105	De marke
7942901	Hoogeind
7942902	BZOB
7960101	Binnenstad-Centrum
7960102	Binnenstad-Oost
7960103	De Hofstad
7960104	Binnenstad-Noord
7960105	Het Zand
7960106	Vughterpoort
7960201	Het Bossche Broek
7960202	Zuid
7960203	Bazeldonk
7960204	Bedrijventerrein-Zuid
7960205	De Gestelse Buurt
7960206	Pettelaarpark
7960207	De Meerendonk
7960208	Kloosterstraat
7960209	De Bossche Pad
7960210	Grevelingen
7960211	Aawijk-Zuid
7960212	Bedrijvenpark De Brand
7960301	De Hinthamerpoort
7960302	Graafsebuurt-Zuid
7960303	Aawijk-Noord
7960304	Graafsebuurt-Noord
7960305	Hintham-Zuid
7960306	Hintham-Noord
7960401	De Muntel
7960402	De Vliert
7960403	Orthenpoort
7960501	Maliskamp-West
7960502	Maliskamp-Oost
7960503	Het Vinkel
7960504	Binckhorst
7960505	Sparrenburg
7960506	Molenhoek
7960507	A2 zone Rosmalen-Zuid
7960601	t Ven
7960602	Rosmalen-Centrum
7960603	Hondsberg
7960604	Kruisstraat
7960605	Bedrijventerrein Kruisstraat
7960606	De Overlaet-Oost
7960607	De Overlaet-West
7960608	A2 zone Rosmalen-Noord
7960609	Rosmalense Polder
7960701	Brabantpoort
7960702	De Groote Vliet
7960703	Vlietdijk
7960704	Broekland
7960705	De Watertuinen
7960706	De Hoven
7960707	De Lanen
7960798	Overig Landelijk gebied De Groote Wielen
7960799	Landelijk gebied De Groote Wielen
7960801	Kom Empel
7960802	Maasakker
7960803	Empel-Oost
7960804	De Koornwaard
7960901	De Buitenpepers
7960902	De Herven
7960903	Bedrijventerrein De Herven
7960904	De Slagen
7960905	De Haren
7960906	De Reit
7960907	De Donk
7960908	De Rompert
7960909	De Hambaken
7960910	De Sprookjesbuurt
7960911	De Muziekinstrumentenbuurt
7960912	De Edelstenenbuurt
7960913	Orthen
7960914	Orthen-West
7960915	Bedrijventerrein-Noord
7961001	De Italiaanse Buurt
7961002	Maasdal
7961003	Abdijenbuurt
7961004	Lokeren
7961005	Maasstroom
7961006	De Staatsliedenbuurt
7961007	Het Zilverpark
7961008	Maasvallei
7961009	Maasoever
7961010	Bedrijventerrein Maaspoort
7961011	Oud Empel
7961101	Boschveld
7961102	Paleiskwartier
7961103	Willemspoort
7961104	Deuteren
7961105	De Moerputten
7961106	De Schutskamp
7961107	De Kruiskamp
7961108	De Rietvelden-Oost
7961109	De Rietvelden-West
7961110	Veemarktkwartier
7961111	Ertveld
7961201	Kom Engelen
7961202	De Vutter
7961203	Henriëttewaard
7961204	De Haverleij
7961205	Bokhoven
7961206	Engelermeer
7961301	Kom Nuland
7961302	Bedrijventerrein Nuland
7961303	De Lage Kant
7961304	Heeseind
7961399	Landelijk gebied Nuland
7961401	Kom Vinkel
7961402	Vinkeloord
7961499	Landelijk gebied Vinkel
7970101	Braken-West
7970102	Braken-Oost
7970103	Centrum Drunen
7970104	Venne-West
7970105	Venne-Oost
7970200	Elshout
7970300	Haarsteeg
7970400	Nieuwkuijk
7970501	Vijfhoeven
7970502	Vlijmen-Dorp
7970503	Vliedberg
7970600	Doeveren
7970700	Hedikhuizen
7970800	Heesbeen
7970900	Herpt
7971000	Heusden
7971100	Oudheusden
7980000	Hilvarenbeek
7980009	Verspreide huizen Hilvarenbeek
7980100	Esbeek
7980109	Verspreide huizen Esbeek
7980200	Biest-Houtakker
7980209	Verspreide huizen Biest-Houtakker
7980300	Diessen
7980301	Baarschot
7980309	Verspreide huizen Baarschot
7980400	Haghorst
7980409	Verspreide huizen Haghorst
8091001	Draaiboom
8091005	Hil noord
8091006	Hil zuid
8091010	Pannenhoef west
8091011	Pannenhoef oost
8091015	Bloemenbuurt
8091020	Centrum
8091021	Schrijversbuurt
8091025	Staatsliedenbuurt
8091030	Vossenberg west
8091031	Vossenberg oost
8091035	De Kets industrieterrein
8091040	De Zandschel
8091041	De Baan
8092045	Heikant
8092048	Els west
8092049	Els oost
8092052	Rooi Dorp
8092055	Loonse Vaart
8092058	De Oude Omdraaier
8092061	Prinsessenbuurt
8092063	Het Hoekske
8092066	De Klinkenpolder
8093070	Oud-Loon
8093071	Mussenhoek
8093080	Molenwijk noord
8093081	Molenwijk zuid
8093085	De Hoogt Industrieterrein
8093090	Bergeind
8093091	Oost-Loon
8093092	De Plakken
8094095	De Moer
8150921	Mill-Centrum
8150922	Mill-West
8150923	Brugse Berg
8150924	Mill-Zuid
8150925	Bedrijventerrein Het Spoor
8150926	Bedrijventerrein De Meeren
8150927	Verspreide huizen Groespeel
8150928	Verspreide huizen Achterdijk-Roijendijk
8150929	Verspreide huizen Meren-De Gagel
8151032	Sint Hubert
8151033	Verspreide huizen Sint Hubert
8151234	Wilbertoord
8151235	Verspreide huizen Wilbertoord
8151530	Langenboom
8151531	Verspreide huizen Langenboom
8200000	Nuenen-Noord
8200001	Nuenen-Zuid
8200002	Nuenen-Oost
8200003	Eeneind
8200008	Verspreide huizen Boord, Opwetten
8200009	Verspreide huizen ten zuidoosten van Nuenen
8200100	Gerwen
8200109	Verspreide huizen Gerwen
8200200	Nederwetten
8200209	Verspreide huizen Nederwetten
8230000	Oirschot-Centrum
8230001	Oirschot Noordoost
8230002	De Notel
8230003	Industrieterrein De Stad
8230004	Snepseind en Bijsterveld
8230005	Straten met Moleneind
8230008	Verspreide huizen Zuid-Oirschotse Heide
8230009	Verspreide huizen Noord en De Mortelen
8230100	Spoordonk
8230109	Verspreide huizen Spoordonk
8230200	Middelbeers
8230208	Verspreide huizen Westelbeers
8230209	Verspreide huizen Middelbeers
8230300	Oostelbeers
8230309	Verspreide huizen Oostelbeers
8240101	Versprh westen en noorden Moerg
8240201	Omg Pannenschuur-Centrum
8240202	Omg BejCentrumenMolen
8240301	Heukelom
8240401	Buitengebied Zuid
8240402	Buitengebied de Logt
8240501	Omg VinkenbergenHeuvelstraat
8240601	Omgeving George Perklaan
8240701	Centrum Moergestel
8240801	Omg t Seuverick
8240802	Omg t Westend
8240803	Omg "Prinsessen"-wijk
8240901	Omg EuropalnenHondsbergseln
8240902	Omg LevenskerkenBoomgaard
8240903	Omg Bunders
8240904	Omg DotterplnenWildemanstr
8241001	Buitengebied Kerkhoven
8241102	Omg "Burghtweide"
8241103	Omg KlompvenenEikenven
8241104	Omg BoxtelsebnenWaterhoef
8241201	Omgeving Industrieterrein
8241301	Omg Petrus-Kerk
8241302	Omg De LindenKerkstr
8241402	Versprh oosten en zuiden Moerg
8241501	Omg Broekzijde
8260000	Centrum
8260100	Slotjes-Oost
8260101	Slotjes-Midden
8260102	Slotjes-West
8260200	Oud-West
8260201	Kanaleneiland
8260300	Vogelbuurt
8260301	Kastelenbuurt
8260400	Leijsenakkers
8260401	Molenbuurt
8260500	Bloemenbuurt
8260501	Schrijversbuurt
8260502	Natuurkundigenbuurt
8260503	Componistenbuurt
8260504	De Warande
8260505	Paterserf
8260600	Kruidenbuurt
8260601	Sterrenbuurt
8260602	Donkenbuurt
8260603	Larenbuurt
8260604	Beemdenbuurt
8260605	Schildersbuurt
8260606	Dammenbuurt
8260607	Staatsliedenbuurt
8260700	Vrachelen-Zuidoost
8260701	Vrachelen-Noord
8260702	Vrachelen-Zuidwest
8260703	Vrachelen-Noordwest
8260800	Industrieterrein Vijf Eiken
8260801	Industrieterrein Heikant
8260900	Industrieterrein Statendam
8260901	Industrieterrein Weststad-Zuid
8260902	Industrieterrein Weststad-Noord
8261000	Oranjepolder
8261001	Bosgebied-Oosterhout
8261100	Den Hout
8261109	Buitengebied Den Hout
8261200	Oosteind
8261208	Buitengebied-Oosteind-Zuid
8261209	Willemspolder
8261300	Dorst
8261307	Buitengebied Dorst-Zuid
8261308	Bosgebied Dorst
8261309	Steenoven
8280000	Centrum-West
8280001	Centrum-Noord
8280002	Centrum-Zuid
8280100	Verzetsheldenbuurt I
8280101	Berghemseweg-Zuid
8280102	Verzetsheldenbuurt II
8280103	Vogelbuurt
8280104	Roofvogelbuurt
8280105	Schadewijk Noord-Oost
8280106	De Horzak
8280200	Moleneind
8280201	Landweer
8280202	Danenhoef
8280300	Kortfoort
8280301	Oranjebuurt I en Ruivert
8280302	Zeeheldenbuurt I
8280303	Zeeheldenbuurt II
8280304	Bomenbuurt
8280305	Oranjebuurt II
8280306	Willibrordusweg-Oost
8280307	Willibrordusweg-West
8280400	Oorlogsheldenbuurt
8280401	Hertogenbuurt
8280402	Mettegeupel
8280403	De Noord
8280404	Rusheuvel
8280500	Elzenburg
8280501	De Winkel
8280502	Hooimeer
8280503	De Geer
8280600	Staatsliedenbuurt
8280601	Van Hogendorplaan-West
8280602	Dichtersbuurt
8280603	Wagenaarstraat en omgeving
8280604	Vondellaan-Zuid
8280605	Euterpelaan-Noord
8280606	Beethovengaarde en Lisztgaarde
8280607	Witte Hoef
8280608	Het Woud
8280700	Vlashoek
8280701	Heihoek
8280702	Hoefeind
8280703	Amsteleind
8280704	Hazenkamp
8280705	Loovelt
8280706	Lockaert
8280707	Westerveld
8280708	Klein Mikkeldonk
8280709	Schalkskamp
8280806	Meerdijk
8280807	Frankenbeemd
8280808	Langendonk
8280809	Buitengebied-West
8280905	Geffense Bosjes
8280906	De Tillaard en De Elzen
8280907	De Haag
8280908	Vierwinden
8280909	Vorstengraf
8281000	Berghem-Noord
8281001	Berghem-Zuid
8281007	Buitengebied Duurendseind
8281008	Buitengebied Voorste en Achterste Heide
8281009	Buitengebied Gement
8281100	Haren
8281108	Buitengebied Stijbeemden
8281109	Buitengebied Ossekampen
8281200	Macharen
8281208	Buitengebied Harense Broek
8281209	Buitengebied De Tuinlangel
8281300	Megen
8281308	Buitengebied Maasakker
8281309	Buitengebied De Waarden
8281400	Ravenstein
8281401	De Kolk, Schonenberg en De Weem
8281403	Huisseling
8281404	De Bulk
8281409	Buitengebied Ravenstein en Huisseling
8281500	Herpen
8281508	Koolwijk en Bossen
8281509	Buitengebied Herpen
8281600	Overlangel
8281601	Neerloon
8281609	Keent
8281700	Deursen en Dennenburg
8281701	Dieden
8281702	Demen
8281703	Neerlangel
8281709	Buitengebied Deursen en Dennenburg
8281800	Lith
8281808	De Lithse Ham
8281809	Buitengebied Lith
8281900	Lithoijen
8281901	Teeffelen
8281908	Buitengebied Teeffelen
8281909	Buitengebied Lithoijen
8282000	Oijen
8282009	Buitengebied Oijen
8282100	Maren-Kessel
8282101	Maren
8282102	Kessel
8282103	t Wild
8282109	Buitengebied het Laag Heemaal
8282200	Geffen
8282201	Runrot en Papendijk
8282208	Buitengebied ten oosten van Geffen
8282209	Buitengebied ten noorden van Geffen
8400000	Rucphen
8400009	Verspreide huizen Rucphen
8400100	Sint Willebrord
8400109	Verspreide huizen Sint Willebrord
8400200	Sprundel
8400201	Bedrijventerrein De Nijverhei
8400209	Verspreide huizen Sprundel
8400300	Schijf
8400309	Verspreide huizen Schijf
8400400	Zegge
8400409	Verspreide huizen Zegge
8450000	Sint-Michielsgestel
8450001	Theereheide
8450002	Venkant, Beekkant en Beekvliet
8450003	Halder
8450007	Verspreide huizen Theereheide en Zegenwerp
8450008	Verspreide huizen Genenberg
8450009	Verspreide huizen Sint-Michielsgestelse polders
8450100	Gemonde
8450108	Verspreide huizen ten oosten van Gemonde
8450109	Verspreide huizen ten westen van Gemonde
8450200	Den Dungen
8450201	Maaskantje
8450207	Verspreide huizen Spurk en t Woud
8450208	Verspreide huizen Poeldonk
8450209	Verspreide huizen Maaskantje
8450300	Berlicum
8450301	Westakkers
8450302	Westerbroek en Beekveld
8450308	Verspreide huizen Beekveld-Hersend
8450309	Verspreide huizen ten noorden van Berlicum
8450400	Middelrode
8450408	Verspreide huizen Middelrode
8450409	Verspreide huizen Heikantse Hoeve
8470000	Someren
8470008	Verspreide huizen Hoeven
8470009	Verspreide huizen Slieven
8470100	Lierop
8470108	Verspreide huizen Meerven
8470109	Verspreide huizen Hersel
8470200	Someren-Eind
8470208	Verspreide huizen Sluis 12en13
8470209	Verspreide huizen Diepenhoek
8470300	Somerense Heide
8470309	Verspreide huizen Somerense Heide
8470909	Verspreide huizen Lungendonk
8480000	Son
8480001	De Gentiaan
8480002	Industrieterrein Ekkersrijt
8480003	t Zand
8480009	Verspreide huizen Son
8480100	Breugel
8480101	t Eigen en Hoogstraat
8480109	Verspreide huizen Breugel
8510000	Steenbergen-Centrum
8510001	Welberg
8510002	Steenbergen-Zuid
8510003	Steenbergen-Noord
8510004	Industrieterrein Reinierpolder
8510007	Graaf Hendrik- en Triangelpolder
8510008	Westelijke polders
8510009	Het Oudland
8510100	Kruisland
8510109	Kruislandse polders
8510200	De Heen
8510209	Heense polders
8510300	Dinteloord
8510301	Boompjesdijk
8510308	Verspreide huizen in het Oosten
8510309	Verspreide huizen in het Westen
8510400	Nieuw-Vossemeer
8510409	Verspreide huizen waaronder Pelsendijk en Rolaf
8520000	Monnickendam
8520001	Oranjewijk
8520002	Markgouw
8520003	Ringshemmen
8520004	Ooster Ee
8520005	t Spil
8520006	Binnengouw
8520007	Buitengouw
8520009	Verspreide huizen
8520010	De Purmer gedeeltelijk
8520100	Katwoude
8520200	Havenbuurt en Kerkbuurt
8520201	Verspreide huizen Op de Werven ten zuiden van kanaal
8520300	Broek in Waterland
8520301	Zuiderwoude
8520302	Uitdam
8520400	Ilpendam
8520401	De Purmer gedeeltelijk
8520500	Watergang
8551001	Binnenstad West
8551002	Binnenstad Oost
8551003	Koningsplein
8551004	Oude Dijk
8551101	Veemarktkwartier
8551102	Tivoli
8551103	Hoogvenne Oost
8551104	Hoogvenne West
8551105	Piushaven
8551201	Armhoef Noord-West
8551202	Armhoef Noord-Oost
8551203	Armhoef Zuid
8551301	Jeruzalem Noord
8551302	Jeruzalem Zuid
8551401	Fatima West
8551402	Fatima Oost
8551403	Fatima Noord
8551404	Bedrijventerrein AaBe
8551405	Hoevenseweg
8551501	Broekhoven I West
8551502	Broekhoven I
8551503	Voltterrein
8551504	Broekhoven II West
8551505	Broekhoven II Oost
8551601	Afrikaanderbuurt West
8551602	Afrikaanderbuurt Midden
8551603	Afrikaanderbuurt Oost
8551604	Zeeheldenbuurt
8551701	Kromhoutpark
8551702	Westend
8551703	Schildersbuurt Noord
8551704	Schildersbuurt Zuid
8551705	Schrijversbuurt
8551706	Staatsliedenbuurt Oost
8551707	Het Laar
8551801	Trouwlaan
8551802	Uitvindersbuurt
8551901	Sint Anna Noord
8551902	Sint Anna Zuid
8552001	Bomenbuurt West
8552002	Bomenbuurt Midden
8552003	Bomenbuurt Oost
8552101	VGL-terrein
8552102	Talentsquare
8552103	Spoorlaan
8552201	Bouwmeestersbuurt Noord
8552202	Bouwmeestersbuurt Zuid
8552301	Textielbuurt West
8552302	Textielbuurt Oost
8552303	Nassaubuurt
8552304	Kasteel West
8552305	Kasteel Oost
8552401	Goirke Noord
8552402	Pastorieklamp West
8552403	Pastorieklamp Oost
8552501	Sint Pieterspark
8552502	Hoefstraat Noord
8552503	Padua
8552504	Hoefstraat Zuid
8552601	Besterd
8552602	Rosmolen
8552603	Loven Noord
8552604	Loven Zuid
8552605	Loven Oost
8552701	Theresia West
8552702	Theresia Midden
8552703	Theresia Oost
8552801	Spoorzone Noord-West
8552802	Spoorzone Noord-Oost
8552901	Smariusterrein
8552902	Indterrein Kanaalzone Noord
8552903	Indterrein Kanaalzone Noord-Oost
8552904	Melis Stokestraat
8552905	Indterrein Kanaalzone Oost
8552906	Indterrein Kanaalzone Zuid
8552907	Kanaalzone Bosscheweg
8553001	Moerenburg
8553101	Leijpark
8553102	Koningshoeven
8553103	Elisabethziekenhuis
8553104	Leijhoeven
8553201	Ezelvense Akkers
8553202	Landbouwbuurt
8553203	Vogeltjesbuurt West
8553204	Vogeltjesbuurt Oost
8553205	Visserijbuurt
8553206	Groenewoud Oost
8553207	Groenewoud Midden
8553208	Groenewoud West
8553209	Groenewoud Zuid
8553301	Stappegoor Noord
8553302	Zuiderpark
8553303	Stappegoor Zuid
8553401	Bedrijventerrein Het Laar
8553402	Goirleseweg West
8553501	De Blaak Noord-West
8553502	De Blaak Noord-Oost
8553503	De Blaak Zuid-West
8553504	De Blaak Zuid-Oost
8553601	Friezenlaan
8553602	Burgemeestersbuurt
8553603	Staatsliedenbuurt West
8553701	Universiteit
8553702	Abdij- en Torenbuurt
8553703	Universiteit Campus
8553704	Kastelenbuurt Noord
8553705	Kastelenbuurt Zuid
8553706	Sportweg
8553707	Notre Dame
8553801	Tweestedenziekenhuis
8553802	Het Zand Noord-West
8553803	Het Zand Noord-Oost
8553804	Jagersbuurt West
8553805	Jagersbuurt Oost
8553806	Luchthavenbuurt West
8553807	Luchthavenbuurt Oost
8553808	Westermarkt
8553809	Tiendschuur
8553810	Vijverlaan
8553811	Station Universiteit
8553812	Bokhamer West
8553813	Bokhamer
8553814	Rooi Pannen
8553901	Wandelbos Noord-West
8553902	Kruidenbuurt West
8553903	Kruidenbuurt Oost
8553904	Kruidenbuurt Zuid
8553905	Kleurenbuurt Noord
8554001	Het Wandelbos en Drijflanen
8554002	Auteursbuurt
8554003	Kleurenbuurt Zuid
8554101	De Oude Warande
8554201	Stokhasselt Noord-West
8554202	Stokhasselt Noord-Oost
8554203	Stokhasselt West
8554204	Stokhasselt Oost
8554205	Stokhasselt Zuid-West
8554206	Stokhasselt Zuid-Oost
8554207	Stokhasselt Zuid
8554301	Heikant Noord-West
8554302	Heikant Noord-Oost
8554303	Heikant West
8554304	Heikant Oost
8554305	Heikant Zuid-West
8554306	Heikant Zuid-Oost
8554307	Lijnse Hoek West
8554308	Lijnse Hoek Oost
8554401	Quirijnstok Noord-West
8554402	Quirijnstok Noord-Oost
8554403	Quirijnstok West
8554404	Quirijnstok Zuid-West
8554405	Quirijnstok Zuid-Oost
8554406	Quirijnstokpark
8554501	Indterrein Loven Noord
8554502	Indterrein Loven Zuid
8554601	Bosscheweg
8554701	Moerse Dreef
8554702	Gesworen Hoek West
8554703	Gesworen Hoek Zuid
8554704	Gesworen Hoek Oost
8554801	Huibeven West
8554802	Huibeven Midden
8554803	Huibeven Oost
8554804	Huibeven Zuid
8554901	Campenhoef West
8554902	Campenhoef Midden
8554903	Campenhoef Oost
8555001	Heyhoef
8555101	Heerevelden West
8555102	Heerevelden Oost
8555201	Dongewijk Noord
8555202	Dongewijk Zuid
8555301	De Kievit Noord-West
8555302	De Kievit Noord-Oost
8555303	De Kievit Zuid-West
8555304	De Kievit Zuid-Oost
8555401	Lange Rekken
8555402	Reeshofweide
8555403	Dalemweide
8555404	Leeuwerik West
8555405	Leeuwerik Midden
8555406	Leeuwerik Oost
8555407	Leeuwerik Zuid
8555501	Dalem Noord I
8555502	Dalem Noord II
8555503	Stadsrand Dalem Noord
8555601	Dalem Zuid I
8555602	Dalem Zuid II
8555603	Stadsrand Dalem Zuid
8555701	Koolhoven Noord
8555702	Koolhoven Zuid
8555703	Koolhoven Buiten
8555704	Buitengebied Koolhoven
8555705	Koolhoven Oost
8555801	Witbrant West
8555802	Witbrant Oost
8555803	Buitengebied Witbrant
8555901	Buitengebied Kraaiven West
8555902	Buitengebied Kraaiven Oost
8555903	Bedrijventerrein Kraaiven West
8555904	Bedrijventerrein Kraaiven
8555905	Bedrijventerrein Kraaiven PDV
8556001	Bedrijventerrein Vossenberg West II
8556002	Bedrijventerrein Vossenberg West I
8556003	Bedrijventerrein Vossenberg Scheg
8556004	Bedrijventerrein Vossenberg
8556005	Bedrijventerrein Vossenberg Scheg Oost
8556006	Bedrijventerrein Vossenberg PDV
8556007	Bedrijventerrein Albion
8556101	De Katsbogten
8556102	Tradepark 58 Noord
8556103	Tradepark 58 Zuid
8556202	Buitengebied Zuid-Oost
8556301	Wijkevoort
8556302	Buitengebied Gilzerbaan West
8556303	Buitengebied Gilzerbaan Oost
8556304	Amarant Piusoord
8556401	Buitengebied Noord-Oost
8556402	Rugdijk-Hazennest
8556403	Oostkamer West
8556501	Buitengebied Noord-West
8556601	Bedrijventerrein Schepersven
8556602	Oostkamer Oost
8556603	Buitengebied B-E Noord-West
8556604	Buitengebied B-E Noord-Oost
8556605	Bedrijventerrein Rhijnkant
8556606	Berkel Noord
8556607	Berkelse Akkers
8556608	Ruiven
8556609	Eikenbosch
8556610	Koningsoord
8556611	Rauwbraken
8556612	Enschot Oost
8556613	Enschot Midden
8556614	Enschotse Akkers
8556615	Bedrijventerrein Enschot
8556616	Enschot West
8556617	Enschot Zuid
8556618	Buitengebied B-E Zuid-West
8556619	Buitengebied B-E Zuid-Oost
8556620	Buitengebied B-E Zuid
8556701	Groenstraat
8556702	Achthoeven
8556703	Den Bogerd
8556704	De Mortel
8556705	De Kuil
8556706	Zeshoeven
8556707	Bedrijventerrein Kreitenmolen
8556708	Buitengebied Udenhout Zuid-Oost
8556709	Buitengebied Udenhout Zuid-West
8556710	Buitengebied Udenhout Noord
8560101	Centrum
8560102	Bogerd-Vijfhuis
8560103	Moleneind-Groenewoud
8560104	Flatwijk
8560105	Bitswijk
8560106	Hoevenseveld
8560107	Schutveld
8560108	Buurtschap Hoeven
8560109	Hoeven
8560110	Melle
8560111	Raam
8560112	Sportpark Volkelseweg
8560113	Zoggel
8560114	Vluchtoord
8560115	Loopkant-Liessent-Goorkens
8560116	Hoenderbos-Velmolen
8560117	Eikenheuvel
8560196	Buitengebied Uden-Oost
8560197	Buitengebied Uden-Zuid
8560198	Buitengebied Uden-West
8560199	Buitengebied Maashorst
8560201	Kom Volkel
8560298	Vliegbasis Volkel
8560299	Buitengebied-Volkel
8560301	Odiliapeel
8560399	Buitengebied-Odiliapeel
8580000	Centrum
8580001	Geenhoven
8580002	Turfberg-Noord
8580003	Turfberg-Zuid
8580004	Hoge Akkers
8580005	Kerkakkers
8580006	Het Gegraaf
8580007	Industrieterrein Schaapsloop
8580009	Verspreide huizen Turfbergse Heide Nederheide
8580100	De Belleman
8580101	Agnetendal
8580102	Schepelweijen
8580103	Brouwershof
8580104	Keersop
8580105	Keersopperbeemden
8580106	Dommelen
8580200	Borkel
8580201	Schaft
8580208	Verspreide huizen Klein Borkel en Achterste Brug
8580209	Verspreide huizen Malpiebergse- en Opperheide
8610000	Veldhoven
8610001	Meerveldhoven
8610002	Zeelst
8610003	DEkker
8610004	Zonderwijk
8610005	t Look
8610006	Cobbeek en Centrum
8610009	Verspreide huizen ten zuiden van de E3-weg
8610100	Heikant-West
8610101	Heikant-Oost
8610102	De Kelen
8610103	De Polders
8610200	Oerle
8610201	Zandoerle
8610207	Verspreide huizen Zittard
8610208	Verspreide huizen Groote Aard en Vliet
8610209	Verspreide huizen Scherpenering en Landsaard
8650000	Centrum
8650001	Taalstraat en omgeving
8650002	Loyola en omgeving
8650003	Loonsebaan
8650004	Villapark
8650005	Schoonveld
8650008	Vughtse Heide en Lunetten
8650009	Gement
8650100	Voorburg en omgeving
8650101	Molenstraat en omgeving
8650102	De Baarzen
8650103	Vijverhof
8650104	De Vughtse Hoeven
8650108	Bleijendijk
8650109	Bergenshuizen
8650200	Cromvoirt
8650209	Verspreide huizen Cromvoirt
8660000	Waalre
8660001	Aalst
8660002	Voldijn
8660003	Ekenrooi
8660009	Verspreide huizen
8670000	Centrum
8670001	Besoijen
8670002	Baardwijk
8670003	Laageinde
8670004	Antoniusparochie
8670005	Bloemenoord
8670006	Zanddonk
8670007	Meerdijk
8670008	De Hoef
8670009	Industrieterrein Zanddonk
8670010	Industrieterrein Haven
8670011	Buitengebied Waalwijk Noord
8670012	Eikendonk
8670013	Recreatieoord
8670100	Sprang
8670101	Vrijhoeve
8670102	Capelle en Nieuwe Vaart
8670103	Buitengebied Capelle
8670104	Landgoed Driessen
8670200	Waspik Beneden
8670201	Waspik Boven
8670202	Industrieterrein Waspik
8670203	Buitengebied Waspik
8730000	Hoogerheide
8730001	Woensdrecht
8730002	Hoogerheide-Noord
8730003	Industrieterrein De Kooy
8730008	Verspreide huizen Woensdrecht
8730009	Verspreide huizen Hoogerheide
8730100	Huijbergen
8730101	Eiland
8730108	Verspreide huizen ten zuiden van Huijbergen
8730109	Verspreide huizen ten noorden van Huijbergen
8730200	Ossendrecht
8730201	Calfven
8730208	Verspreide huizen ten westen van Ossendrecht
8730209	Verspreide huizen ten oosten van Ossendrecht
8730300	Putte
8730309	Verspreide huizen Putte
8790000	Zundert
8790009	Verspreide huizen Zundert
8790100	Klein-Zundert
8790109	Verspreide huizen Klein-Zundert
8790200	Wernhout
8790209	Verspreide huizen Wernhout
8790300	Achtmaal
8790309	Verspreide huizen Achtmaal
8790400	Rijsbergen
8790408	Verspreide huizen in het Oosten
8790409	Verspreide huizen in het Westen
8800000	Oosteinde
8800001	Westeinde
8800002	Oost-Knollendam
8800003	Molenbuurt
8800004	Plaszoom
8800005	Middentil
8800009	Verspreide huizen in de polder Engewormer
8800100	Neck gedeeltelijk
8800108	Verspreide huizen ten zuiden van De Middentocht
8800109	Verspreide huizen ten noorden van De Middentocht
8800200	Jisp
8800201	Uitbreiding-Jisp
8800208	Spijkerboor
8800209	Verspreide huizen Kanaal- en Oudelandsdijk
8820001	Kakert
8820002	Lichtenberg
8820003	De Dormig
8820004	De Streep
8820005	Klinkerkwartier
8820006	Achter de Haesen
8820007	Leenhof
8820008	Schaesberg Centrum
8820009	Achter den Winkel
8820010	Mijnbuurt
8820011	Eiske
8820012	Heistraat
8820020	Gravenrode
8820101	Nieuwenhagerheide
8820102	Oud Nieuwenhagen
8820103	Hoefveld
8820104	Op de Kamp
8820105	Exdel
8820120	Buitengebied Brunssumerheide 2
8820201	Abdissenbosch
8820202	Parkheide
8820203	Namiddagsche Driessen
8820204	Lauradorp
8820205	Waubach
8820206	Groenstraat
8820207	Rimburg
8820220	Brunssumerheide 1
8880000	Beek
8880001	Neerbeek
8880002	Spaubeek
8880100	Geverik
8880101	Grootgenhout
8880102	Kleingenhout
8880103	Kelmond
8880109	Verspreide huizen Vliegbasis Zuid-Limburg
8890000	Reuver
8890001	Offenbeek
8890008	Verspreide huizen ten oosten en zuiden van de spoorlijn
8890009	Overige verspreide huizen
8890100	Beesel
8890101	Bussereind
8890102	Rijkel
8890109	Verspreide huizen
8930110	Aijen Kern
8930111	Aijen Buitengebied
8930220	Oud-Bergen Kern
8930221	Oud-Bergen Buitengebied
8930330	Nieuw-Bergen Kern
8930331	Nieuw-Bergen Buitengebied
8930332	Nieuw-Bergen De Flammert
8930440	Afferden Kern
8930441	Afferden Buitengebied
8930550	Siebengewald Kern
8930551	Siebengewald Buitengebied
8930660	Well-Oost
8930661	Well-West
8930662	Well Buitengebied
8930770	Wellerlooi Kern
8930771	Wellerlooi Buitengebied
8990124	Klingelsberg
8990126	Op de Vos
8990134	Treebeek-Zuid
8990135	Emma
8990136	Amstenraderveld
8990144	Treebeek-Noord
8990201	Houserveld
8990202	Klingbemden
8990203	Rozengaard
8990204	De Kling
8990205	Op den Haan
8990207	Lemmender
8990208	De Streek
8990209	Het Heufken
8990225	Bexdelle
8990242	Merkelbeekerdal
8990243	Buitengebied
8990314	Rode Beek
8990315	Op gen Hoes
8990316	Oeloven
8990317	De Eggen
8990318	Schuttersveld
8990332	De Kattekoelen
8990333	Bouwberg
8990337	Ora et Labora
8990339	Hendrik en omgeving
8990340	De Heide
8990345	Kleikoelen
8990428	Vondelstraat
8990429	Langenberg
8990430	De Struiken
8990431	Douvenberg
8990438	Brandenberg
8990441	Brunssumer Heide
8990506	Hofpoel
8990510	Op de Vaard
8990511	Koutenveld
8990512	Centrum
8990513	Kerkeveld
8990519	Kruisberg
8990520	Achter de Put
8990521	Haansberg
8990522	Vijverpark
8990523	Rumpener Beemden
8990527	De Hemelder
9070000	Milsbeek
9070001	Sprokkelveld
9070009	Bloemenstraat-Zwarteweg
9070100	Ottersum
9070108	Aaldonk-Violenberg
9070109	Looierheide
9070200	Ven-Zelderheide
9070209	Langehorst-Zelder
9070300	Oude Stadskern
9070301	Noord
9070302	Midden
9070303	Zuid
9070309	Panoven-Maaskemp
9070400	Heijen
9070408	Heijensebos
9070409	Diekendaal-Nieuwerf
9171000	Maria Gewanden
9171001	Terschuren
9171100	Mariarade-Noord
9171101	Mariarade-Zuid
9171200	Hoensbroek-Centrum
9171201	De Dem en omgeving
9171300	Nieuw Lotbroek-Noord
9171301	Nieuw Lotbroek-Zuid
9171400	De Koumen
9172000	Weggebekker
9172001	Uterweg
9172002	Nieuw-Einde
9172003	Versiliënbosch
9172004	Vrieheide
9172100	Passart
9172101	Heerlerheide Kom
9172200	Heksenberg
9172201	Pronsebroek
9172300	Verspreide huizen
9172400	Groot Rennemig
9172401	Beersdal
9172402	Schelsberg
9173000	Husken
9173001	Zeswegen
9173002	In de Cramer
9173100	Musschemig
9173101	Grasbroek
9173102	Schandelen
9173103	Hoppersgraaf
9173200	Palemig
9173201	Burettestraat en omgeving
9173202	Meezenbroek
9173203	Schaesbergerveld
9173300	Heerlen-Centrum
9173301	Op de Nobel
9173302	t Loon
9173303	Lindeveld
9173400	Eikenderveld
9173500	Ten Esschen
9173600	Terworm
9173601	Welten-Dorp
9173602	Ziekenhuis
9173603	Benzenrade
9173700	Bekkerveld
9173701	Aarveld
9173800	Caumerveld
9173801	Douve Weien
9173900	Molenbergpark
9173901	Dr Nolensplein en omgeving
9173902	Dr Schaepmanplein en omgeving
9173903	Schiffelerveld
9174000	Heerlerbaan-Oost
9174100	Egstraat en omgeving
9174101	Giezenveld
9174102	Heerlerbaan-West
9174103	Imstenrade
9174200	Beitel
9280000	Spekholzerheide
9280001	Heilust
9280002	Terwinselen
9280003	Kaalheide
9280004	Gracht
9280009	Verspreide huizen Dentgenbach
9280100	Kerkrade-Centrum
9280101	Erenstein
9280102	Rolduckerveld
9280103	Holz
9280104	Nulland
9280105	Bleijerheide
9280200	Eygelshoven-Kom
9280201	Hopel
9280202	Waubacherveld
9280203	Vink
9280204	Chevremont
9280205	Haanrade
9350000	Binnenstad
9350001	Jekerkwartier
9350002	Kommelkwartier
9350003	Statenkwartier
9350004	Boschstraatkwartier
9350005	Sint Maartenspoort
9350006	Wyck
9350100	Villapark
9350101	Jekerdal
9350102	Biesland
9350103	Campagne
9350104	Wolder
9350105	Sint Pieter
9350200	Brusselsepoort
9350201	Mariaberg
9350202	Belfort
9350203	Pottenberg
9350204	Malpertuis
9350205	Caberg
9350206	Oud-Caberg
9350207	Malberg
9350208	Dousberg-Hazendans
9350209	Daalhof
9350300	Boschpoort
9350301	Bosscherveld
9350302	Frontenkwartier
9350303	Belvédère
9350304	Lanakerveld
9350400	Wyckerpoort
9350401	Heugemerveld
9350402	Wittevrouwenveld
9350403	Nazareth
9350404	Limmel
9350405	Scharn
9350406	Amby
9350500	Beatrixhaven
9350501	Borgharen
9350502	Itteren
9350503	Meerssenhoven
9350600	Randwyck
9350601	Heugem
9350602	Heer
9350603	De Heeg
9350604	Vroendaal
9380000	Meerssen
9380001	Rothem
9380002	Weert
9380003	Raar
9380009	Verspreide huizen
9380100	Ulestraten
9380109	Verspreide huizen
9380200	Bunde
9380201	Kasen
9380202	Geulle
9380203	Hussenberg met Snijdersberg
9380204	Hulsen-Oostbroek
9380205	Moorveld
9380206	Brommelen-Westbroek
9440000	Molenhoek
9440001	Mook
9440009	Verspreide huizen Bisselt
9440100	Riethorst-Plasmolen
9440101	Middelaar Katerbosch en Heikant
9460101	Nederweert
9460102	Boeket-Hoogbosweg
9460103	Bosserstraat-Lage Kuilen
9460104	Schoor-Mildert
9460201	Budschop
9460202	Winnerstraat-Eindhovensebaan
9460301	Ospel
9460302	Ospeldijk
9460303	Nieuwstraat-Horick-Kampersweg
9460304	Waatskamp-Bientjesweg
9460305	Moostdijk-Kruisvennendijk
9460401	Nederweert-Eind
9460402	Wellenstein-Aan t Kruis
9460501	Leveroy
9460502	Deckerstraat-Bergdijk
9570000	Binnenstad
9570001	Voorstad
9570002	Roer-Zuid
9570003	Roerzicht
9570004	Willem-Alexander
9570100	Roermondse Veld
9570101	Vrijveld
9570200	Kapel-Muggenbroek
9570201	De Kemp
9570202	Roerstreek
9570203	Kitskensdal
9570204	Kitskensberg
9570300	Kern Maasniel
9570301	Leeuwen
9570302	Tegelarijeveld-Broekhin
9570303	De Wijher en omgeving
9570304	Stadsrandzone-Noord
9570400	Componistenbuurt
9570401	Vliegeniersbuurt
9570402	Kastelenbuurt
9570403	Sterrenberg
9570501	Hoogvonderen
9570600	Asenray buitengebied
9570601	Asenray
9570700	Ool
9570701	Herten
9570702	Merum
9570703	Oolder Veste
9570800	Swalmen-Centrum
9570801	Groenekruisgebied
9570802	Heide
9570804	Asselt
9570805	Martin Giessen-Bosstraat
9570806	Boukoul
9570809	Verspreide huizen Swalmen
9570900	Maasplassen
9650000	Simpelveld
9650001	Hulsveld
9650002	Huls
9650003	Molsberg-Rodeput
9650009	Verspreide huizen
9650100	Bocholtz
9650101	Bocholtzerheide
9650102	Prickart-Broek
9650103	Baneheide
9710000	Oud-Stein
9710001	Kerensheide
9710002	Nieuwdorp
9710003	Kleine Meers en Veldschuur
9710004	Maasband
9710005	Centrum
9710100	Elsloo
9710101	Meers
9710102	Catsop
9710200	Berg
9710201	Urmond ten westen van Julianakanaal
9710202	Urmond ten oosten van Julianakanaal
9710203	Nattenhoven
9810000	Vijlen
9810001	Mamelis
9810003	Harles
9810005	Lemiers
9810006	Holset
9810007	Raren
9810008	Wolfhaag
9810009	Verspreide huizen Cottessen-Camerig
9810100	Vaals
9831101	Winkelcentrum
9831102	Q4
9831103	Rosarium
9831104	Binnenstad-Noord
9831201	Sinselveld
9831202	Maaswaard
9831203	Spoorsingel
9831204	Hagerbroek
9831205	Hagerhof-oost
9831206	Hagerhof-West
9831207	Wylrehof
9831208	bedrijventerrein Hagerhof
9831209	Onderste en Bovenste Molen
9831210	Krekelveld
9831301	De Tichelarij
9831302	Rijnbeek
9831303	Groenstraat-Noord
9831304	Groenstraat-Zuid
9831305	Stalberg-West
9831306	Groeneveld
9831307	Hogekamp
9831308	Stalberg-Noord
9831401	Craneveld
9831402	Withuis
9831403	t Zand
9831404	Genooybergen
9831405	Genooy
9831501	Vierpaardjes
9831502	Dr Poelsplein en omstreken
9831503	Jezuïtenbuurt
9831504	Vogelbuurt
9831505	Bloemenbuurt
9831506	Casinoflat
9831507	Postwegflat
9831508	Stalberg midden
9831509	Stalberg-oost
9831510	Grote Hei
9831511	Keulse Barriére
9831512	Auxillatrix
9831601	Kern t Ven
9831602	Arenborg
9831603	Herungerberg
9831604	Veegtes
9831605	Noorderpoort
9831606	Venkoelen
9831607	AZC
9832101	Blerick-Centrum
9832102	gazenkamp
9832201	Smeliënkamp
9832202	Vastenavondkamp-Noord
9832203	Vastenavondkamp-Zuid
9832301	Molenbossen
9832302	Annakamp-Oost
9832303	Annakamp-West
9832304	Zonneveld
9832401	Vossener-Centrum
9832402	Vossener-Noord
9832403	Vossener-West
9832404	Vossener-Zuid
9832501	Klingerberg-Zuid
9832502	Klingerberg-Noord
9832601	Kern Hout-Blerick
9832602	Verspreide huizen Hout-Blerick
9832603	Meuleveld
9832701	Kern Boekend
9832702	Verspreide huizen Boekend
9832801	Horsterweg
9832802	Kazerneterrein
9832803	Ubroek
9832804	Groot Boller
9832805	Havengebied
9832806	Ecopark
9832807	Heierhoeve
9832808	Fresh Park
9832809	Trade-Port-Oost
9832810	Trade-Port-Noord
9832811	Floriade Park
9832812	Zaarderheiken
9833101	Bosserhof
9833102	Tegelen-Centrum
9833103	Krekelsberg
9833104	Maasveld I
9833105	Maasveld II
9833201	Lage Heide
9833202	Bedrijventerrein Windhond
9833203	Kaldenkerkerweg-West
9833204	Op de Heide
9833205	Kaldenkerkerweg-Oost
9833206	Ulingsheid
9833207	Snelle Sprong
9833501	Kloosterdorp
9833502	Nieuw-Steyl
9834101	Velden-West
9834102	Velden-Oost
9834103	Hasselderheide
9834104	Schandelo
9834105	Hasselt en Het Vorst
9834106	De Krosselt
9834107	Verspreide huizen Velden
9834301	Kern Lomm
9834302	Spikweinen
9834303	Verspreide huizen Lomm
9834401	Kern Arcen
9834402	Lingsfort
9834403	Brandemolen en Veld
9834404	Verspreide huizen arcen
9835101	Kern Belfeld
9835102	Gebied patersweg
9835103	Bolenberg
9835104	Aan de Stuw
9835105	Witveld
9835106	Geloérveld en Pannenberg
9835107	Geloö
9835108	Maalbeek
9840101	Heide
9840201	Ysselsteyn
9840301	Merselo
9840401	Vredepeel
9840501	Smakt
9840601	Oostrum
9840701	Oirlo
9840801	Castenray
9840901	Veulen
9841001	Leunen
9841101	Centrum
9841201	Burggraaf
9841202	Oranjebuurt
9841203	Bomenbuurt
9841301	Noordwest
9841302	West midden
9841303	West zuid
9841401	Vlakwater
9841501	Veltum 1
9841502	Veltum 2
9841601	Brukske 1
9841602	Brukske 2
9841701	Landweert 1
9841702	Landweert 2
9841703	Landweert 3
9841704	Keizersveld
9841801	Smakterheide
9841901	Brabander
9842001	St Antoniusveld
9842101	Wanssum
9842201	Geijsteren
9842301	Blitterswijck
9860101	Voerendaal
9860102	Fromberg
9860201	Kunrade
9860202	Kunderberg
9860203	Winthagen
9860301	Ubachsberg
9860302	Colmont
9860303	Mingersborg
9860401	Klimmen
9860402	Craubeek
9860403	Hellebeuk
9860404	Retersbeek
9860405	Termaar
9860406	Weustenrade
9860501	Ransdaal
9860900	Verspreide huizen Voerendaal
9880101	Boshoven-Vrakker
9880102	Oud-Boshoven
9880103	Centrum-Noord
9880104	Boshoven buitengebied
9880105	Industrieterrein Boshoverheide
9880201	Laar
9880202	Hushoven
9880203	Laar buitengebied
9880204	Hulshoven buitengebied
9880205	Laarveld
9880301	Molenakker
9880302	Kampershoek
9880303	Kampershoek-Noord
9881101	Weert-Centrum
9881102	Maaspoort
9881201	Biest
9881301	Groenewoud-Noord
9881302	Groenewoud-Zuid
9881401	Fatima
9881402	Industrieterrein Fatima
9882101	Keent
9882102	Keent buitengebied
9882201	Moesel
9882202	Moesel buitengebied
9882301	Graswinkel
9882401	Leuken
9882402	Industrieterrein Leuken
9882403	Leuken buitengebied
9882501	Kazernelaan
9882502	Industrieterrein Boshoverbeek-Lozerweg
9883101	Altweerterheide
9883102	Altweerterheide buitengebied
9883201	Tungelroy
9883202	Tungelroy buitengebied
9883301	Swartbroek
9883302	Swartbroek buitengebied
9883401	Stramproy
9883402	Stramproy buitengebied
9940000	Valkenburg
9940001	Broekhem Zuid
9940002	Broekhem Noord
9940003	Emmaberg
9940004	De Heek
9940005	De Valkenberg
9940006	Hekerbeek
9940007	Plenkert
9940008	Euverem
9940100	Sint Gerlach
9940101	Vroenhof
9940102	Strabeek
9940103	Houthemerveld
9940104	Ravensbosch
9940200	Schin op Geul
9940201	Schoonbron
9940202	Oud-Valkenburg
9940203	Strucht
9940204	Gerendal
9940205	Keutenberg - Sousberg
9940206	De Kluis
9940300	Sibbe
9940301	IJzeren
9940302	Vilterveld
9940400	Berg
9940401	Terblijt
9940402	Vilt
9940403	Geulhem
9940404	Rasberg
9940405	Bergse Heide
9940406	Vilter Heide
9940500	Walem
9950110	Kofschip, SGL
9950111	Zuiderzeelaan, Waddenlaan
9950112	IJssellaan
9950113	Langezand
9950114	Kofschip Noord
9950115	Groene Velden
9950117	Overijsselse Hout
9950118	Bedrijventerrein Gildenhof
9950119	Jagersveld
9950161	Bastion
9950162	Stadspark, Badweg, Langevelderslag
9950166	Lelycentre, Maerlant
9950172	Sportpark Langezand
9950174	Stiltebos, Camping de Houtrib
9950220	De Veste
9950221	Atol
9950222	Damrif, Kustrif, Gors, Zandbank
9950223	Bongerd, Buitenplaats
9950224	De Schans
9950225	Hofstede, Plantage, Wijngaard
9950226	Oostrandpark
9950227	Buitenhof
9950228	De Meent
9950310	Wijkcentrum
9950311	Kamp
9950312	Horst
9950313	Griend
9950314	Zoom
9950315	Wold
9950316	Archipel, Beukenhof, Rozengaard
9950317	Woldpark, Houttuinen, Gelderse Hout
9950420	Wijkcentrum, Voorstraat
9950421	Getijdenbuurt, Sportpark Doggersbank
9950422	Zeeenbuurt
9950423	Zeestromen en Slotenbuurt
9950424	Merenbuurt
9950425	Rivierenbuurt
9950428	Bedrijventerrein Ketelmeerstraat
9950431	Landerijen NoordenWest
9950432	Landerijen ZuidenWest
9950433	Landerijen NoordenOost
9950434	Landerijen ZuidenOost
9950521	Kempenaar Oost
9950522	Kempenaar West
9950523	Kogge
9950524	Hanzepark
9950525	Schouw
9950526	Gondel
9950527	Sportpark Schouw
9950528	Bedrijventerrein Kempenaar
9950611	Karveel Oost
9950612	Karveel West
9950613	Boeier
9950614	Noordzoom Oost
9950615	Golfpark, Lommerrijk
9950631	Saerdam, Vliegend Hert, Fortuijn
9950632	Punter
9950633	Jol
9950634	Galjoen
9950635	Park, Jol, Gajoen
9950637	Galjoen Zuid
9950638	Bedrijventerrein Jol
9950651	Houtribhoogte Zuid
9950652	Houtribhoogte Noord
9950671	Volkstuinen Bosweg
9950672	Golfresort
9950711	Landstrekenwijk Oost
9950712	Landstrekenwijk Midden
9950713	Landstrekenwijk West
9950731	Grietenij
9950732	De Doelen, De Marken
9950733	De Meierij, Kerspel
9950734	Bedrijventerrein Middendreef
9950741	Botter Oost
9950742	Botter West
9950743	Tjalk
9950744	Schoener
9950747	Park Schoener
9950748	Bedrijventerrein Tjalk
9950766	Het Ravelijn, Ziekenhuisweg
9950822	Hollandse Hout Villapark
9950836	Oostvaardersdijk, Meerdijkhaven
9950851	Lelystad-Haven West
9950852	Lelystad-Haven Oost
9950853	Lelystad-Haven Werkeiland
9950871	t Bovenwater
9950872	Uilenweg
9950881	Industrieterrein Noordersluis Oost
9950882	Industrieterrein Noordersluis West
9950961	Waagpassage
9950962	Neringpassage
9950963	Stationsplein
9950964	Stadhuisstraat
9950965	Lindenlaan
9951017	Visvijverbos
9951018	Karperweg, IJsselmeerdijk
9951019	Visvijver-, Bijl-, Klokbeker-, Plavuizenweg
9951029	Edelhert-, Runder-, Wisent-, Elandweg
9951031	Beginweg, Bronsweg, Jupiterweg
9951037	Sportveld Beginweg, Overijsselse Hout
9951039	Lisdodde-, Dronter-, Zeeasterweg, -pad
9951041	Natuurpark Lelystad
9951047	Larserbos, Rietweg
9951049	Vlotgrasweg
9951058	Airport Lelystad
9951059	Meerkoetenweg, Eendenweg, Larserpad
9951067	Knarbos
9951068	Pijlstaartweg, Vleetweg, Larserweg
9951069	Vogelweg, Meeuwenweg, Pijlstaartweg
9951070	Gelderse Hout
9951071	Flevobos
9951073	Overijsselse Hout, Hoefslag, Hondsdraf
9951074	Strand Houtribhoek, Houtribbos
9951075	Overijsselse Hout, Jagersbos
9951076	Zuigerplaspark
9951078	Larserplein
9951081	Flevopoort II
9951082	Flevopoort I
9951083	Industrieterrein Oostervaart Oost
9951084	Industrieterrein Oostervaart Midden
9951085	Industrieterrein Oostervaart West
9951087	Larservaartbos
9951088	Bedrijvenpark Larserpoort
9951097	Hollandse Hout
9951098	Oostvaardersplassen
9951111	Flora West
9951112	Flora Midden
9951113	Flora Oost PIL
9951121	Woonhavenpad
9951122	Warande West
9951131	Biomassa
9951132	Fauna, Bosvalkweg, Zuiderpoort
9951133	Warande Oost
9951134	Warande OostenMidden
9951149	Warande Zuid
9951161	Warande Midden
15070000	Griendtsveen
15070009	Verspreide huizen Griendtsveen
15070100	America
15070101	Meerdal
15070102	Loohorst
15070109	Verspreide huizen America
15070200	Meterik
15070209	Verspreide huizen Meterik
15070300	Hegelsom
15070309	Verspreide huizen Hegelsom
15070400	Horst-Centrum
15070401	Molenveld
15070402	De Riet
15070403	Weisterbeek
15070404	Nieuwstraat
15070405	Kappellerhof
15070406	Berkelsbroek
15070407	Stuksbeemden
15070408	De Risselt
15070409	De Afhang
15070410	Hoogveld
15070419	Verspreide huizen Horst
15070500	Melderslo
15070509	Verspreide huizen Melderslo
15070600	Broekhuizenvorst
15070609	Verspreide huizen Broekhuizenvorst
15070700	Lottum
15070709	Verspreide huizen Lottum
15070800	Grubbenvorst-Centrum
15070801	De Comert
15070802	Reuvelt
15070803	Middelreuvelt
15070804	Tuinhaversveld
15070809	Verspreide huizen Grubbenvorst
15070900	Broekhuizen
15070909	Verspreide huizen Broekhuizen
15071000	Sevenum
15071001	De Schatberg
15071009	Verspreide huizen Sevenum
15071100	Kronenberg
15071109	Verspreide huizen Kronenberg
15071200	Evertsoord
15071209	Verspreide huizen Evertsoord
15071300	Meerlo
15071309	Verspreide huizen Meerlo
15071400	Tienray
15071409	Verspreide huizen Tienray
15071500	Swolgen
15071509	Verspreide huizen Swolgen
15090000	Ulft-Centrum en Ulft-Oost
15090001	Ulft-West
15090002	Ulft-Noord
15090003	Etten
15090004	Varsselder en Veldhunten
15090007	Verspreide huizen Varsselder
15090008	Verspreide huizen Etten
15090009	Verspreide huizen Ulft
15090100	Gendringen
15090101	Megchelen
15090102	Netterden
15090103	Milt en Wieken
15090104	Breedenbroek
15090105	Verspreide huizen Megchelen
15090106	Verspreide huizen Gendringen
15090107	Verspreide huizen Netterden
15090108	Verspreide huizen Voorst
15090109	Verspreide huizen Breedenbroek
15090200	Terborg
15090201	Terborg-Oost
15090202	Silvolde
15090203	Nieuwdorp Bontebrug
15090207	Verspreide huizen Terborg en Heuven
15090208	Verspreide huizen Silvolde
15090300	Varsseveld
15090301	Westendorp
15090302	Sinderen
15090303	Heelweg
15090306	Verspreide huizen Westendorp
15090307	Verspreide huizen Heelweg
15090308	Verspreide huizen Varsseveld
15090309	Verspreide huizen Sinderen
15250101	De Rodes
15250102	De Knip
15250103	Everlasting
15250104	Over de Brug
15250201	Bloemenbuurt
15250202	Kruiden Noord
15250203	Kruiden Zuid
15250204	Vissenbuurt
15250205	Schouten
15250301	Componisten
15250302	Bollenbuurt
15250303	Bolbloemen
15250304	Hooghkamer
15250401	Berg en Dal
15250402	Buurtschap Teijlingen
15250403	Boekhorstpolder
15250404	Elsgeesterpolder
15250405	Voorhout buitengebied
15251101	Postbuurt
15251102	Vliegeniersbuurt
15251103	Wasbeek
15251104	Langeveld
15251201	Bomenbuurt
15251202	Kooibuurt
15251203	Kagerweide
15251204	Planetenbuurt
15251205	Mennepark
15251206	De Hoven
15251207	Vrouwenpolderbuurt
15251208	Bloemenbuurt
15251301	Rode Molenbuurt
15251302	Wetenschapsbuurt
15251303	Jagtlust
15251304	Klinkenberg
15251401	Overteylingen
15251402	Kasteelbuurt
15251403	Horsten en Vorsten
15251404	Koningshuysbuurt
15251405	Oranjebuurt
15251406	Centrum
15251407	Ter Leede
15251408	Vogelbuurt
15251501	Sassenheim buitengebied Noord
15251502	Sassenheim buitengebied Oost
15251503	Sassenheim buitengebied Zuid
15252101	Middelbuurt
15252102	Kloosterland-Endepoel
15252103	Westeinde-Lommerlust
15252104	Veerpolder
15252201	Hennepoel
15252202	Warmond buitengebied-Oosteinde
15810000	Doorn-Centrum
15810001	Oudeweg
15810002	Doorn-West
15810003	Doorn-Zuid
15810004	De Wijngaard
15810007	Verspreide huizen op de Heuvelrug-Oost
15810008	Verspreide huizen op de Heuvelrug-West
15810009	Verspreide huizen in het Lage Land
15810101	Landelijk Gebied noordzijde
15810102	Landelijk Gebied zuidzijde
15810103	Driebergen-Noord
15810104	Drift-Sportlaan en Bornia
15810105	Loolaankwartier en Beukenstein
15810106	Kom Driebergen en Seminarie
15810107	Hoenderdaal en Emmalaan
15810108	Wildbaan-Dennenburg
15810109	Welgelegen-Rosarium
15810110	De Horst en De Akker
15810200	Leersum
15810201	Breedeveen
15810207	Verspreide huizen in het Lage Gebied Darthuizen
15810208	Verspreide huizen op de Heuvelrug
15810209	Verspreide huizen in de Geldersche Vallei Overberg
15810300	Amerongen
15810302	Verspreide huizen Overberg en De Haar
15810308	Verspreide huizen Heuvelrug
15810309	Verspreide huizen Lekdijk
15810400	Maarn waaronder Klein Amsterdam
15810402	Maarsbergen
15810403	Valkenheide
15810408	Verspreide huizen op de Heuvelrug
15810409	Verspreide huizen in de Geldersche Vallei
15860101	t Zand
15860102	Schatberg
15860103	Den Esch
15860104	Hooiland
15860105	Centrum
15860106	Veld Oost
15860107	Veld West
15860108	Broek
15860109	Broekdijk
15860110	Zuid-West
15860111	Flierbeek
15860112	Lindebrook
15860113	Nieuwe Kamp
15860114	Oude Kamp
15860115	De Kamp Zuid
15860116	Buitengebied Lichtenvoorde
15860201	Bebouwde kom Harreveld
15860202	Buitengebied Harreveld
15860301	Bebouwde kom Zieuwent
15860302	Buitengebied Zieuwent
15860401	Bebouwde kom Lievelde
15860402	Buitengebied Lievelde
15860501	Bebouwde kom Vragender
15860502	Buitengebied Vragender
15860601	Binnenstad Groenlo
15860602	Het Blik
15860603	Noord-West
15860604	Banninghof
15860605	Papendijk
15860606	hartreize
15860607	Groenlo-Zuid
15860608	Marveld
15860609	Bedrijventerrein Brandemat
15860610	Oosteres
15860611	Noordrand
15860612	IndustrieterreinDen Sliem
15860613	Industrieterrein Laarberg
15860614	Zwolle
15860615	Buitengebied Groenlo
15860701	Bebowde kom Marienvelde
15860702	Buitengebied Marienvelde
15980101	Berkmeerdijk
15980102	Obdam Verspreide huizen West
15980103	Klipper en omgeving
15980104	Weerestraat en omgeving
15980105	Handelskade en omgeving
15980106	Reigerlaan Obdam en omgeving
15980107	Dokter Lohmanstraat en omgeving
15980108	Bedrijventerrein Braken
15980109	Dorpsstraat en omgeving
15980110	Laan van Meerweijde en omgeving
15980111	Nijenburglaan en omgeving
15980112	Duinweid en omgeving
15980113	Obdam Verspreide huizen Oost
15980201	Hensbroek Verspreide huizen
15980202	Dorpsweg en omgeving
15980203	Wogmeer West
15980301	Wogmeer Oost
15980302	Spierdijk Verspreide huizen
15980303	Spierdijkerweg en omgeving
15980401	Zuidermeer Verspreide huizen West
15980402	Zuidermeerweg en omgeving
15980403	Baarsdorpermeer
15980501	Bobeldijk en omgeving
15980502	Westeinde
15980503	Kerkebuurt
15980504	Slagterslaan en omgeving
15980505	Bruggevaart en omgeving
15980506	Oosteinde
15980507	Berkhout Verspreide huizen Zuid
15980601	Rustenburg
15980602	Ursem Verspreide huizen Noord
15980603	Reigerlaan Ursem en omgeving
15980604	Drechterlandsedijk en omgeving
15980605	Ruijterstraat en omgeving
15980606	Zuidgouw en omgeving
15980607	Tuinderij en omgeving
15980608	Geesterland en omgeving
15980609	Ursem Verspreide huizen Oost
15980610	Mijzerdijk
15980701	De Goorn Verspreide huizen
15980702	Singel en omgeving
15980703	Pastoor Lemeerstraat en omgeving
15980704	De Goorn en omgeving
15980705	Rietgras en omgeving
15980706	Kanteel en omgeving
15980707	Kantbeugel en omgeving
15980708	Bedrijventerrein Vredemaker
15980709	De Goorn Buitenroede en omgeving
15980801	Avenhorn Verspreide huizen West
15980802	West en omgeving
15980803	Alver en omgeving
15980804	Wieken en omgeving
15980805	Het Veer en omgeving
15980806	Jaagweg en omgeving
15980807	Avenhorn Buitenroede en omgeving
15980808	Grosthuizen
15980901	Scharwoude Verspreide huizen
15980902	Scharwoude en omgeving
15981001	Oudendijk Verspreide huizen
15981002	Lange weide en omgeving
16211111	Dorp Bergschenhoek
16211121	De Driehoek
16211211	Bergsche Ackers
16211221	Oosteindsche Ackers
16211231	Ackerse Zoom
16211311	Beemdenbuurt
16211321	Eilandenbuurt
16211331	Boterdorpse Zoom
16211411	Wilderszijde
16211514	Bergse Nos
16211522	Schreyracker
16211531	Hoeksekade
16211543	Weg en Land
16211552	Warmoeziersweg
16212111	Berkel Dorp
16212121	Parkbuurt
16212131	Oranjebuurt
16212144	Annie MG Schmidtpark Midden
16212211	Bomen- en Struikenbuurt
16212221	Sterrenbuurt
16212231	Edelsteenbuurt
16212241	Componistenbuurt
16212254	Annie MG Schmidtpark Noord
16212311	Merenbuurt
16212321	Rivierenbuurt
16212331	Havenbuurt
16212412	Noordeinde
16212511	Bloemenbuurt
16212521	Parc Rodenrijs
16212531	Vogelbuurt
16212541	Weidebloembuurt
16212611	Rodenrijse Zoom
16212621	Bonfut
16212633	Berkelse Poort
16212644	Annie MG Schmidtpark Zuid
16212711	Bolwerk
16212721	Gouden Griffelbuurt
16212731	Gouden Uilbuurt
16212741	Buurt 2741
16212814	Vlinderstrik
16212823	Spoorhaven
16212833	Bedrijventerrein Rodenrijs
16212843	Oudeland
16212851	Buurt 2851
16212864	Bergboezem
16213111	Schildersbuurt
16213121	Zeeheldenbuurt
16213133	De Hoefslag
16213141	Oranjebuurt
16213162	Zeldenrust
16213211	Molenbuurt
16213221	Sterrenbuurt
16213231	Bomenbuurt
16213242	Merenveld
16213251	Vogelbuurt
16213261	De Tuinen
16213312	Overbuurtse Polder
16213323	Klappolder
16213334	Rotte Zoom
16213344	Kruisweg
16213353	Prisma
16400000	Kern Heythuysen
16400001	Verspreide huizen Heythuysen
16400100	Kern Heibloem
16400101	Verspreide huizen Heibloem
16400200	Kern Roggel
16400201	Verspreide huizen Roggel
16400300	Kern Neer
16400301	Verspreide huizen Neer
16400400	Kern Nunhem
16400401	Verspreide huizen Nunhem
16400500	Kern Haelen
16400501	Verspreide huizen Haelen
16400600	Kern Buggenum
16400601	Verspreide huizen Buggenum
16400700	Kern Horn
16400701	Verspreide huizen Horn
16400800	Kern Baexem
16400801	Verspreide huizen Baexem
16400900	Kern Kelpen-Oler
16400901	Verspreide huizen Kelpen-Oler
16401000	Kern Grathem
16401001	Verspreide huizen Grathem
16401100	Kern Ell
16401101	Verspreide huizen Ell
16401200	Kern Haler
16401201	Verspreide huizen Haler
16401300	Kern Hunsel
16401301	Verspreide huizen Hunsel
16401400	Kern Neeritter
16401401	Verspreide huizen Neeritter
16401500	Kern Ittervoort
16401501	Verspreide huizen Ittervoort
16410000	Maasbracht
16410001	Brachterbeek
16410009	Verspreide huizen Het Vonderen
16410100	Linne
16410109	Verspreide huizen Linnerveld en Weerd
16410200	Stevensweert waaronder Bilt
16410201	Eiland-Brandt
16410300	Laak
16410301	Ohé
16410400	Thorn
16410409	Verspreide huizen Thorn
16410500	Heel
16410501	Panheel
16410509	Verspreide huizen Heel
16410600	Beegden
16410700	Wessem
16520000	Gemert-Centrum
16520001	Gemert-Noord
16520002	Gemert-Oost
16520003	Industrieterrein Scheiweg
16520004	Doonheide
16520007	Verspreide huizen Kampen-Esdonk
16520008	Verspreide huizen Broekkant
16520009	Verspreide huizen Rooije Hoef
16520100	Handel
16520108	Verspreide huizen Verreheide
16520109	Verspreide huizen Heereveld
16520200	De Mortel
16520208	Verspreide huizen Milschot-Tereyken
16520209	Verspreide huizen Mortelse Peel
16520300	Elsendorp
16520309	Verspreide huizen Elsendorp
16520400	Bakel
16520408	Verspreide huizen Grotelse Heide en Esp
16520409	Verspreide huizen ten zuidwesten van Bakel
16520500	Milheeze
16520508	Verspreide huizen Groote Peel
16520509	Verspreide huizen Milheeze
16520600	De Rips
16520609	Verspreide huizen Rips
16550101	Oud Gastel
16550102	Stoof
16550109	Verspreide huizen Oud Gastel
16550201	Stampersgat
16550209	Verspreide huizen Stampersgat
16550301	Oudenbosch-Centrum
16550302	Pagnevaart
16550303	Velletri
16550304	Spui
16550305	Albano
16550307	Verspreide huizen Kuivezand en omgeving
16550308	Verspreide huizen ten noorden van Oudenbosch
16550309	Verspreide huizen ten zuiden van Oudenbosch
16550401	Hoeven
16550402	Achter t Hof
16550403	Kruisstraat
16550408	Verspreide huizen ten zuiden van Hoeven
16550409	Verspreide huizen ten noorden van Hoeven
16550501	Bosschenhoofd
16550509	Verspreide huizen Bosschenhoofd
16580000	Heeze
16580001	Bedrijventerrein De Poortmannen
16580009	Verspreide huizen Heeze
16580100	Leende
16580101	Villawijk Boschhoven
16580108	Verspreide huizen Groote Heide
16580109	Verspreide huizen Zevenhuizense Heide
16580200	Leenderstrijp
16580209	Verspreide huizen Dijkse Heide
16580300	Sterksel
16580308	Verspreide huizen ten zuiden van Sterksel
16580309	Verspreide huizen ten oosten van Sterksel
16590000	Beek
16590001	Donk
16590002	Bedrijventerrein Beekerheide
16590003	Bedrijventerrein Bemmer
16590009	Verspreide huizen Beek en Donk
16590100	Aarle-Rixtel
16590101	Bedrijventerrein Torenakker
16590102	Bedrijventerrein Duivenakker
16590108	Verspreide huizen Laar en Strijp
16590109	Verspreide huizen Heikant
16590200	Lieshout
16590201	Industrieterrein Bavaria
16590209	Verspreide huizen Lieshout
16590300	Mariahout
16590309	Verspreide huizen Mariahout
16670000	Reusel
16670001	Voorste Heikant en Weijereind
16670002	De Voort en Achterste Heikant
16670008	Buitengebied ten noorden van Reusel
16670009	Buitengebied ten zuiden van Reusel
16670100	Hooge Mierde
16670109	Verspreide huizen Hooge Mierde
16670200	Lage Mierde
16670209	Verspreide huizen Lage Mierde
16670300	Hulsel
16670309	Verspreide huizen Hulsel
16690101	Montfort
16690109	Buitengebied Montfort
16690201	Sint Odiliënberg
16690202	Lerop
16690203	Reutje
16690204	Paarlo
16690209	Buitengebied Sint Odiliënberg
16690301	Melick
16690309	Buitengebied Melick
16690401	Posterholt
16690402	Holst
16690403	Varst
16690404	Borg
16690409	Buitengebied Posterholt
16690501	Herkenbosch
16690502	Bedrijventerrein Stationsweg
16690503	Reewoude
16690509	Buitengebied Herkenbosch
16690601	Vlodrop
16690602	Etsberg
16690603	Rothenbach
16690604	Vlodrop Station
16690605	MERU
16690609	Buitengebied Vlodrop
16740000	Centrum-Oud
16740001	Centrum-Nieuw
16740002	Stationsbuurt
16740003	Vrouwenhof
16740100	Sint Josephbuurt
16740101	Fatima-villapark
16740102	Keijenburg
16740200	Parklaan-Hoogstraat
16740201	Spoorstraat-Van Coothlaan
16740202	Kalsdonk
16740209	Nieuwenberg
16740300	Heerma van Vossstraat-Molenbeek
16740301	Herreweg
16740302	Ettingen
16740303	Scherpdeel
16740309	Vroenhout
16740400	Kroeven-Noordwest
16740401	Kroeven-Noordoost
16740402	Kroeven-Zuidwest
16740403	Kroeven-Zuidoost
16740404	Minnebeek-Watermolen
16740405	De Krogten
16740409	Borteldonk
16740500	Bovendonk
16740501	Langdonk-West
16740502	Langdonk-Oost
16740509	Vierhoeven
16740600	Kortendijk A
16740601	Kortendijk C
16740602	Kortendijk L
16740603	Landerije
16740609	Bakkersberg-Langendijk
16740700	Hulsdonk
16740701	Tolberg-Oost
16740702	Tolberg-Centrum
16740703	Tolberg-West
16740705	Weihoek-Oost
16740706	Weihoek-West
16740709	Haiink
16740800	Borchwerf-Noord
16740801	Borchwerf-Zuid
16740802	Majoppeveld-Noord
16740803	Majoppeveld-Zuid
16740804	Vijfhuizenberg
16741000	Nispen
16741009	Verspreide huizen Nispen
16741100	Wouw
16741108	Verspreide huizen Wouw in het Noorden
16741109	Verspreide huizen Wouw in het Zuiden
16741200	Heerle
16741209	Verspreide huizen Heerle
16741300	Moerstraten
16741309	Verspreide huizen Moerstraten
16741400	Wouwse Plantage
16741409	Verspreide huizen Wouwse Plantage
16760000	Zierikzee binnen de vesten
16760001	Malta
16760002	Poortambacht
16760003	Zuidhoek
16760004	Kaaskenswater
16760007	Verspreide huizen in het Noorden en Westen
16760008	Verspreide huizen in het Zuiden
16760009	Verspreide huizen in het Oosten
16760100	Brouwershaven
16760109	Verspreide huizen Brouwershaven
16760200	Zonnemaire
16760209	Verspreide huizen Zonnemaire
16760300	Dreischor
16760309	Verspreide huizen Dreischor
16760400	Noordgouwe
16760401	Schuddebeurs
16760409	Verspreide huizen Noordgouwe en Schuddebeurs
16760500	Bruinisse
16760501	Recreatiegebied
16760509	Verspreide huizen Bruinisse
16760600	Nieuwerkerk
16760609	Verspreide huizen Nieuwerkerk
16760700	Oosterland
16760701	Sirjansland
16760708	Verspreide huizen Sirjansland
16760709	Verspreide huizen Oosterland
16760800	Ouwerkerk
16760809	Verspreide huizen Ouwerkerk
16760900	Scharendijke
16760909	Verspreide huizen Scharendijke
16761000	Kerkwerve
16761009	Verspreide huizen Kerkwerve
16761100	Ellemeet
16761109	Verspreide huizen ten zuiden van Ellemeet
16761200	Haamstede
16761201	Burgh
16761202	Hogeweg
16761203	Westenschouwen
16761204	Kloosterweg en omgeving
16761205	Nieuw-Haamstede
16761208	Verspreide huizen in het Kleigebied
16761209	Verspreide huizen in het Zandgebied
16761300	Renesse
16761301	Oude Moolweg en Laone
16761302	Hoogenboomlaan
16761303	Lagezoom
16761309	Verspreide huizen ten westen van Renesse
16761400	Noordwelle
16761409	Verspreide huizen Noordwelle
16761500	Serooskerke
16761509	Verspreide huizen Serooskerke
16800000	Annen
16800009	Verspreide huizen Annen
16800100	Eext
16800109	Verspreide huizen Eext
16800200	Anloo
16800209	Verspreide huizen Anloo
16800300	Gasteren
16800309	Verspreide huizen Gasteren
16800400	Anderen
16800409	Verspreide huizen Anderen
16800500	Schipborg
16800509	Verspreide huizen Schipborg
16800600	Eexterveen
16800609	Verspreide huizen Eexterveen
16800700	Spijkerboor
16800709	Verspreide huizen Spijkerboor
16800800	Nieuw-Annerveen
16800809	Verspreide huizen Nieuw-Annerveen
16800900	Oud-Annerveen
16800909	Verspreide huizen Oud-Annerveen
16801100	Annerveenschekanaal
16801109	Verspreide huizen Annerveenschekanaal
16801200	Eexterveenschekanaal
16801209	Verspreide huizen Eexterveenschekanaal
16801300	Eexterzandvoort
16801309	Verspreide huizen Eexterzandvoort
16801400	Gasselte
16801401	Kostvlies
16801409	Verspreide huizen Gasselte
16801500	Gasselternijveen
16801501	Gasselterboerveen
16801509	Verspreide huizen Gasselternijveen
16801600	Gasselternijveenschemond
16801601	Gasselterboerveenschemond
16801609	Verspreide huizen Gasselternijveenschemond
16801700	Gieten
16801709	Verspreide huizen Gieten
16801800	Gieterveen
16801801	Bonnerveen
16801802	Nieuwediep
16801809	Verspreide huizen Gieterveen
16801900	Rolde
16801901	Ballo
16801902	Nijlande
16801903	Deurze
16801908	Verspreide huizen Nooitgedacht
16801909	Verspreide huizen Rolde
16802000	Grolloo
16802001	Schoonloo
16802008	Verspreide huizen Papenvoort
16802009	Verspreide huizen Grolloo
16802100	Ekehaar
16802101	Amen
16802109	Verspreide huizen Ekehaar
16810000	Borger
16810001	Westdorp
16810007	Verspreide huizen Ellertshaar
16810008	Verspreide huizen Westdorp
16810009	Verspreide huizen Borger
16810100	Buinen
16810109	Verspreide huizen Buinen
16810200	Bronneger
16810209	Verspreide huizen Bronneger
16810300	Drouwen
16810309	Verspreide huizen Drouwen
16810409	Verspreide huizen Bronnegerveen
16810500	Drouwenerveen
16810509	Verspreide huizen Drouwenerveen
16810600	Drouwenermond
16810609	Verspreide huizen Drouwenermond
16810700	Nieuw-Buinen
16810709	Verspreide huizen Nieuw-Buinen
16810800	Buinerveen
16810809	Verspreide huizen Buinerveen
16810900	Ees
16810901	Eesergroen
16810907	Verspreide huizen Eeserveen
16810908	Verspreide huizen Eesergroen
16810909	Verspreide huizen Ees
16811000	Odoorn
16811009	Verspreide huizen Odoorn
16811100	Exloo
16811109	Verspreide huizen Exloo
16811200	Valthe
16811209	Verspreide huizen Valthe
16811300	Klijndijk
16811309	Verspreide huizen Klijndijk
16811400	Odoornerveen
16811409	Verspreide huizen Odoornerveen
16811500	Tweede Exloërmond
16811501	Eerste Exloërmond
16811502	Exloërveen
16811509	Verspreide huizen Tweede Exloërmond
16811600	Valthermond
16811601	Zandberg
16811602	Tweede Valthermond
16811609	Verspreide huizen Valthermond
16840116	Linden buitengebied
16840118	Linden kern
16840207	Katwijk buitengebied
16840209	Katwijk kern
16840217	Katwijk havengebied
16840303	Vianen kern
16840315	Vianen buitengebied
16840410	Beers kern
16840419	Beers buitengebied
16840601	Cuijk Padbroek
16840602	Cuijk kern
16840611	Cuijk industriegebied
16840612	Cuijk buitengebied ten westen
16840613	Cuijk Heeswijkse Kampen
16840614	Cuijk buitengebied ten zuid-westen
16840620	Cuijk De Valuwe
16841105	Haps kern
16841106	Haps buitengebied
16841404	Sint Agatha kern
16841408	Sint Agatha buitengebied
16850000	Schaijk
16850007	Verspreide huizen Schaijkse Heide
16850008	Verspreide huizen Mun
16850009	Overige verspreide huizen
16850100	Reek
16850109	Verspreide huizen Reekse Heide en Bovenland
16850200	Zeeland
16850201	Nabbegat-Voederheil
16850202	Oventje
16850207	Verspreide huizen Trent-Graspeel
16850208	Verspreide huizen Zevenhuis
16850209	Verspreide huizen Duifhuis-Kreitsberg
16850909	Verspreide huizen Peel
16900000	Zuidwolde kern
16900009	Verspreide huizen Zuidwolde
16900100	Alteveer
16900109	Verspreide huizen Alteveer
16900200	Kerkenveld
16900209	Verspreide huizen Kerkenveld
16900300	Drogteropslagen
16900309	Verspreide huizen Drogteropslagen
16900400	Linde
16900409	Verspreide huizen Linde
16900500	Fort
16900509	Verspreide huizen Fort
16900600	Veeningen
16900609	Verspreide huizen Veeningen
16900700	Echten
16900709	Verspreide huizen Echten
16900800	Ruinen
16900801	Oldenhave
16900802	Ruinerweide
16900803	Leeuwte
16900804	Hees
16900809	Verspreide huizen Ruinen
16900900	Eursinge en Pesse
16900909	Verspreide huizen Pesse
16901000	Ansen
16901009	Verspreide huizen Ansen
16901100	Ruinerwold
16901101	Haakswold
16901102	Oosteinde
16901103	Berghuizen
16901104	Weerwille
16901105	Oosteinde-Buiten
16901109	Ruinerwold-Buiten
16901200	Koekange
16901201	Koekange Noord
16901202	Koekange Zuid
16901203	Koekangerveld
16901209	Verspreide huizen Koekange
16901300	De Wijk
16901309	Verspreide huizen De Wijk
16950000	Kortgene-Dorp
16950001	Kortgene-Oost
16950009	Verspreide huizen Kortgene
16950100	Colijnsplaat
16950109	Verspreide huizen Colijnsplaat
16950200	Kats
16950209	Verspreide huizen Kats
16950300	Kamperland
16950301	Recreatiegebied Kamperland
16950309	Verspreide huizen Kamperland
16950400	Wissenkerke
16950409	Verspreide huizen Wissenkerke
16950500	Geersdijk
16950509	Verspreide huizen Geersdijk
16960000	s-Graveland
16960100	Oud-Kortenhoef
16960101	Rade, Oranjebuurt, Munniksveen en omgeving
16960102	Moleneind
16960103	Kromme Rade
16960200	Ankeveen
16960201	Ankeveense Rade
16960202	Hollandsch Ankeveen
16960300	Oud-Loosdrecht
16960400	Nieuw-Loosdrechtsedijk
16960401	Muijeveld
16960402	Boomhoek
16960500	Breukeleveen
16960601	Horn- en Kuijerpolder
16960602	Blijkpolder
16960603	Horstermeer
16960604	Splegelpolder
16990000	Roden
16990010	Roden West
16990020	Industrieterrein Roden
16990030	Nieuw-Roden
16990040	Nietap
16990050	Leutingewolde
16990060	Foxwolde
16990070	Roderwolde
16990080	Sandebuur
16990090	Lieveren
16990100	Roderesch
16990110	Steenbergen
16990120	Buitengebied Roden Noord
16990130	Buitengebied Roden Zuid
16990140	Buitengebied Roden West
16990300	Norg
16990310	Een
16990320	Langelo
16990330	Peest
16990340	Zuidvelde
16990350	Westervelde
16990360	Veenhuizen
16990370	Verspreide huizen Huis ter Heide
16990380	Verspreide huizen Een-West
16990390	Verspreide huizen Norg
16990400	Verspreide huizen Een
16990410	Verspreide huizen Langelo
16990420	Verspreide huizen Peest
16990430	Verspreide huizen Zuidvelde
16990440	Verspreide huizen Westervelde
16990450	Verspreide huizen Veenhuizen
16990600	Peize
16990610	Altena
16990620	Peizermade
16990630	Verspreide huizen Peize Noord
17000000	Centrum-Vriezenveen
17000001	Midden
17000002	Oosteinde en Slot
17000003	Westeinde
17000004	West ten oosten Kanaal
17000005	West ten westen Kanaal
17000006	Westerweilanden-Elzenhoek
17000007	Toekomstig bestemmingsplan Noord
17000008	Industrieterrein Vriezenveen-West
17000105	Verspreide huizen De Westerhoeve
17000106	Verspreide huizen ten noorden van Vriezenveen
17000107	Verspreide huizen De Pollen
17000108	Verspreide huizen Weitemanslanden
17000109	Verspreide huizen ten zuiden van Vriezenveen
17000200	Vriezenveensewijk
17000201	Westerhaar-West
17000202	Westerhaar-Oost
17000208	Verspreide huizen Westerhaar-Vriezenveensewijk-Oost
17000209	Verspreide huizen Westerhaar-Vriezenveensewijk-West
17000300	Den Ham
17000301	t Sumpel
17000302	Broekmaten
17000307	Buurtschap Meer
17000308	Buurtschap Magele
17000309	Buurtschap Linde
17000400	Vroomshoop-Oost
17000401	Geerdijk-West
17000402	Geerdijk-Oost
17000403	Vroomshoop-West
17000404	Beter Wonen
17000405	Nieuwoord
17000406	Industrieterrein
17000409	Verspreide huizen Vroomshoop-Oost
17010000	Diever
17010003	Wittelte
17010009	Verspreide huizen Diever
17010100	Wapse
17010109	Verspreide huizen Wapse
17010200	Zorgvlied
17010209	Verspreide huizen Zorgvlied
17010300	Dwingelo
17010301	Westeinde
17010302	Stroovledder
17010303	Dwingelderveld
17010309	Verspreide huizen Dwingeloo
17010400	Lhee
17010401	Lheebroek
17010409	Verspreide huizen Lhee
17010500	Eemster
17010509	Verspreide huizen Eemster
17010600	Geeuwenbrug
17010601	Leggeloo
17010609	Verspreide huizen Geeuwenbrug
17010700	Dieverbrug
17010709	Verspreide huizen Dieverbrug
17010800	Havelte
17010801	Darp
17010802	Havelterberg
17010809	Verspreide huizen Havelte
17010900	Uffelte
17010909	Verspreide huizen Uffelte
17011000	Wapserveen midden
17011001	Wapserveen-West
17011002	Wapserveen-Oost
17011009	Verspreide huizen Wapserveen
17011100	Vledder
17011109	Verspreide huizen Vledder
17011200	Frederiksoord
17011209	Verspreide huizen Frederiksoord
17011300	Nijensleek
17011309	Verspreide huizen Nijensleek
17011400	Vledderveen
17011409	Verspreide huizen Vledderveen
17011500	Wilhelminaoord
17011509	Verspreide huizen Wilhelminaoord
17011600	Doldersum
17011609	Verspreide huizen Doldersum
17011709	Verspreide huizen Boschoord
17020000	Sint Anthonis
17020001	Ledeacker
17020008	Verspreide huizen Ledeacker
17020009	Verspreide huizen Sint Anthonis
17020100	Oploo
17020109	Verspreide huizen Oploo
17020200	Westerbeek
17020209	Verspreide huizen Westerbeek
17020300	Stevensbeek
17020309	Verspreide huizen Stevensbeek
17020400	Wanroij
17020409	Verspreide huizen Wanroijs Broek
17020500	Landhorst
17020509	Verspreide huizen De Peel
17050000	Bemmel
17050001	Haalderen
17050002	Angeren
17050003	Doornenburg
17050004	Verspreide huizen Ressen
17050005	Verspreide huizen Angeren
17050006	Verspreide huizen Bemmel
17050007	Verspreide huizen Doornenburg
17050008	Verspreide huizen Bemmel-Lent
17050009	Verspreide huizen Ambtswaard
17050010	Verspreide huizen Haalderen
17050011	Ooijrijkse Polder
17050100	Gendt
17050101	Buurt Gendt
17050102	Kommerdijk
17050103	Hulhuizen
17050104	Flieren
17050108	Verspreide huizen Flieren
17050109	Verspreide huizen Gendtsche Waarden
17050200	Oude Stad Huissen
17050201	Uitbreiding Stad Huissen
17050202	Het Zand
17050203	Zilverkamp
17050207	Verspreide huizen Het Zand
17050208	Verspreide huizen Hoeve en Loostraat
17050209	Verspreide huizen Uiterwaard
17060000	Budel
17060001	Heikant, Meemortel, Bosch
17060002	Keunenhoek Broekkant Schoordijk
17060008	Verspreide huizen Berg en Toom
17060009	Verspreide huizen in het Oosten
17060100	Budel-Schoot
17060101	Klein-Schoot
17060109	Verspreide huizen in het Westen
17060200	Budel-Dorplein
17060201	Industrieterrein Dorplein
17060209	Verspreide huizen Budel-Dorplein
17060300	Maarheeze
17060301	Kamersven
17060302	Industrieterrein Den Engelsman Rondven
17060308	Verspreide huizen Hugten
17060309	Verspreide huizen Maarheeze
17060400	Soerendonk
17060409	Verspreide huizen Soerendonk
17060500	Gastel
17060509	Verspreide huizen Gastelse Hei
17080001	Centrum Steenwijk
17080002	Steenwijk West
17080003	Steenwijkerdiep
17080004	Torenlanden
17080005	Oostwijken, De Beitel
17080006	Clingenborgh
17080007	Dolderkanaal
17080008	Woldmeenthe
17080009	Oostermeenthe
17080010	Meentherand
17080011	Nieuwe gagels
17080012	De gagels
17080014	Groot Verlaat
17080028	Eeserwold
17080029	Paddenpoel en Kornputkwartier
17080030	Buitengebied Steenwijk
17080200	Oldemarkt
17080201	De Boterberg
17080209	Verspreide huizen Oldemarkt
17080300	Kalenberg
17080309	Verspreide huizen Kalenberg
17080400	Kuinre
17080408	Verspreide huizen Lindedijk en Rondebroek
17080409	Verspreide huizen Kuinre
17080500	Kerkbuurt
17080501	Dijkdorp Blankenham
17080509	Buitengebied Blankenham
17080600	Scheerwolde
17080608	Verspreide huizen polder Gelderingen IJsselham
17080609	Verspreide huizen Scheerwolde en Wetering
17080700	Vollenhove
17080701	Moespot-Leeuwte
17080702	Schaarkampen
17080709	Verspreide huizen Vollenhove
17080800	Sint Jansklooster
17080808	Verspreide huizen Sint Jansklooster
17080809	Verspreide huizen Leeuwte gedeeltelijk
17080810	Tussen Sint Jans Klooster en Heetveld
17080811	Heetveld
17080812	Verspreide huizen Kadoelen en omgeving
17080813	Verspreide huizen Barsbeek
17081000	Belt-Schutsloot
17081001	Buitengebied Belt Schutsloot
17081100	Wanneperveen
17081102	Blauwehand
17081103	Buitengebied Wanneperveen
17081104	Ronduite
17081105	Dinxterveen
17081106	Roekebos
17081107	Klosse
17081108	Verspreide huizen Zomerdijk
17081600	Blokzijl
17081601	Scheepsdiep
17081608	Verspreide huizen ten noorden van Blokzijl
17081609	Verspreide huizen ten zuiden van Blokzijl
17081700	Verspreide huizen polder Halfweg
17081701	Verspreide huizen Giethoorn-Noord
17081702	Overig Giethoorn-Noord
17081703	Giethoorn-Noord kern
17081704	Giethoorn-Zuid
17081705	Verspreide huizen polder Giethoorn-Zuid
17081706	Dwarsgracht
17081707	Verspreide huizen Jonen
17081800	Zuidveen
17081801	Buitengebied Zuidveen
17081900	Onna
17081901	Buitengebied Onna
17082000	Kallenkote
17082001	Buitengebied Kallenkote
17082100	Eesveen
17082101	Buitengebied Eesveen
17082200	De Bult
17082300	Baars
17082400	Witte Paarden
17082401	Buitengebied Witte Paarden
17082500	De Pol
17082600	Willemsoord
17082601	Buitengebied Willemsoord
17082700	Marijenkampen
17082800	Tuk
17082801	Buitengebied Tuk
17082900	Steenwijkerwold
17082901	Buitengebied Steenwijkerwold
17083000	Basse
17083001	Buitengebied Basse
17083100	Paasloo
17083200	IJsselham
17083300	Ossenzijl
17083301	Buitengebied Ossenzijl
17083400	Wetering
17083401	Buitengebied Wetering
17083500	Nederland
17083600	Baarlo
17090000	Centrum
17090001	Torenveld
17090002	Krooswijk
17090003	Bosselaar
17090004	Lindonk
17090005	Schansdijk en omgeving
17090006	Zwanengat en omgeving
17090008	Verspreide huizen ten westen van Zevenbergen
17090009	Verspreide huizen ten oosten van Zevenbergen
17090100	Zevenbergschen Hoek
17090109	Verspreide huizen Zevenbergschen Hoek
17090200	Langeweg
17090209	Verspreide huizen Langeweg
17090300	Klundert
17090301	Noordschans
17090302	Tonnekreek
17090303	Industrieterrein Moerdijk
17090309	Verspreide huizen Klundert
17090400	Moerdijk
17090401	Roodevaart
17090409	Verspreide huizen Moerdijk
17090500	Noordhoek
17090509	Verspreide huizen Noordhoek
17090600	Standdaarbuiten
17090601	Kreek
17090609	Verspreide huizen Standdaarbuiten
17090700	Fijnaart
17090701	Oudemolen
17090702	Nieuwemolen met Driehoek
17090703	Zwingelspaan
17090709	Verspreide huizen Fijnaart
17090800	Heijningen
17090809	Verspreide huizen Heijningen
17090900	Willemstad
17090901	Noordlangeweg
17090902	Kloosterblokje
17090909	Verspreide huizen Willemstad
17091000	Helwijk
17091009	Verspreide huizen Helwijk
17110101	Baakhoven
17110102	In de Mehre
17110103	Mariaveld
17110104	Middelveld
17110105	Munsterveld
17110106	Susteren Centrum
17110107	Verspreide huizen Susteren
17110108	Wolfskoul
17110153	Handelsterrein
17110209	Dieteren
17110210	Verspreide huizen Dieteren
17110311	Heide
17110312	Recreatiepark Hommelheide
17110313	Verspreide huizen Heide
17110414	Illikhoven en Visserweert
17110415	Kokkelert
17110416	Oud-Roosteren
17110417	Roosteren
17110418	Verspreide huizen Illikhoven en Visserweert
17110419	Verspreide huizen Roosteren
17110456	Buitengebied Oud-Roosteren
17110520	Aasterberg
17110521	Berkelaar
17110522	De Berk
17110523	De Loop
17110524	Echt Centrum
17110525	Echt Noord
17110526	Gebroek
17110527	Ophoven
17110528	Businesspark Midden-Limburg
17110547	Buitengebied de Berk
17110548	Buitengebied de Loop
17110549	Buitengebied Gebroek
17110551	Buitengebied Ophoven
17110554	Buitengebied Berkelaar
17110555	Buitengebied Aasterberg
17110628	Diergaarde
17110629	Echterbosch
17110630	Maria Hoop
17110731	Hingen
17110732	Peij
17110733	Peijerveld
17110734	Recreatiepark Marisheem
17110735	Schilberg
17110750	Buitengebied Hingen
17110836	Liboscherveld
17110837	Slek
17110938	Verspreide huizen Nieuwstadt
17110939	Nieuwstadt Centrum
17110940	Cristina
17111041	Sint Joost
17111042	Verspreide Huizen Sint Joost
17111143	Koningsbosch
17111144	Lackerbosch
17111145	Spaanshuisken
17111146	Aan het Echterbos
17111152	Buitengebied Spaanshuisken
17140000	Sluis
17140001	Sint Anna ter Muiden
17140009	Verspreide huizen Sluis
17140100	Retranchement
17140109	Verspreide huizen Retranchement
17140200	Aardenburg
17140209	Verspreide huizen Aardenburg
17140300	Eede
17140309	Verspreide huizen Eede
17140400	Sint Kruis
17140409	Verspreide huizen Sint Kruis
17140500	Oostburg
17140509	Verspreide huizen Oostburg
17140600	Zuidzande
17140609	Verspreide huizen Zuidzande
17140700	Cadzand
17140701	Cadzand-Bad
17140709	Verspreide huizen Cadzand
17140800	Nieuwvliet
17140801	Nieuwvliet-Bad-Oost en -West
17140809	Verspreide huizen Nieuwvliet
17140900	Groede
17140909	Verspreide huizen Groede
17141000	Breskens
17141009	Verspreide huizen Breskens
17141100	Hoofdplaat
17141101	Nummer Eén en omgeving
17141108	Verspreide huizen Nummer Eén en Slijkplaat
17141109	Overige verspreide huizen Hoofdplaat
17141200	IJzendijke
17141209	Verspreide huizen IJzendijke
17141300	Schoondijke
17141309	Verspreide huizen Schoondijke
17141400	Waterlandkerkje
17141409	Verspreide huizen Waterlandkerkje
17190000	Made
17190008	Tuinbouwgebied
17190009	Verspreide huizen Made
17190100	Drimmelen
17190108	Verspreide huizen Biesbosch
17190109	Verspreide huizen Drimmelen
17190200	Terheijden
17190208	Verspreide huizen Binnenpolder
17190209	Verspreide huizen Zonzeelsepolder
17190300	Wagenberg
17190309	Verspreide huizen Wagenberg
17190400	Lage Zwaluwe inclusief Gaete
17190401	Blauwe Sluis
17190409	Verspreide huizen Lage Zwaluwe
17190500	Hooge Zwaluwe
17190501	Helkant
17190508	Verspreide huizen Groot Zonzeelsche Polder
17190509	Verspreide huizen Hooge Zwaluwe
17210101	t Dorp
17210102	Oranjebuurt
17210103	t Vijfeiken
17210104	Schoonstraat
17210105	Kennedystraat
17210106	Den Berg
17210107	Heelwijk
17210108	Componistenbuurt
17210109	Monseigneur van Den Hurklaan
17210110	Buitenpas - Noordrand
17210111	De Velft
17210112	Bekerbuurt
17210113	Wagnerplein
17210114	Het Rul
17210115	De Zeis
17210116	Graanbuurt
17210117	De Hoef 1
17210118	De Hoef 2
17210119	Broekhoek - Middelste Groes
17210120	De Beemd
17210201	St Servatius - Schoonstr - Den Dolvert
17210202	Hoofdstraat
17210203	Heilige Stok - Kerkstraat
17210204	De abdij
17210205	Graaf Wernerstraat
17210206	Oranjewijk
17210207	Balledonk
17210208	Hopveld - Muggenhoek
17210209	Eikenhoek
17210210	Heilaren
17210211	Rodenburg
17210301	Laar
17210302	De Hoef
17210303	Kerkveld
17210304	Donzel
17210305	Maxend
17210306	Weijen West
17210307	Hoge Akkers
17210308	Van t Rijk
17210309	Kleinwijk
17210310	Zwarte Molen
17210401	De Bleeken - t Grolder
17210402	Zoggel - Berkt
17210403	Hooge Wijst - De Vorssel
17210501	Beugt
17210502	Fokkershoek
17210503	Heeswijkse Bosschen
17210504	Hazelberg
17210505	Heische Wal - DintherseHoek
17210506	Loosbroek
17210601	Groote Heide
17210602	Vorstenbosch
17210603	Menzel
17230000	Alphen
17230001	Villawijk t Zand
17230009	Buitengebied Alphen
17230100	Chaam
17230108	Verspreide huizen in het Noordoosten
17230109	Verspreide huizen in het Zuidwesten
17230200	Galder
17230208	Verspreide huizen Galder
17230209	Verspreide huizen Strijbeek
17230809	Verspreide huizen Ulvenhout
17230909	Verspreide huizen Bavel
17240001	Broekstraat-Hoek-Lijnt-Eijkereind
17240002	Kleine Broekstraat
17240003	Jeruzalem
17240004	Burgemeester Magneestraat en omstreken
17240005	Dokter A Hoynck van Papendrechtstraat-Dokter Duchateaustraat
17240006	Kept en omstreken
17240007	Hof
17240008	Meester Pankenstraat-Riethovensedijk
17240009	Bucht en omstreken
17240010	Schutsboom en omstreken
17240011	Eerselsedijk-Woonbos en omstreken
17240012	Van den Valgaetstraat en omstreken
17240013	Hagelkruis en omstreken
17240014	Beistervelden
17240015	De Kabouterberg en omstreken
17240016	Eikenberg-Hooge Berkt
17240017	Industrieterrein  t Stoom 
17240101	Weebosch
17240201	Tiliaans-Weegbree en omstreken
17240202	Prins van Luikstraat en omstreken
17240203	Dorpstraat-Sengelsbroeksestraat
17240204	Hasselsestraat en omstreken
17240205	Kerkstraat en omstreken
17240206	Dorpstraat
17240207	Kapellerweg-Rijt
17240208	Molenstraat en omstreken
17240209	Industrieterrein Loonsebaan
17240210	Boscheind
17240211	Industrieterrein Zoeferbeemd
17240301	Dorpsplein en omstreken
17240302	Eviestraat-Vlasstraat en omstreken
17240303	Willibrordusstraat en omstreken
17240304	Dorpsstraat en omstreken
17240306	De Hasselt en omstreken
17240307	Walik
17240401	Heijerstraat-Loveren
17240402	Dorpsstraat en omstreken
17240403	Aarperstraat-Lange Akkers
17240404	Heuvel
17240405	Beukenlaan en omstreken
17240406	Hoeverstraat en omstreken
17240407	Steenovens
17240408	Aan de Heerstraat en omstreken
17240409	Industrieterrein Leemskuilen
17240501	Loo
17240502	Van den Tillaartstraat en omstreken
17240503	Industrieterrein Waterlaat
17240504	Langveld en omstreken
17240505	Weebosserweg-Breerijt
17240601	Buitengebied Noord 1
17240602	Buitengebied Noord 2
17240603	Buitengebied Noord 3
17240604	Buitengebied Noord 4
17240605	Buitengebied Zuid-Oost
17240606	Buitengebied Noord-West 1
17240607	Buitengebied Noord-West 2
17240608	Buitengebied Zuid-West
17240609	Buitengebied Zuid 1
17240610	Buitengebied Zuid 2
17280000	Bladel Centrum
17280001	Bladel Bedrijventerrein De Sleutel
17280002	Bladel Bedrijventerrein De Beemd en Leemskuilen
17280003	Bladel Wilhelminalaan
17280004	Bladel Gozelinusbocht
17280005	Bladel Heeleind
17280006	Bladel Hofstad
17280007	Bladel Veilig Oord
17280008	Bladel Zuid
17280009	Verspreide huizen Bladel
17280100	Netersel
17280109	Verspreide huizen Netersel
17280200	Hapert Centrum
17280201	Industrieterrein Hapert
17280202	Hapert Oost
17280203	Hapert Noord
17280204	Hapert Zuid-West
17280207	Hapert Het Vennenbos
17280208	Hapert Kempisch Bedrijvenpark
17280209	Verspreide huizen Hapert
17280300	Hoogeloon
17280301	Hoogcasteren en omgeving
17280309	Verspreide huizen Hoogeloon
17280400	Casteren
17280409	Verspreide huizen Casteren
17290000	Gulpen
17290001	Ingber-De Hut
17290002	Euverem, Pesaken, Billinghuizen en Waterop
17290003	Reijmerstok
17290009	Verspreide huizen
17290100	Wijlre
17290101	Etenaken
17290102	Stokhem-Beertsenhoven
17290103	Elkenrade
17290109	Verspreide huizen
17290200	Eys-Overeys
17290201	Trintelen
17290202	Eyserheide
17290209	Verspreide huizen
17290300	Partij-Wittem
17290301	Wahlwiller
17290302	Nijswiller
17290309	Verspreide huizen
17290400	Mechelen
17290401	Hilleshagen
17290402	Schweiberg-Dal
17290409	Verspreide huizen
17290500	Epen
17290501	Eperheide
17290509	Verspreide huizen
17290600	Slenaken
17290601	Heijenrade
17290602	Beutenaken
17290603	Schilberg-Hoogcruts
17300000	Zuidlaren
17300001	Zuid-Es
17300009	Verspreide huizen Zuidlaren
17300100	De Groeve
17300109	Verspreide huizen De Groeve
17300200	Zuidlaarderveen
17300209	Verspreide huizen Zuidlaarderveen
17300300	Midlaren
17300309	Verspreide huizen Midlaren
17300400	Westlaren
17300401	Westlaren Noord
17300402	Verspreide huizen Westlaren
17300403	Westlaren-West
17300500	Schuilingsoord
17300509	Verspreide huizen Schuilingsoord
17300600	Paterswolde
17300609	Verspreide huizen Paterswolde
17300700	Eelde
17300701	Oosterbroek en vliegveld
17300709	Verspreide huizen Eelde
17300800	Eelderwolde
17300809	Verspreide huizen Eelderwolde
17300900	Vries
17300909	Verspreide huizen Vries
17301000	Donderen
17301009	Verspreide huizen Donderen
17301100	Bunne
17301101	Winde
17301108	Verspreide huizen Winde
17301109	Verspreide huizen Bunne
17301200	Yde
17301201	De Punt
17301208	Verspreide huizen De Punt
17301209	Verspreide huizen Yde
17301300	Tynaarlo
17301309	Verspreide huizen Tynaarlo
17301400	Zeegse
17301401	Oudemolen
17301402	Taarlo
17301407	Verspreide huizen Zeegse
17301408	Verspreide huizen Oudemolen
17301409	Verspreide huizen Taarlo
17301500	Zeijen
17301509	Verspreide huizen Zeijen
17310000	Beilen
17310001	Lieving Makkum
17310002	Holthe
17310003	Brunsting
17310009	Verspreide huizen Beilen
17310100	Hijken
17310101	Oranje
17310109	Verspreide huizen Hijken
17310200	Hooghalen
17310201	Laaghalen
17310209	Verspreide huizen Hooghalen
17310300	Wijster
17310309	Verspreide huizen Wijster
17310400	Spier
17310409	Verspreide huizen Spier
17310500	Drijber
17310509	Verspreide huizen Drijber
17310600	Smilde-Centrum
17310601	Smilde-Noord
17310602	Smilde-Zuid
17310609	Verspreide huizen Smilde
17310700	Bovensmilde-Centrum
17310701	Bovensmilde-Noord
17310702	Bovensmilde-Zuid
17310709	Verspreide huizen Bovensmilde
17310800	Hoogersmilde-Centrum
17310801	Hoogersmilde-Noord
17310802	Hoogersmilde-Zuid
17310809	Verspreide huizen Hoogersmilde
17310900	Westerbork
17310901	Eursinge
17310909	Verspreide huizen Westerbork
17311000	Elp
17311001	Zuidveld
17311009	Verspreide huizen Elp
17311100	Witteveen
17311109	Verspreide huizen Witteveen
17311200	Nieuw-Balinge
17311209	Verspreide huizen Nieuw-Balinge
17311309	Verspreide huizen Nieuweroord
17311400	Zwiggelte
17311409	Verspreide huizen Zwiggelte
17311500	Orvelte
17311509	Verspreide huizen Orvelte
17311600	Garminge
17311601	Balinge
17311602	Mantinge
17311609	Verspreide huizen de Broekstreek
17340101	Eimeren
17340102	Buitengebied Elst Oost
17340103	Buitengebied Hollanderbroek
17340104	Reeth
17340201	Kersenbongerd
17340202	de Wuurde
17340203	Elst centrum Zuidzijde
17340204	Lynden
17340205	Vosbergen
17340206	Huyekamp
17340207	de Zuiling
17340301	de Helster
17340302	Steding
17340303	Elst Centrum Noordzijde
17340304	Molenberg
17340305	Hollanderbroek
17340306	de Kist
17340401	Merm
17340402	De Aam
17340501	Westeraam, Centrale zone
17340502	Lingebuurt
17340503	Vierslag
17340504	Groenoord
17340505	Lanenbuurt
17340601	Omgeving Oude Bemmelseweg
17340602	Eshof
17340603	De Brieneshof-De Pas
17340701	Kern Oosterhout
17340702	Buitengebied Oosterhout oost
17340703	De Rietgraaf
17340704	Buitengebied Oosterhout West
17340705	Tergouw
17340706	Uiterwaarden Oosterhoutsche Waarden
17340801	Loenen
17340802	Kern Slijk-Ewijk
17340803	Uiterwaarden Loenense butenpolder
17340804	Buitengebied de Danenberg
17340901	Buitengebied Herveld Zuid
17340902	Kern Herveld
17340903	Omg Binnenstraat-Stenenkamerstraat
17340904	Buitengebied Herveldse Veld
17340905	Kern Herveld Zuid
17341001	Wolferen
17341002	Bedrijventerrein Andelst Oost
17341003	Buitengebied Andelst
17341004	De Schalm
17341005	Uiterwaarden Andelst
17341006	Kern Andelst
17341101	Zetten Centrum
17341102	Zetten Noord-Magdalena
17341103	Omg Sterappel, Loohof en Zetten Zuid
17341104	Blokland
17341105	Zetten NoordWest
17341106	Rieshout
17341107	Omg Vluchtheuvellaan
17341201	Buitengebied Zetten Oost
17341202	Buitengebied Zetten West
17341301	Kern Hemmen
17341302	Buitengebied Hemmen
17341401	Kern Randwijk
17341402	Buitengebied Randwijk
17341403	Indoornik
17341404	Buitengebied Lakemond
17341405	Uiterwaarden Randwijk
17341501	Poort van Midden-Gelderland Zuid Heterenkum
17341502	Liefkenshoek
17341503	Poort van Midden-Gelderland Noord 1en2en3
17341504	De Haantjes-Vogelbuurt
17341505	Omg Julianaweg
17341506	Kern Heteren
17341507	Melkweide
17341601	Uiterwaarden Heteren
17341602	Buitengebied Heteren Boterhoek-Weerbroek
17341603	Buitengebied Heteren Uylenburg
17341701	Buitengebied Valburg Zuid
17341702	Molenzicht
17341703	Buitengebied Homoet
17341704	De Weem
17341705	Buitengebied De Meilanden
17341706	Kern Valburg
17341801	Buitengebied Driel Noordhoek en Boltweg
17341802	Vogelbuurt
17341803	Uiterwaarden Driel
17341804	Breekenhof
17341805	Kern Driel
17341806	Buitengebied Driel Keulse Kamp-GrietenKamp-Leedjes
17341807	Oldenhof
17341808	omg Reuvenkamp
17350000	Centrum-Goor
17350001	De Whee I
17350002	Bungalow-wijk
17350003	Heeckeren
17350004	Dr Schaepmanbuurt
17350005	Gijmink
17350006	Waterhoek
17350007	Industriegebied Spechthorst I
17350008	De Meene
17350009	Industriegebied Kevelhammerhoek
17350100	De Whee II-Noord
17350101	De Whee II-Zuid
17350102	Industriegebied Spechthorst II
17350109	Kerspel
17350200	Markelo
17350206	Verspreide huizen Markelerbroek
17350207	Verspreide huizen Stokkum
17350208	Verspreide huizen Herike
17350209	Verspreide huizen Markelo
17350309	Verspreide huizen Kerspel en Goor
17350407	Verspreide huizen Elsen
17350408	Verspreide huizen Elsenerbroek
17350409	Verspreide huizen Elzenerveen en Borkeld
17350500	Diepenheim-Noord
17350501	Diepenheim-Zuid
17350508	Verspreide huizen Markvelde
17350509	Verspreide huizen Kerspel en Schipbeek
17350600	Delden-Centrum
17350601	Oud Zuiderhagen
17350602	Greekerinckskamp
17350603	t Kip
17350604	Schoppenstee
17350605	Vogelweiden
17350606	Hooijerinkses
17350607	Sint Annabrink
17350608	Rupertserf
17350609	Vossenbrink en De Braak
17350700	Industrieterrein-Delden
17350709	Verspreide huizen Deldeneresch
17350800	Hengevelde
17350805	Verspreide huizen Hengevelde
17350806	Verspreide huizen Deldeneresch
17350807	Verspreide huizen Deldenerbroek
17350808	Verspreide huizen Azelo
17350809	Verspreide huizen Zeldam
17350900	Bentelo kern
17350908	Verspreide huizen Wiene
17350909	Verspreide huizen Bentelo
17400000	Kesteren
17400001	Opheusden
17400006	Verspreide huizen Lede en Oudewaard
17400007	Verspreide huizen Kesteren
17400008	Verspreide huizen Opheusden
17400009	Verspreide huizen poldergebied
17400100	Ochten
17400101	Echteld
17400102	IJzendoorn
17400103	Pottemsestraat en Groenestraat en omgeving
17400106	Verspreide huizen Echteld-Waalbandijk
17400107	Verspreide huizen Echteld
17400108	Verspreide huizen IJzendoorn
17400109	Verspreide huizen Ochten
17400200	Kom Dodewaard met Hien
17400201	Kom Wely
17400208	Verspreide huizen Dodewaard-Oost en Wely
17400209	Verspreide huizen Dodewaard-West
17420000	Kern-Rijssen
17420001	Kern rand Noord
17420002	Kern rand Oost
17420003	Kern rand Zuid
17420100	Lenfert en omgeving
17420101	De Delle
17420102	Braakmanslanden
17420104	Dannenberg
17420105	Veeneslagen
17420106	Opbroek
17420207	Verspreide huizen Ligtenberg
17420208	Verspreide huizen Zuidrand en omgeving
17420209	Verspreide huizen Nieuwland en omgeving
17420300	Holten-Kom en De Kol
17420301	Holten-De Haar
17420302	Holten ten noorden van de spoorlijn
17420303	De Holterberg
17420304	Villaterrein Look
17420305	De Beuseberg
17420308	Lukensveld
17420309	Liesen
17420401	Industrieterrein de Haar
17420402	Vletgaarsmaten
17420500	Buurtschap Neerdorp
17420501	Buurtschap Holterbroek
17420502	Buurtschap Beuseberg
17420503	Buurtschap Espelo
17420504	Buurtschap Borkeld
17420505	Buurtschap Look
17420506	Buurtschap Holterberg
17420507	Buurtschap Lichtenberg
17420508	Dijkerhoek kern
17420509	Verspreide huizen Dijkerhoek
17420701	De Mors en Plaagslagen
17420801	Zomerhuisjesterrein De Borkeld
17710000	Centrum
17710001	Skandia
17710002	Akert
17710003	Zesgehuchten
17710004	Braakhuizen-Noord
17710005	Braakhuizen-Zuid
17710006	Coevering
17710007	Genoenhuis
17710009	Gijzenrooi
17710100	Mierlo
17710109	Verspreide huizen Mierlo
17730111	Olst Centrum-West
17730112	Olst Centrum-Oost
17730113	Stationswijk en Industrieweg
17730114	Kortrick en Zonnekamp
17730115	Buitengebied Olst
17730216	Wijhe Centrum
17730217	Peperkamp en De Enk
17730218	Krijtenberg en Noorder Koeslag
17730219	Buitengebied Wijhe
17730320	Wesepe Kern
17730321	Buitengebied Wesepe
17730422	Boskamp Kern
17730423	Buitengebied Boskamp
17730524	Boerhaar Kern
17730525	Buitengebied Boerhaar
17730626	Welsum
17730727	Den Nul Kern
17730728	Buitengebied Den Nul
17730829	Eikelhof
17730930	Elshof
17731031	Marle
17731132	Middel
17731233	Herxen
17741010	Centrum
17741011	Kerkeres
17741012	Klokkenberg
17741013	Dorper-Es
17741014	Veldkamp en Borchert
17741015	Janskamp
17741017	Diepengoor
17741020	t Pierik
17741050	Kloppendijk
17741051	Sombeek
17741099	Buitengebied Denekamp
17741110	Lattrop kern
17741198	Verspreide huizen Breklenkamp
17741199	Verspreide huizen Lattrop
17741210	Tilligte kern
17741299	Verspreide huizen Tilligte
17741398	Verspreide huizen Groot Agelo
17741399	Verspreide huizen Klein Agelo
17741410	Noord Deurningen kern
17741499	Verspreide huizen Noord Deurningen
17741510	Ootmarsum Kern
17741511	Ootmarsum Randkern
17741512	Ootmarsum villapark Stobbenkamp
17741513	Ootmarsum Cellenkamp Palthenkamp
17741514	Moerbekkenkamp
17741515	Wildehof
17741516	Vinke-Brookhuis
17741550	De Mors
17741598	Verspreide huizen Ootmarsum-Oost
17741599	Buitengebied Ootmarsum-West
17741610	Weerselo
17741611	Eertman
17741612	Reestman
17741613	t Stift
17741614	t Spikkert
17741650	Echelpoel
17741699	Verspreide huizen Weerselo
17741710	Rossum
17741799	Verspreide huizen Rossum
17741810	Saasveld
17741899	Verspreide huizen Saasveld
17741910	Kern Deurningen
17741999	Verspreide huizen Deurningen
17742099	Verspreide huizen Nutter
17742199	Verspreide huizen Oud Ootmarsum
17830101	Naaldwijk Centrumgebied
17830103	Opstal
17830105	Geestcomplex
17830111	Kruisbroek
17830113	Pijletuinen
17830154	Buitengebied Naaldwijk
17830155	Bedrijventerrein De Woerd
17830157	Hoge Bomen
17830159	Hoogeland Oost
17830160	Hoogeland West
17830161	Woerdblok
17830201	Honselersdijk centrum
17830207	Vogelwijk
17830211	Burgemeesterswijk
17830251	Bedrijventerrein Honsel
17830253	Achter de Dijk
17830256	Bedrijventerrein Bloemenveiling
17830257	Buitengebied Honselersdijk
17830301	Woonkern maasdijk
17830306	Bedrijventerrein De Hoeven
17830351	Bedrijventerrein Honderland & Coldenhove
17830352	Buitengebied Maasdijk
17830401	centrumgebied s-Gravenzande
17830402	Zandevelt
17830403	Vend kasteelewijk
17830404	Oudeland
17830405	Edelstenenwijk
17830406	Vreeburgh
17830407	Dorp oost
17830408	Nieuwe Vaart
17830409	Bedrijventerrein Teylingen
17830410	Heenweg
17830420	s-Gravenzande Buitengebied
17830421	Kust s-Gravenzande
17830480	Het Nieuwe water
17830502	Monster Centrumgebied
17830504	Kleine Geest en Molenwijk
17830505	Zwartenhoek
17830506	Grote Geest en Molenwijk
17830507	Polanen
17830508	Westlandse Zoom De Duinen
17830509	Buitengebied Monster
17830510	Westerhonk
17830511	Bedrijventerrein Vlotlaan
17830521	Kust Monster
17830601	Kwintsheul-Oost
17830602	Plan Zuid
17830606	Hofwijk en Oranjehof
17830607	Wateringen Noord en Ambachtshof
17830608	Suydervelt
17830609	Buitengebied wateringen
17830610	Vliettuinen
17830611	Essellanden
17830612	Bedrijventerrein Wateringen
17830701	Buitengebied De Lier
17830702	Bedrijventerrein Westerlee
17830703	De Lier Centrumgebied
17830710	De Lier West
17830711	Sportpark de Zweth
17830712	Bleyenburg
17830713	Molensloot
17830714	Zeehelden van Oranje
17830801	Kwintsheul Centrumgebied
17830802	Bedrijventerrein Bovendijk
17830803	Buitengebied Kwintsheul
17830900	Buitengebied Poelldijk-Oost
17830901	Poeldijk Centrumgebied
17830902	Poeldijk Noord
17830903	Westhof en Dijkpolder
17830904	Bedrijventerrein ABC Westland
17830905	Bedrijventerrein Mercurius
17830966	Buitengebied Poeldijk-West
17831001	Ter Heijde
18420000	Schipluiden
18420001	Den Hoorn
18420002	Hodenpijl
18420004	Gaag-Schipluiden
18420005	Negenhuizen en Zouteveen
18420007	t Woudt
18420009	Verspreide huizen Schipluiden
18420100	Maasland
18420101	Ter Lucht
18420103	Gaag-Maasland
18420106	Dijkpolder
18420108	Verspreide huizen Dijkpolder
18420109	Verspreide huizen Duifpolder en omgeving
18590000	Borculo Centrum
18590002	Hambroek
18590003	Geesteren
18590004	Gelselaar
18590005	Haarlo
18590006	Verspreide huizen Gelselaar
18590007	Verspreide huizen Geesteren
18590008	Verspreide huizen Borculo
18590009	Verspreide huizen Haarlo
18590010	Elbrink
18590011	Noord
18590012	Oostenrijkse Buurt
18590013	Industrieterrein Borculo
18590014	West
18590015	De Koppel
18590016	De Maat
18590017	Nieuw Boer
18590018	Schollenkamp
18590102	Rekken
18590104	Verspreide huizen Hupsel-West
18590105	Verspreide huizen Hupsel-Oost
18590106	Verspreide huizen Holterhoek
18590107	Verspreide huizen Mallem en Loo
18590108	Verspreide huizen Olden Eibergen
18590109	Verspreide huizen Rekken
18590110	Westenesch-Hofrichter
18590111	De Mors
18590112	Dn Esch
18590113	Bronbeek-Rozenkamp
18590114	Zuivelfabriek
18590115	Op de Bleek
18590116	Eibergen Centrum
18590117	Mollemors
18590118	Berkellanden
18590119	Prins Bernhardstraat eo
18590120	Simmelink West
18590121	Simmelink Noord
18590122	Simmelink Zuid
18590123	Vrijersmaat-Plan Zuid
18590124	Industrieterrein De Kiefte
18590200	Beltrum
18590206	Verspreide huizen Voor-Beltrum
18590207	Verspreide huizen Beltrum Lintvelde en Avest
18590209	Verspreide huizen Beltrumsche Veld
18590301	Noordijk
18590302	Rietmolen
18590307	Verspreide huizen Rietmolen en Broeke
18590308	Verspreide huizen Noordijk
18590309	Verspreide huizen Neede
18590310	De Berg
18590311	Roodland
18590312	Ruwenhof-Meijersveld
18590313	Hondelink
18590314	Hofmaat
18590315	Neede Centrum
18590316	Julianastraat eo
18590317	De Kamp-Spilbroek
18590318	Moeshof eo
18590319	Industerrein Neede
18590405	Verspreide huizen Ruurlo
18590406	Verspreide huizen Veldhoek
18590407	Verspreide huizen Heurne
18590408	Verspreide huizen Zuidelijk Broek
18590410	Verspreide huizen Ruurlosche Broek
18590411	Everwenninkhoek
18590412	Garvelinkkamp
18590413	Smidsbrink
18590414	Ruurlo Centrum
18590415	Haarskamp
18590416	Leusinkbrink
18590417	t Loo
18590418	Industrieterrein Ruurlo
18760000	Hengelo
18760001	Keijenborg
18760002	Veldhoek
18760004	Verspreide huizen Keijenborg
18760005	Verspreide huizen Dunsborg
18760006	Verspreide huizen Hengelo en Noordink
18760007	Verspreide huizen Bekveld en Gooi
18760008	Verspreide huizen Varssel
18760009	Verspreide huizen Zuidelijk bosgebied
18760100	Zelhem
18760101	Halle
18760102	Velswijk
18760103	Verspreide huizen Zelhem
18760104	Verspreide huizen Halle
18760105	Verspreide huizen Velswijk
18760200	Vorden
18760201	Kranenburg
18760202	Wichmond
18760203	Verspreide huizen Vierakker
18760204	Verspreide huizen Wichmond
18760207	Verspreide huizen Linde, Mossel en Wildenborch
18760208	Verspreide huizen Grote Veld
18760209	Verspreide huizen Delden en Veldwijk
18760300	Steenderen
18760301	Bronkhorst
18760302	Baak
18760303	Olburgen
18760304	Rha
18760305	Toldijk
18760306	Verspreide huizen Bakerwaard
18760307	Verspreide huizen Olburgen en Rha
18760308	Verspreide huizen Baak
18760309	Verspreide huizen Toldijk
18760310	Verspreide huizen Steenderen
18760400	Hummelo
18760401	Hoog-Keppel
18760402	Laag-Keppel
18760403	Drempt
18760404	Achterdrempt
18760405	Verspreide huizen ten noorden van Drempt
18760406	Verspreide huizen Hummelo
18760407	Verspreide huizen Hummelo-Broek
18760408	Verspreide huizen ten zuidoosten van Hummelo
18760409	Verspreide huizen Hoog-Keppel
18760410	Verspreide huizen Oude IJsselgebied
18830001	Limbrichterveld
18830008	Industrieterrein Bergerweg-Rosengarten
18830100	Sittard-Centrum
18830101	Sanderbout
18830102	Ophoven
18830103	Kollenberg-Park Leyenbroek
18830109	Omgeving Watersley
18830200	Overhoven
18830201	Baandert
18830202	Stadbroek
18830203	Vrangendael
18830204	Broeksittard
18830205	Kemperkoul
18830208	Industrieterrein Noord
18830209	Omgeving Schwienswei
18830300	Munstergeleen
18830301	Wintraak
18830400	Guttecoven
18830401	Limbricht
18830402	Einighausen
18830501	Geleen-Centrum
18830502	Geleen-Noord
18830503	Lindenheuvel
18830504	Geleen-Zuid
18830505	Kluis
18830506	Oud-Geleen en Haesselderveld
18830507	Industriegebied DSM en Graetheide
18830601	Holtum
18830602	Buchten
18830603	Born
18830604	Hondsbroek
18830606	Graetheide
18830607	Industriegebied
18830609	Omgeving Limbrichterbos-Wolfrath
18830700	Obbicht
18830701	Papenhoven
18830702	Grevenbicht
18840000	Roelofarendsveen
18840001	Oude Wetering
18840002	Roelofarendsveen-Noord
18840003	Burgemeesterswijk
18840004	Tuinbouwgebied
18840101	Nieuwe Wetering
18840102	Rijpwetering
18840104	Oud Ade en Zevenhuizen
18840105	Kaag
18840107	Verspreide huizen Veenderpolder
18840109	Overige verspreide huizen
18840200	Woubrugge
18840201	Ofwegen
18840202	Hoogmade
18840203	Woubrugge-West
18840207	Verspreide huizen Vierambachtspolder
18840208	Verspreide huizen Oudendijkse polder
18840209	Overige verspreide huizen
18840300	Rijnsaterwoude
18840309	Verspreide huizen Rijnsaterwoude
18840400	Leimuiden
18840402	Vriezekoop
18840404	Bilderdam
18840405	Uitbreiding West
18840407	Verspreide huizen Vriezekoopse polder
18840408	Verspreide huizen West
18840409	Verspreide huizen Oost
18910000	Damwâld
18910001	Broeksterwâld
18910002	De Falom
18910008	Verspreide huizen Damwâld
18910009	Verspreide huizen Broeksterwâld
18910100	Driezum
18910101	Wâlterswâld
18910108	Verspreide huizen Driezum
18910109	Verspreide huizen Wâlterswâld
18910200	De Westereen
18910201	Feanwâlden
18910202	Readtsjerk
18910208	Verspreide huizen De Westereen
18910209	Verspreide huizen Feanwâlden
18910300	Rinsumageast
18910301	Sibrandahûs
18910309	Verspreide huizen Rinsumageast
18920101	Kern Moerkapelle
18920102	Wilde Veenen
18920103	Moerkapelle-West
18920104	Moerkapelle-Oost
18920105	Bedrijventerrein Moerkapelle
18920106	Moerkapelle kassengebied
18920107	Jonge Veenen
18920191	Verspreide bebouwing Moerkapelle
18920201	Kern Zevenhuizen
18920202	Swanla
18920203	Zevenhuizen Bloemenbuurt
18920204	Bedrijventerrein Zevenhuizen
18920205	Zevenhuizen-West 1
18920206	Zevenhuizen-West 2
18920207	Recreatiepark De Korenmolen
18920208	Recreatiepark De Bonk
18920209	Oud Verlaat
18920210	Zevenhuizerplas
18920211	Zevenhuizen-Zuid
18920291	Verspreide bebouwing Tweemanspolder
18920292	Verspreide bebouwing Zuidplaspolder Zevenhuizen
18920293	Verspreide bebouwing Eendragtspolder
18920301	Kern Moordrecht
18920302	Moordrecht Bloemenbuurt
18920303	Dorp Noord
18920304	StaatsliedenbuurtenVijfakkers
18920305	Ambonwijk
18920306	Westeinde
18920307	Uiterwaard
18920308	Bedrijventerrein t Ambacht
18920309	Recreatiepark Oosteinde
18920310	Bedrijventerrein Gouwepark
18920311	Vijfakkers-Noord
18920399	Verspreide bebouwing Moordrecht
18920401	Kern Nieuwerkerk aan den IJssel
18920402	Bedrijventerrein De Hooge Veenen
18920403	Zuidplas Kruiden
18920404	Zuidplas Velden
18920405	Kleinpolder
18920406	Kortenoord
18920407	Recreatiepark Klein Hitland
18920408	Esse Hoog
18920409	Esse Laag
18920410	Bomenbuurt
18920411	Dorrestein-Noord
18920412	Parkzoom
18920413	Esse Zoom Laag
18920414	Zuidplas Mossen
18920415	Zuidplas Dalen
18920416	Dorrestein-Zuid
18920491	Verspreide bebouwing Zuidplaspolder Nieuwerkerk aan den IJss
18920492	Verspreide bebouwing Essepolder
18920493	Verspreide bebouwing Achter Esse
18940000	Grashoek
18940001	Koningslust
18940002	Kievitsheide
18940003	Vliegert
18940100	Beringe
18940101	Panningen
18940102	Helden
18940104	Vosberg-Loo
18940105	Egchel
18940106	Zelen-Hub
18940107	Groeze
18940108	Onder-Eindt-Zandberg
18940109	Keup
18940200	Kessel
18940203	Kesseleik
18940204	Hout en Oijen
18940208	Verspreide huizen Kessel
18940209	Verspreide huizen Kesseleik
18940300	Maasbree
18940308	Verspreide huizen ten zuiden van Provinciale weg
18940309	Verspreide huizen ten noorden van Provinciale weg
18940400	Baarlo
18940402	Soeterbeek
18940403	Bong
18940408	Verspreide huizen op Den Hert
18940409	Verspreide huizen ten zuiden van Baarlo
18940500	Meijel
18940502	Roggelsedijk
18940506	Verspreide huizen Molenbaan en Vieruitersten
18940507	Verspreide huizen Berg en Nederweerterdijk
18940508	Verspreide huizen Steenoven en Langstraat
18940509	Verspreide huizen Katsberg en Witdonk
18950000	Winschoten-Centrum
18950001	Zeeheldenbuurt
18950002	Winschoten-Noord
18950003	Winschoten-Zuid
18950004	Udesweg-Zuid
18950005	Winschoten-Grintweg
18950006	Winschoten-Bomenbuurt
18950007	Winschoten-Sint Vitusholt-Lanengebied
18950008	Winschoten-industriegebied
18950009	Verspreide huizen Winschoten
18950100	Finsterwolde-Centrum
18950101	Finsterwolde Hardenberg
18950102	Finsterwolde nieuwbouw
18950103	Finsterwolde Ganzedijk
18950104	Verspreide huizen Finsterwolde
18950200	Drieborg-Centrum
18950209	Verspreide huizen Drieborg
18950300	Beerta-Centrum
18950301	Beerta-Nieuwbouw
18950302	Beerta-Centrum-West
18950309	Verspreide huizen Beerta
18950400	Nieuw-Beerta
18950500	Nieuweschans De Bron
18950501	Nieuweschans-Centrum
18950502	Nieuweschans Nieuwbouw
18950600	Scheemda
18950601	Eexta
18950602	Heiligerlee
18950603	Eexta-Zuid
18950604	Scheemdermeer
18950605	Napels
18950700	Westerlee
18950708	Verspreide huizen ten zuiden van Westerlee
18950709	Verspreide huizen ten noorden van Westerlee
18950800	Nieuw-Scheemda
18950801	t Waar
18950802	Hamrikkerweg
18950803	Scheemderzwaag
18950809	Verspreide huizen
18950900	Midwolda
18950901	Oostwold
18950902	Zuiderpolder
18950903	Ekamp
18950904	Nieuweweg
18950905	Niesoord
18950907	Meerland
18950909	Verspreide huizen Midwolda
18951000	Nieuwolda
18951001	Oosteind
18951009	Verspreide huizen Nieuwolda
18960000	Genemuiden Kern
18960001	Genemuiden Noord-Oost
18960008	Cellemuiden
18960009	Zuiderzeepolder
18960010	Genemuiden Industrieterrein
18960011	Vogelbuurt
18960012	Achter t Tag
18960013	Binnenlanden-West
18960014	Greente
18960100	Kamperzeedijk-Oost
18960101	Kamperzeedijk-West
18960108	Landelijk gebied Genemuiden
18960109	Pieperpolder
18960200	Hasselt Kern
18960201	Hasselt Dedemsvaart-Zuid
18960202	Hasselt Dedemsvaart
18960203	Hasselt Industrieterrein
18960204	Nadorst
18960205	Ter Wees Hoek
18960206	Molenwaard
18960207	Hasselt om de Weede
18960307	Genne-Overwaters
18960310	Streukel-Holten-Genne
18960400	Zwartsluis Kern
18960402	Buitenkwartier
18960403	Prinsessenbuurt
18960404	Achter het Singel
18960405	Zomerdijk
18960406	De Nieuwesluis
18960407	Zwartsluis Industrieterrein
18960408	De Velde-Zwartewatersklooster
18960409	Landelijk gebied Zwartsluis
18960410	Barsbeek
18960500	Mastenbroek
19000000	Bolsward binnen De Wallen
19000001	Bolsward-Noord
19000002	Bolsward-Zuidoost
19000003	Bolsward-Zuidwest
19000004	Bolsward-Noordoost
19000009	Verspreide huizen Bolsward
19000101	Sneek binnen de grachten
19000102	Stationsbuurt
19000103	Hemdijk
19000104	Noorderhoek I
19000105	Noorderhoek II
19000106	Noordoosthoek
19000107	Zwetteplan
19000108	Bomenbuurt
19000109	Omgeving Leeuwarderweg en bungalowpark
19000110	Stadsfenne
19000111	De Domp
19000112	Het Eiland
19000113	Sperkhem en industrieterrein Houkesloot
19000114	Lemmerweg-Oost
19000115	Lemmerweg-West
19000116	Tinga
19000117	Duinterpen
19000118	Offingawier
19000119	Loënga
19000120	IJsbrechtum
19000200	Workum
19000201	Nijhuizum
19000202	Hindeloopen
19000208	Verspreide huizen Workum
19000209	Verspreide huizen Hindeloopen
19000300	Koudum
19000301	Heidenschap
19000302	Molkwerum
19000308	Verspreide huizen Koudum
19000309	Verspreide huizen Molkwerum
19000400	Hemelum
19000401	Warns
19000402	Scharl
19000403	Stavoren
19000408	Verspreide huizen Hemelum
19000409	Verspreide huizen Stavoren
19000500	Oud IJlst
19000501	Nijezijl-Roodhem
19000502	De Rat-Cloosterkamp
19000503	Verspreide huizen IJlst
19000600	Heeg
19000602	Hommerts
19000603	Jutrijp
19000607	Verspreide huizen Heeg
19000608	Verspreide huizen Hommerts
19000609	Verspreide huizen Jutrijp
19000700	Scharnegoutum
19000701	Goënga
19000702	Gauw
19000706	Verspreide huizen Scharnegoutum
19000707	Verspreide huizen Goënga
19000708	Verspreide huizen Gauw
19000800	Oudega
19000801	Gaastmeer
19000802	Idzega
19000804	Sandfirden
19000808	Verspreide huizen Oudega
19000809	Verspreide huizen Gaastmeer
19000900	Oosthem
19000901	Blauwhuis
19000902	Westhem
19000903	Abbega
19000904	Wolsum
19000905	Greonterp
19000906	Verspreide huizen-Greonterp
19000907	Verspreide huizen-Oosthem
19000908	Verspreide huizen Abbega
19000909	Verspreide huizen Wolsum
19001000	Tirns
19001001	Nijland
19001002	Folsgare
19001003	Tjalhuizum
19001007	Verspreide huizen Tirns
19001008	Verspreide huizen Nijland
19001100	Oppenhuizen
19001101	Uitwellingerga
19001108	Verspreide huizen Oppenhuizen
19001109	Verspreide huizen
19001200	Woudsend
19001201	Indijk
19001202	IJpecolsga
19001203	Smallebrugge
19001204	Koufurderrige
19001208	Verspreide huizen Woudsend
19001209	Verspreide huizen Koufurderrige
19001300	Witmarsum
19001301	Pingjum
19001302	Kimswerd
19001303	Arum
19001306	Verspreide huizen Witmarsum
19001307	Verspreide huizen Pingjum
19001308	Verspreide huizen Kimswerd
19001309	Verspreide huizen Arum
19001400	Lollum
19001401	Burgwerd
19001402	Hartwerd
19001403	Hichtum
19001404	Schettens
19001405	Longerhouw
19001406	Schraard
19001407	Verspreide huizen Lollum
19001408	Verspreide huizen Burgwerd
19001409	Verspreide huizen Schettens
19001500	Zurich
19001501	Wons
19001502	Cornwerd
19001503	Kornwerderzand
19001509	Verspreide huizen Zurich
19001600	Parrega
19001601	Hieslum
19001602	Dedgum
19001603	Tjerkwerd
19001604	Exmorra
19001606	Verspreide huizen Parrega
19001607	Verspreide huizen Tjerkwerd
19001608	Verspreide huizen Exmorra
19001700	Makkum
19001709	Verspreide huizen Makkum
19001800	Idsegahuizum
19001801	Allingawier
19001802	Piaam
19001803	Gaast
19001804	Ferwoude
19001808	Verspreide huizen Ferwoude
19001809	Verspreide huizen Gaast
19001900	Raerd
19001901	Poppenwier
19001902	Sibrandabuorren
19001903	Tersoal
19001904	Dearsum
19002001	Wommels
19002002	Easterein
19002003	Hinnaard
19002004	Itens
19002005	Rien
19002006	Lytsewierrum
19002007	Hidaard
19002008	Reahûs
19002009	Verspreide huizen Wommels
19002010	Verspreide huizen Easterein
19002011	Iens
19002012	Kûbaard
19002013	Waaksens
19002014	Verspreide huizen Kûbaard
19002015	Britswert
19002016	Wiuwert
19002017	Boazum
19002018	Easterwierrum
19002019	Verspreide huizen Boazum
19010101	Meije
19010102	Buitenkerk
19010103	Burgemeester Kremerweg
19010104	Noordzijde
19010205	Centrum
19010306	Dammekant
19010307	JC Hoogendoornlaan
19010308	Oud-Bodegraafseweg
19010309	Dronenwijk
19010310	Broekvelden
19010311	Groote Wetering
19010312	Zuidzijde
19010413	Weijland
19010514	Weijpoort
19010615	Oud-Reeuwijk
19010616	Tempel
19010617	Middelburg
19010618	Randenburg
19010619	Verspreide huizen polder Middelburg
19010620	Verspreide huizen polder Reeuwijk
19010621	Reeuwijk Dorp
19010722	Reeuwijk Brug
19010723	Zoutman
19010724	Ravensberg
19010725	Sluipwijk
19010726	Platteweg
19010727	Gravekoop
19010728	Twaalfmorgen
19010729	Oukoop
19010730	Abessinië
19010831	Driebruggen
19010832	Hogebrug
19010833	Hoogeind
19010834	Laageind
19010935	Waarder
19010936	Westeinde
19010937	Oosteinde
19030000	Eijsden-Breust
19030001	Mariadorp-Beezepool
19030002	Withuis-Stationsstraat
19030003	Mesch
19030004	Oost
19030005	Maarland
19030009	Verspreide huizen
19030100	Gronsveld
19030101	Rijckholt
19030200	Margraten
19030201	Termaar
19030202	Groot- en Klein-Welsden
19030203	t Rooth
19030204	Scheulder
19030205	Gasthuis-Wolfshuis
19030300	Cadier
19030301	Sint Antoniusbank
19030302	Berg
19030303	Bemelen
19030304	Honthem
19030309	Verspreide huizen
19030400	Sint Geertruid
19030401	Eckelrade
19030402	Herkenrade
19030403	Moerslag-Libeek
19030404	Bruisterbosch
19030409	Verspreide huizen
19030500	Mheer
19030501	Banholt
19030502	Noorbeek
19030503	Terlinden
19030504	Bergenhuizen en Schey
19030505	Hoogcruts
19030509	Verspreide huizen
19040101	Maarsseveen
19040102	Bethunepolder-zuid
19040103	Otterspoorbroek
19040104	Op Buuren
19040105	Zandweg-Oostwaard
19040106	Staatsliedenbuurt
19040107	Omgeving Goudestein
19040108	Componistenbuurt
19040109	Lanenkwartier
19040110	Centrum ten zuiden van de Vecht
19040111	Reizende man
19040112	Schilderskwartier
19040113	Zogwetering
19040114	Park Vechtenstein
19040115	Zeeheldenbuurt
19040116	Hogebrug
19040117	Friezenbuurt
19040118	Centrum ten noorden van de Vecht
19040119	Begraafplaats Maarssen
19040201	Polder Kortrijk
19040202	Polder Breukelen Proosdij
19040203	Polder Klein Oud Aa
19040204	Kievitsbuurt
19040205	Polder Breukelerwaard
19040206	Polder Nijenrode
19040207	Breukelen Noord
19040208	Corridor
19040209	Landgoed Nijenrode
19040210	Kanaalzone Zuid Breukelen
19040211	Scheendijk
19040212	Broeckland
19040213	Breukelen Zuid
19040214	Kanaalzone Noord Breukelen
19040215	Breukelen Midden
19040216	Rode Dorp
19040301	Polder Holland
19040302	Polder Garsten
19040303	Polder Oud Over
19040304	Kanaalzone Loenen aan de Vecht
19040305	Kanaalzone sector Vreeland
19040306	Mijnden
19040307	Hoefijzer
19040308	Driehoven
19040309	Oudover
19040310	Loenen Dorpskern
19040311	Cronenburgh
19040312	Kerklaan
19040401	Polder Oukoop
19040402	Nieuwer Ter Aa
19040501	Polder Portengen
19040502	Polder Groot Oud Aa
19040503	Polder Spengen
19040504	Polder Kockengen
19040505	Kockengen Dorp
19040506	Portengense Brug
19040507	Welgelegen
19040508	Groenlust
19040509	Vierde kwadrant Kockengen
19040601	Hoeker Polder
19040602	Polder Dorssewaard
19040603	Vreeland Dorp
19040604	Vreeland
19040701	Molenpolder
19040702	Bethunepolder-Noord
19040703	Tienhoven-Oud Maarsseveen
19040801	Polder Aetsveld
19040802	Polder Garsten Noord
19040803	Kanaalzone sector Nigtevecht
19040804	Nigtevecht Dorp
19040805	Nigtevecht Garsten
19040901	Polder Mijnden
19040902	Polder Angstelkade
19040903	Polder Sticht
19040904	Polder Het Honderd
19040905	Nieuwersluis
19040906	Angstelkade
19040907	Kanaalzone sector Nieuwersluis
19041001	Poldergebied Loenersloot
19041002	Loenersloot Binnenweg
19041003	Loenersloot Dorp
19041004	Poldergebied Loenersloot
19041101	Oud-Zuilen
19041201	Verbindingswegen
19041202	Industrieterrein Maarssenbroek
19041203	Fazantenkamp
19041204	Boomstede
19041205	Reigerskamp
19041206	Zwanenkamp
19041207	Valkenkamp
19041208	Duivenkamp
19041209	Bloemstede
19041210	Zebraspoor
19041211	Pauwenkamp
19041212	Kamelenspoor
19041213	Antilopespoor
19041214	Bisonspoor
19041215	Spechtenkamp
19110000	Winkel
19110001	Lutjewinkel
19110002	De Weere gedeeltelijk
19110003	Langereis gedeeltelijk
19110009	Verspreide huizen in de Groetpolder
19110100	Nieuwe-Niedorp
19110101	Terdiek
19110102	Langereis gedeeltelijk
19110103	t Veld en De Kampen
19110104	Wateringskant
19110105	Moerbeek
19110200	Oude-Niedorp
19110201	t Veld en De Weel gedeeltelijk
19110202	Zijdewind
19110203	Westermoerbeek gedeeltelijk
19110209	Verspreide huizen in De Kampen
19110300	Barsingerhorn
19110301	Kolhorn
19110302	Haringhuizen
19110306	Verspreide huizen Westermoerbeek gedeeltelijk
19110307	Verspreide huizen Westfriese Zeedijk
19110400	Hippolytushoef
19110401	Den Oever
19110402	Oosterland
19110403	Westerland
19110404	De Haukes
19110405	Stroe
19110406	Oosterklief en Westerklief
19110407	Verspreide huizen Hippolytushoeverpolder
19110408	Verspreide huizen Oeverpolder
19110409	Verspreide huizen Waard-Nieuwlandpolder
19110500	Wieringerwerf
19110501	Schepenwijk, Waddenwijk en Oosterterp
19110502	Middenmeer
19110503	Slootdorp
19110504	Kreileroord
19110506	Verspreide huizen Wieringerwerf
19110507	Verspreide huizen Middenmeer
19110508	Verspreide huizen Slootdorp
19110509	Verspreide huizen Kreileroord
19110600	Kleine Sluis inclusief Spoorbuurt
19110601	Gelderse Buurt en omgeving
19110602	Breezand
19110603	Van Ewijcksluis
19110604	Oostpolder
19110700	Wieringerwaard
19110701	Nieuwesluis
19110702	Buitengebied Wieringerwaard
19160100	De Zijde
19160101	Duivenvoorde
19160102	Park Veursehout
19160103	Leidsenhage
19160104	Schakenbosch en het Buitengebied
19160200	Prinsenhof hoog
19160201	Prinsenhof laag
19160300	t Lien zuid
19160301	De Rietvink en Veursestraatweg
19160302	t Lien noord
19160400	Kern Stompwijk
19160401	Landelijk gebied Stompwijk
19160500	Damcentrum
19160501	Klein Plaspoelpolder
19160502	Leidschendam - Zuid De Tol en t Hert
19160503	Zeeheldenwijk
19160504	Leidschendam - Zuid De Oude Bleijck
19160600	De Heuvel zuid
19160601	Amstelwijk
19160602	De Heuvel noord
19160700	Damsigt
19160701	Verzetsheldenwijk
19160702	Raadhuiskwartier
19160703	Sijtwende
19160704	Kleurenbuurt
19160800	Essesteijn en Gaarden
19160801	Nieuw Essesteijn en Zijdezigt
19160802	Essesteijn en Weiden
19160803	Essesteijn en Tuinen
19160804	Essesteijn en Dreven
19160900	Voorburg Midden noord
19160901	Voorburg Midden midden
19160902	Voorburg Midden zuid
19161000	Bovenveen noord
19161001	Bovenveen midden
19161002	Bovenveen zuid
19161100	Voorburg Noord zuid
19161101	Voorburg Noord noord
19161200	Voorburg West zuid
19161201	Park Leeuwenbergh
19161202	Voorburg West noord
19161300	Voorburg Oud noord
19161301	Voorburg Oud zuid
19240001	Goedereede woonkern
19240002	Goedereede havenhoofd
19240003	Goedereede buitengebied
19240101	Ouddorp centrum
19240102	Ouddorp noord
19240103	Ouddorp zuid
19240104	Ouddorp klepperstee klarebeek
19240105	Ouddorp oude nieuwlandseweg
19240106	Ouddorp brouwersdam
19240107	Ouddorp westeinde
19240108	Ouddorp oudeland
19240109	Ouddorp buitengebied
19240201	Stellendam centrum
19240202	Stellendam west
19240203	Stellendam zuiderdiep
19240204	Stellendam haven
19240205	Stellendam buitengebied
19240301	Middelharnis westplaat
19240302	Middelharnis centrum
19240303	Middelharnis prinsenkwartier
19240304	Middelharnis bomenbuurt
19240305	Middelharnis oostplaat
19240306	Middelharnis Nieuw Zeeland
19240307	Middelharnis buitengebied
19240401	Ooltgensplaat woonkern
19240402	Ooltgensplaat haven
19240403	Ooltgensplaat buitengebied
19240501	Den Bommel woonkern
19240502	Den Bommel buitengebied
19240601	Oude-Tonge centrum
19240602	Oude-Tonge prinsessenbuurt handelskade
19240603	Oude-Tonge planetenbuurt
19240604	Oude-Tonge haven
19240605	Oude-Tonge industriegebied
19240606	Oude-Tonge buitengebied
19240701	Dirksland centrum
19240702	Dirksland noord
19240703	Dirksland zuid
19240704	Dirksland industriegebied
19240705	Dirksland buitengebied
19240801	Melissant woonkern
19240802	Melissant buitengebied
19240901	Herkingen woonkern
19240902	Herkingen buitenplaats
19240903	Herkingen buitengebied
19241001	Sommelsdijk centrum
19241002	Sommelsdijk bloemenbuurt
19241003	Sommelsdijk westplaat
19241004	Sommelsdijk vogelbuurt oost
19241005	Sommelsdijk vogelbuurt west
19241006	Sommelsdijk buitengebied
19241101	Nieuwe-Tonge woonkern
19241102	Nieuwe-Tonge battenoord
19241103	Nieuwe-Tonge buitengebied
19241201	Stad aan t Haringvliet woonkern
19241202	Stad aan t Haringvliet buitengebied
19241301	Achthuizen woonkern
19241302	Achthuizen buitengebied
19260101	Pijnacker-CentrumenDorp
19260102	Pijnacker Noord
19260103	Koningshof
19260104	Klapwijk
19260105	Tolhek
19260106	Keijzershof Erven
19260107	Ackerswoude
19260108	Keijzershof Boszoom
19260109	Keijzershof Eilanden
19260111	Zuidpolder Oude Leede
19260112	Pijnacker Oost
19260113	Noordpolder Pijnacker
19260114	De Boezem
19260221	Nootdorp CentrumenWest
19260222	VrouwtjeslantenNieuweveen
19260223	Achter het Raadhuis
19260224	s-Gravenhout
19260225	De Venen Centrum
19260226	De VenenenCraeyenburch
19260227	De Venen Oost
19260231	Buitengebied Nootdorp
19260232	OostambachtenHeronpark
19260341	Oud-Delfgauw
19260342	Emerald Noord
19260343	Emerald Centrum
19260344	Emerald Zuid
19260351	Ruijven
19260352	Zuidpolder Delfgauw
19260353	Noordpolder Delfgauw
19300101	Kern
19300102	Molenwei
19300103	Oranjebuurt
19300104	Vogelbuurt
19300105	Centrum-Oost
19300106	Centrum-Zuid
19300201	Schiekamp-Noord
19300202	Schiekamp-Zuid
19300301	Hoogwerf-Noord
19300302	Hoogwerf-Zuid
19300401	Vierambachten
19300501	De Hoek-1
19300502	De Hoek-2
19300503	De Hoek-3
19300504	De Hoek-4
19300601	Gildenwijk-Oost
19300602	Gildenwijk-West
19300603	Ziekenhuis
19300701	Groenewoud-Hoog
19300702	Groenewoud-Huur
19300703	Groenewoud-Koop
19300801	Sterrenkwartier-Hoog
19300802	Sterrenkwartier-Midden
19300803	Sterrenkwartier-Oost
19300804	Sterrenkwartier-Zuid
19300805	Sterrenkwartier-West
19300901	Schenkel-Noordwest
19300902	Schenkel-Industrieterrein
19300903	Schenkel-Zuidwest
19300904	Schenkel-Zuidoost
19300905	Schenkel-Noordoost
19301001	De Dijk
19301002	Bedrijventerrein Haven-Noord
19301003	De Haven
19301004	Het Land
19301101	Vogelenzang-Zuid
19301102	Vogelenzang-Noord
19301201	Gaarden
19301202	Dreven
19301203	Voorden
19301204	Akkers-Centrum
19301205	Donken
19301206	Kreken
19301301	Vriesland
19301401	Ottersveen
19301402	Kikkerveen
19301403	Beverveen
19301404	Egel- en Salamanderveen
19301405	Krekelveen
19301406	Slakkenveen
19301407	Middengebied
19301408	Karperveen
19301409	Snoekenveen
19301410	Baarsveen
19301411	Park Waterland
19301501	Maaswijk-Noordoost
19301502	Maaswijk-Noordwest
19301503	Maaswijk-Zuidwest
19301504	Maaswijk-Zuidoost
19301505	Maaswijktuinen
19301506	Park Welgelegen
19301601	Industrieterrein Halfweg
19301701	Oostbroek
19301702	Landtong
19301703	Hartelpark-Oost
19301704	Hartelpark-West
19301705	Markenburg
19301706	Westrand
19301707	Waterrijk
19301708	Berenplaat
19302501	Kern Heenvliet
19302502	Bloemendaele
19302503	Ravensteijn-West
19302504	Poldergebied Heenvliet
19302701	Kern Geervliet
19302702	Geervliet-Noordoost
19302703	Poldergebied Geervliet
19302901	Kern Abbenbroek
19302902	Poldergebied Abbenbroek
19303101	Kern Zuidland
19303102	Kerckhoek
19303103	Kreken van Nibbeland
19303104	Harregat
19303105	Poldergebied Zuidland
19303301	Kern Simonshaven
19303302	Poldergebied Simonshaven
19305001	Hekelingen-Dorp
19305002	Uitslag van Putten-Zuid
19305003	Oud-Schuddebeurs
19310000	Tiendhoek
19310001	Schuwacht
19310002	Opperduit
19310003	Tiendweg-West
19310004	Lekkerkerk-Oost
19310005	Prinsessenbuurt
19310006	Koninginnenbuurt
19310007	Wibautsraat en Lorentzweg
19310008	Molenwerf en omstreken
19310009	Voorstraat en Centrum
19310010	Industrieterrein
19310011	Verspr huizen Lekkerkerk
19310100	Hoofdstraat
19310101	Binnen Krimpen
19310102	Beroepenbuurt
19310103	Krimpen-Oost
19310104	Zaag
19310105	Tiendweg Noord
19310106	Krimpen Centrum
19310107	Industrieterrein Krimpen
19310108	Lekdijk
19310109	Verspr huizen Krimpen aan de Lek
19310200	Ouderkerk aan den IJssel
19310208	Verspr huizen Ouderkerk Noord
19310209	Verspr huizen Ouderkerk Oost
19310300	Gouderak
19310400	Bergambacht-Dorp
19310401	Kadijk en Kadijkselaan
19310402	Uitbreiding Dorp
19310403	Benedenberg en Zuidbroek
19310404	Tussenlanen
19310409	Bovenberg westelijk van de Fransekade
19310500	Bergstoep
19310501	Lekdijk-West en Provinciale weg ged
19310502	Lekdijk-Oost en Provinciale weg ged
19310503	Bovenstad
19310504	Provinciale weg ged De Hem en Hogedijk ged
19310600	Ammerstol
19310700	Berkenwoude
19310701	Achterbroek
19310800	Haastrecht-Dorpskern
19310801	Boven-Haastrecht
19310802	Beneden-Haastrecht
19310803	Rozendaal
19310804	Stolwijkersluis ged
19310805	Hofkamp
19310806	Agterpoort
19310807	Stein
19310808	Verspr huizen Haastrecht Noord
19310809	Verspr huizen Haastrecht Zuid
19310810	Bergvliet
19311000	Stolwijk
19311001	Bovenkerk
19311002	Benedenkerk
19311003	Benedenheul
19311004	Goudseweg
19311005	Het Beijersche
19311006	Koolwijk
19311007	Schoonouwen
19311008	Bilwijk
19311100	Vlist
19311101	Bonrepas
19311200	Schoonhoven-Oude Stad
19311201	Schoonhoven-Noord
19311202	Schoonhoven-West
19311203	Zevender
19311204	Willige-Langerak
19311205	Vlist, Bovenberg en Lekdijk
19400101	Akmarijp
19400201	Bakhuizen
19400301	Balk
19400401	Bantega
19400501	Boornzwaag
19400601	Broek
19400701	Delfstrahuizen-Buitengebied
19400702	Delfstrahuizen-Kom
19400801	Dijken
19400901	Doniaga
19401001	Echten
19401101	Echtenerbrug-Buitengebied
19401102	Echtenerbrug-Kom
19401201	Eesterga
19401301	Elahuizen
19401401	Follega
19401501	Goingarijp
19401601	Harich
19401701	Haskerhorne
19401801	Idskenhuizen
19401901	Joure, Blaauwhof
19401902	Joure, Buitengebied
19401903	Joure, Centrum
19401904	Joure, Jonkersland
19401905	Joure, SeweienDe Ekers
19401906	Joure, Skipsleat
19401907	Joure, Westermeer
19401908	Joure, Woudfennen
19401909	Joure, Wyldehoarne
19401910	Joure, Zuiderveld
19402001	Kolderwolde
19402101	Langweer
19402201	Legemeer
19402301	Lemmer-Buitengebied
19402302	Lemmer-Frieslandpark
19402303	Lemmer-Kom
19402304	Lemmer-Lemstervaart
19402305	Lemmer-Noord
19402306	Lemmer-Rienplan
19402307	Lemmer-West
19402308	Lemmer-Zijlroede
19402401	Mirns
19402501	Nijehaske
19402601	Nijemirdum
19402701	Oldeouwer
19402801	Oosterzee-Buitengebied
19402802	Oosterzee-Kom
19402901	Oudega
19403001	Oudehaske
19403101	Oudemirdum
19403201	Ouwsterhaule
19403301	Ouwster-Nijega
19403401	Rijs
19403501	Rohel
19403601	Rotstergaast
19403701	Rotsterhaule
19403801	Rottum
19403901	Ruigahuizen
19404001	Scharsterbrug
19404101	Sint Nicolaasga
19404201	Sintjohannesga
19404301	Sloten
19404401	Snikzwaag
19404501	Sondel
19404601	Terherne
19404701	Terkaple
19404801	Teroele
19404901	Tjerkgaast
19405001	Vegelinsoord
19405101	Wijckel
19420000	Brinklaan
19420001	Raadhuisplein
19420002	Verbindingslaan
19420003	Batterijlaan
19420004	Cereslaan
19420005	Bijlstraat
19420006	Nijverheidswerf
19420007	Laarderwegkwartier
19420008	Spiegelzicht
19420100	Prins Hendrikkwartier
19420101	Hooftlaan
19420102	Vondellaan
19420103	Bredius-West
19420104	Bredius-Oost
19420200	Sportpark-Zuid
19420201	Donderstraat
19420202	Godelindebuurt
19420203	Waltherlaan
19420204	Bloemenbuurt
19420205	Ooster Eng-Noord
19420206	Ooster Eng-Zuid
19420207	Midden Eng-Oost
19420208	Midden Eng-West
19420209	Wester Eng
19420300	Lomanplein
19420301	Schimmellaan
19420302	Boslaan
19420303	Koedijk
19420304	Kom van Bieghel
19420305	Meijerkamp
19420306	Fransekamp
19420400	Vesting Muiden
19420401	Krijgsman
19420402	Muiderberg
19420403	Mariahoeve Muiden
19420404	Buitendijken Muiderberg
19420408	Pampusweg
19420409	IJmeer
19420410	Noordpolder
19420501	Naarden Vesting
19420502	Tuindorp Keverdijk
19420503	Naarderwoonbos
19420504	Bedrijvenpark Gooimeer-Zuid
19420506	Oranje Nassaupark-Noord
19420507	Oranje Nassaupark-Zuid
19420508	Ministerpark
19420509	Componistenkwartier
19420510	Rembrandtpark
19420511	Bos van Bredius-Noord
19420512	Valkeveen
19420513	Naardermeer
19420515	Bos van Bredius-Zuid
19420555	Bedrijvenpark Gooimeer-Noord
19420565	Vierhoven
19420575	Naardermeerkwartier
19420585	De Fortlanden
19450000	Beek-Midden
19450001	Beek-Oost
19450002	Beek-West
19450003	Buitengebied Beek
19450100	Laag Berg en Dal
19450101	Hoog Berg en Dal
19450102	Buitengebied Berg en Dal
19450200	Breedeweg
19450201	Buitengebied Breedeweg
19450300	De Horst
19450301	Buitengebied De Horst
19450400	Erlecom
19450500	Groesbeek Centrum-Zuid
19450501	Groesbeek Centrum-Noord
19450502	Groesbeek Nijerf
19450503	Groesbeek De Drul-Oost
19450504	Groesbeek De Drul-West
19450505	Groesbeek Stekkenberg
19450506	Bedrijventerrein Hulsbeek
19450507	Bedrijventerrein Mies
19450508	Buitengebied Groesbeek-Noord-West
19450509	Buitengebied Groesbeek-Zuid-West
19450510	Buitengebied Groesbeek-Noord
19450511	Buitengebied Groesbeek-Midden-West
19450600	Heilig Landstichting
19450601	Buitengebied Heilig Landstichting
19450700	Kekerdom
19450701	Buitengebied Kekerdom
19450800	Leuth
19450801	Bedrijventerrein Lieskes Wengs
19450802	Buitengebied Leuth
19450900	Millingen aan de Rijn-Oost
19450901	Millingen aan de Rijn-West
19450902	Bedrijventerrein Molenveld
19450903	Buitengebied Zuid
19450904	Buitengebied Millingerwaard
19451000	Ooij
19451001	Bedrijventerrein De Bouwkamp
19451002	Buitengebied Ooij
19451100	Persingen
19451200	Ubbergen
19480101	Boerdonk
19480102	Bolst
19480103	Buitengebied Boerdonk
19480104	Buitengebied Erp
19480105	Buitengebied Geregt
19480106	Buitengebied Hurkske en Hoek
19480107	Buitengebied Keldonk
19480108	Buitengebied Kraanmeer en Veluwe
19480109	Empeldonk
19480110	Erp Centrum
19480111	Erp Zuid
19480112	Keldonk
19480113	Vlaskamp
19480201	Boschweg Noordoost
19480202	Boschweg Zuidwest
19480203	Buitengebied Elderbroek
19480204	Buitengebied Broekkant
19480205	Buitengebied Molendijk
19480206	Buitengebied Oetelaar
19480207	Buitengebied Rooiseheide
19480208	Buitengebied Steeg
19480209	Buitengebied Vlagheide
19480210	De Beemd 1
19480211	De Beemd 3
19480212	De Borne 1
19480213	De Borne 2
19480214	Duin 1
19480215	Duin 2
19480216	Grevekeur
19480217	Hoevenbraak
19480218	Hopstraat
19480219	Hulzebraak
19480220	Molendijk
19480221	Plein 1
19480222	Plein 2
19480223	Plein 3
19480224	Rooiseheide
19480225	Schijndel Centrum 1
19480226	Schijndel Centrum 2
19480227	Schijndel Centrum 3
19480228	Schijndel Centrum 4
19480229	Wijbosch
19480301	Armenhoef
19480302	Boskant
19480303	Buitengebied Boskant
19480304	Buitengebied Jekschotse Heide en Everse
19480305	Buitengebied Nijnsel
19480306	Buitengebied Olland
19480307	Buitengebied Rijsingen en Schijndelse Heide
19480308	Buitengebied Veerse Heide en Koevering
19480309	Buitengebied Vressel en Zwijnsbergen
19480310	Cathalijne en Kinderbos
19480311	Eerschot
19480312	Heikant en Sluitappel
19480313	Kienehoef Noord
19480314	Kienehoef Zuid
19480315	Nijnsel
19480316	Olland
19480317	Sint-Oedenrode Centrum Noord
19480318	Sint-Oedenrode Centrum Zuid
19480401	t Ven Oost
19480402	t Ven West
19480403	Amert en Binnenveld
19480404	Bloemenwijk
19480405	Buitengebied Driehuizen en Hazelberg
19480406	Buitengebied Eerde
19480407	Buitengebied Heuvel en Havelt
19480408	Buitengebied Jekschot
19480409	Buitengebied Mariaheide
19480410	Buitengebied Sportpark en Dorshout
19480411	Buitengebied Zijtaart
19480412	Bunderse Hoek Noord
19480413	Bunderse Hoek Zuid
19480414	Busselbunders
19480415	De Scheifelaar
19480416	Doornhoek en Kempkens
19480417	Dubbelen
19480418	Eerde
19480419	Erpseweg Zuid
19480420	Heibunders
19480421	Hoogeinde
19480422	Koolenkampen en Iepenlaan
19480423	Laarbunders
19480424	Leest
19480425	Leest Noord
19480426	Mariaheide
19480427	Oranjewijk en Dorsveld
19480428	Oude ontginning
19480429	Veghel Centrum
19480430	Veghel Zuid 1
19480431	Veghel Zuid 2
19480432	Vijverwijk
19480433	Zijtaart
19491500	Buitengebied Achlum
19491501	Achlum
19491600	Buitengebied St-Annaparochie
19491601	St-Annaparochie Bedr Nij Toerenburg
19491602	St-Annaparochie Zuidoost
19491603	St-Annaparochie Noordwest
19491604	St-Annaparochie Noordoost
19491605	St-Annaparochie Zuidwest
19491606	St-Annaparochie Bedrijventer de Wissel
19491700	Baaium
19491800	Buitengebied Berltsum
19491801	Berltsum Noord
19491802	Berltsum Zuid
19491803	Berltsum Bedrijventerrein West
19491804	Berltsum Kassen
19491900	Buitengebied Bitgum
19491901	Bitgum
19492000	Buitengebied Bitgummole
19492001	Bitgummole
19492100	Blessum
19492200	Boer
19492300	Buitengebied Boksum
19492301	Boksum
19492400	Buitengebied Deinum
19492401	Deinum
19492500	Buitengebied Dongjum
19492501	Dongjum
19492600	Buitengebied Dronryp
19492601	Dronryp Bedrijventerrein de Alde Mar
19492602	Dronryp Midden
19492603	Dronryp Oost
19492604	Dronryp West
19492700	Firdgum
19492800	Buitengebied Franeker
19492801	Franeker Alvestudewyk
19492802	Franeker Binnenstad
19492803	Franeker Bloemketerp en Watertorenbuurt
19492804	Franeker Hamburgerrak en st Want
19492805	Franeker Industrieter West en Kie
19492806	Franeker Industrieterrein Oost
19492807	Franeker Industrieterrein Zuid
19492808	Franeker It Stiselplak
19492809	Franeker Kaatsersbuurt
19492810	Franeker Keningspark
19492811	Franeker Professorenbuurt
19492812	Franeker Schalsumerplan en Arkens
19492813	Franeker Sexbierumerplan
19492814	Franeker Stationsbuurt
19492815	Franeker t War
19492816	Franeker Vliet Tuinen en Frisia
19492817	Franeker Witzens
19492900	Herbaijum
19493000	Hitzum
19493100	Buitengebied Ingelum
19493101	Ingelum
19493200	Buitengebied St-Jacobiparochie
19493201	St-Jacobiparochie Noord
19493202	St-Jacobiparochie Zuid
19493300	Klooster Lidlum
19493400	Buitengebied Marsum
19493401	Marsum
19493500	Buitengebied Menaam
19493501	Menaam Bedrijventerrein Noord
19493502	Menaam Oost
19493503	Menaam West
19493600	Buitengebied Minnertsga
19493601	Minnertsga Bedrijventerrein Boskdykje
19493602	Minnertsga Noord
19493603	Minnertsga Zuid
19493700	Nij Altoenae
19493800	Buitengebied Oosterbierum
19493801	Oosterbierum
19493900	Buitengebied Oudebildtzijl
19493901	Oudebildtzijl
19494000	Peins
19494100	Pietersbierum
19494200	Buitengebied Ried
19494201	Ried
19494300	Schalsum
19494400	Buitengebied Sexbierum
19494401	Sexbierum
19494402	Sexbierum Kassen
19494403	Sexbierum Waddenglas
19494500	Skingen
19494600	Slappeterp
19494700	Buitengebied Spannum
19494701	Spannum
19494800	Buitengebied Tzum
19494801	Tzum
19494900	Buitengebied Tzummarum
19494901	Tzummarum Noord
19494902	Tzummarum Zuid
19495000	Buitengebied Vrouwenparochie
19495001	Vrouwenparochie
19495100	Westhoek
19495200	Wier
19495300	Buitengebied Winsum
19495301	Winsum
19495302	Winsum Bedrijventerrein
19495400	Buitengebied Wjelsryp
19495401	Wjelsryp
19495500	Zweins
19500000	Bellingwolde
19500001	Vriescheloo
19500002	Rhederweg-West
19500004	Vriescheloo-Zuid
19500005	Oudeschans
19500006	Klein-Ulsda
19500007	Verspreide huizen ten zuidoosten van Bellingwolde
19500008	Verspreide huizen ten zuidoosten van Vriescheloo
19500009	Verspreide huizen Westerwoldse A
19500100	Veelerveen
19500101	Rhederbrug-Oost
19500108	Verspreide huizen ten noordoosten van Rhederbrug
19500109	Verspreide huizen Veelerveen
19500200	Blijham
19500201	Morige
19500202	Wedde
19500203	Wedderheide
19500204	Wedderveer
19500206	Verspreide huizen in de polder Blijham
19500207	Verspreide huizen ten westen van Blijham
19500208	Verspreide huizen Hoorn
19500209	Verspreide huizen in de Weddermarke
19500300	Sellingen
19500301	Laude
19500304	Jipsinghuizen en Plaggenborg
19500306	Leemdobben en Lammerweg
19500308	Verspreide huizen ten oosten van Ruiten A-kanaal
19500309	Verspreide huizen Sellingen
19500400	Vlagtwedde
19500401	Wollinghuizen
19500402	Vlagtwedder-Veldhuis
19500403	Veele
19500404	Ellersinghuizen
19500409	Verspreide huizen Vlagtwedde
19500500	Bourtange
19500501	Pallert
19500502	Weite
19500504	Stakenborg
19500507	Verspreide huizen Hebrecht
19500508	Verspreide huizen Bourtange
19500509	Verspreide huizen ten noorden van Vlagtwedde
19500600	Harpel
19500601	Sellingerbeetse
19500602	Jipsingboertange
19500609	Verspreide huizen tussen Harpel en Sellingerbeetse
19500700	Ter Apel
19500701	Barnflair
19500702	Ter Apelkanaal
19500703	Ter Apel-West
19500704	Jipsingboermussel en Zandberg
19500705	Munnekemoer
19500706	Burgemeester Beinsdorp
19500707	Agobuurt
19500708	Ter Apel t Heem
19500709	Verspreide huizen Ter Apel en Ter Apelkanaal
19500808	Verspreide huizen te Laudermarke
19500809	Verspreide huizen Ter Wisch
19500900	De Maten
19500909	Verspreide huizen ten zuiden van Ter Apel
19520101	Noorderpark
19520102	Westerpark
19520103	Beukemabuurt
19520104	Oosterpark
19520105	Martenshoek en Industriegebied Martenshoek
19520106	Stadshart-Noord
19520107	Industriegebied Martenshoek
19520201	Spoorstraat en Kieldiep
19520202	Burgemeester van Royenstraat en omgeving
19520203	Gorecht-Noord
19520204	Gorechtpark-Oost
19520205	Gorecht-West
19520206	Woldwijck-West
19520207	Woldwijck-Midden
19520208	Woldwijck-Oost
19520209	Kropswolderpolder
19520210	Gorechtpark
19520301	Stadshart-Zuid
19520302	Zuiderpark
19520303	De Dreven
19520304	De Vosholen-West
19520305	Kalkwijk-Noord
19520306	Kalkwijk-Zuid
19520401	Magrietpark
19520402	Sappemeer-Oost
19520403	Boswijck-West
19520404	Boswijck-Oost
19520405	Compagniesterpark
19520406	De Vosholen-Oost
19520407	Nieuw Woelwijck
19520408	Polder De Nijverheid
19520409	Sappemeer-Noord
19520501	Kiel-Windeweer
19520502	Kiel-Windeweer Buitengebied
19520601	Kropswolde
19520602	Meerwijck
19520603	Kropswolde Recreatiegebied
19520604	Kropswolde Buitengebied
19520701	Foxhol
19520702	Foxhol Industriegebied
19520801	Waterhuizen
19520802	Westerbroek
19520803	Westerbroek Buitengebied
19520804	Westerbroek Industriegebied
19520805	Westerbroek Recreatiegebied
19520901	Harkstede
19520902	Harkstede Buitengebied
19520903	Harkstede Recreatiegebied
19520904	Scharmer
19520905	Scharmer Buitengebied
19520906	Natuurgebied Scharmer
19520907	Woudbloem
19521001	Kolham
19521002	Kolham Bedrijventerrein
19521003	Kolham Buitengebied
19521004	Kolham Natuurgebied
19521101	Froombosch
19521102	Froombosch Buitengebied
19521103	Natuurgebied Froombosch
19521201	Slochteren
19521202	Slochteren Natuurgebied
19521203	Slochteren Buitengebied
19521301	Schildwolde
19521302	Schildwolde Natuurgebied
19521303	Schildwolde Buitengebied
19521401	Hellum
19521402	Hellum Natuurgebied
19521501	Siddeburen
19521502	Siddeburen Buitengebied
19521503	Siddeburen Bedrijventerrein
19521601	Overschild
19521602	Overschild Buitengebied
19521603	Luddeweer
19521604	Lageland
19521701	Tjuchem
19521702	Steendam
19521801	Muntendam-west
19521802	Muntendam-oost
19521803	Muntendam Buitengebied oost
19521804	Muntendam Buitengebied west
19521805	Tripscompagnie
19521806	Borgercompagnie
19521901	Noordbroek
19521902	Noordbroek Buitengebied
19522001	Zuidbroek
19522002	Bedrijventerrein Gouden Driehoek
19522003	Zuidbroek Buitengebied west
19522004	Zuidbroek Buitengebied oost
19522005	Industrieterrein Zuidbroek
19522101	Meeden
19522102	Meeden Buitengebied
19540000	Schinveld
19540001	Jabeek
19540002	Bingelrade
19540003	Merkelbeek-Douvergenhout
19540009	Verspreide huizen
19540100	Nuth
19540101	Tervoorst en omgeving
19540102	Industrieterrein De Horsel
19540103	Vaesrade
19540104	Hommert gedeeltelijk
19540200	Wijnandsrade
19540201	Swier
19540300	Hulsberg
19540301	Aalbeek
19540302	Arensgenhout
19540400	Schimmert
19540401	Haasdal
19540402	Oensel
19540500	Schinnen
19540501	Puth
19540502	Nagelbeek-Hegge
19540503	Sweikhuizen
19540504	Thull
19540505	Hommert gedeeltelijk
19540509	Verspreide huizen
19540600	Amstenrade
19540601	Oirsbeek
19540602	Klein-Doenrade
19540603	Groot-Doenrade
19550000	s-Heerenberg
19550001	s-Heerenberg, oostelijke uitbreiding
19550002	Zeddam
19550003	Azewijn
19550004	Braamt
19550005	Stokkum
19550006	Verspreide huizen Zeddam
19550007	Verspreide huizen Mengelenberg en Lengel
19550008	Verspreide huizen Braamt
19550009	Verspreide huizen Azewijn
19550010	Verspreide huizen Stokkum
19550100	Beek
19550101	Kilder
19550102	Loerbeek
19550106	Verspreide huizen Loerbeek
19550107	Verspreide huizen Kilder
19550108	Verspreide huizen Beek
19550109	Verspreide huizen Montferland
19550200	Didam-Zuid
19550201	Didam-Noord
19550202	Loil
19550203	Nieuw-Dijk
19550205	Verspreide huizen De Heegh
19550206	Verspreide huizen Greffelkamp
19550207	Verspreide huizen De Hogenend en Oud-Dijk
19550208	Verspreide huizen Nieuw-Dijk
19550209	Verspreide huizen Loil
19590101	Centrum Werkendam
19590102	Burchtpolder
19590103	Welgelegen
19590104	Werkense polder
19590105	Vervoornepolder noord
19590106	Vervoornepolder zuid
19590107	Bedrijventerrein Werkendam
19590191	Buitengebied Werkendam noord
19590192	Buitengebied Werkendam zuid
19590193	Buitengebied Oostwaard
19590194	Buitengebied Biesbosch
19590201	Sleeuwijk west
19590202	Sleeuwijk oost
19590291	Buitengebied Sleeuwijk
19590301	Nieuwendijk
19590391	Buitengebied Nieuwendijk noordoost
19590392	Buitengebied Nieuwendijk zuid
19590401	Hank
19590402	Kurenpolder
19590491	Buitengebied Hank oost
19590492	Buitengebied Hank west
19590501	Dussen
19590591	Buitengebied Dussen noord
19590592	Buitengebied Dussen zuid
19590601	Woudrichem noord
19590602	Woudrichem zuid
19590603	Oudendijk
19590691	Buitengebied Woudrichem
19590701	Rijswijk NB
19590791	Buitengebied Rijswijk NB
19590801	Uitwijk
19590891	Buitengebied Uitwijk
19590901	Waardhuizen
19590991	Buitengebied Waardhuizen
19591001	Giessen
19591002	Bedrijventerrein Rietdijk
19591091	Buitengebied Giessen
19591101	Andel
19591191	Buitengebied Andel
19591201	Almkerk west
19591202	Almkerk oost
19591203	Uppel
19591291	Buitengebied Almkerk noord
19591292	Buitengebied Almkerk zuid
19591301	Veen
19591302	Bedrijventerrein Veen
19591303	Veenseput
19591391	Buitengebied Veen
19591401	Aalburg
19591402	Wijk
19591403	Spijk
19591491	Buitengebied Wijk en Aalburg oost
19591492	Buitengebied Wijk en Aalburg west
19591501	Babyloniënbroek
19591591	Buitengebied Babyloniënbroek
19591601	Meeuwen
19591691	Buitengebied Meeuwen
19591701	Eethen
19591791	Buitengebied Eethen
19591801	Drongelen
19591891	Buitengebied Drongelen
19591901	Genderen
19591991	Buitengebied Genderen
19600000	Geldermalsen Centrum
19600001	Geldermalsen Middengebied
19600002	Geldermalsen West
19600003	Geldermalsen Oost
19600004	Geldermalsen Zuid
19600005	Verspreide huizen Zuidzijde
19600006	Verspreide huizen Westzijde
19600007	Verspreide huizen Oostzijde
19600008	Geldermalsen en omstreken
19600009	Buitengebied
19600100	Deil
19600101	Enspijk
19600102	Rumpt
19600103	Gellicum
19600106	Gellicum en omstreken
19600107	Rumpt en omstreken
19600108	Enspijk en omstreken
19600109	Deil en omstreken
19600200	Beesd West
19600201	Beesd Oost
19600202	Rhenoy
19600203	Acquoy
19600207	Aquoy en omstreken
19600208	Rhenoy en omstreken
19600209	Beesd en omstreken
19600300	Buurmalsen
19600301	Tricht
19600308	Tricht en omstreken
19600309	Buurmalsen en omstreken
19600400	Meteren
19600401	Meteren - Kalenberg
19600402	Meteren - De Plantage
19600403	Meteren en omstreken
19600500	Haaften
19600501	Tuil
19600502	Hellouw
19600507	Verspreide huizen Tuil
19600508	Verspreide huizen Hellouw
19600509	Verspreide huizen Haaften
19600600	Waardenburg
19600601	Waardenburg-West
19600602	Neerijnen
19600603	Opijnen
19600604	Est
19600606	Verspreide huizen Est
19600607	Verspreide huizen Opijnen
19600608	Verspreide huizen Neerijnen
19600609	Verspreide huizen Waardenburg
19600700	Ophemert
19600701	Varik
19600702	Heesselt
19600707	Verspreide huizen Heesselt
19600708	Verspreide huizen Varik
19600709	Verspreide huizen Ophemert
19600800	Asperen Oude Kern
19600801	Westelijke uitbreiding Asperen
19600802	Noord uitbreiding Asperen industrieterrein
19600809	Verspreide huizen Asperen
19600900	Heukelum Oude Kern
19600901	Uitbreiding Heukelum
19600902	Spijk en Boveneind Spijk en Vogelswerf
19600909	Verspreide huizen Heukelum en Friezenwijk
19601000	Vuren
19601009	Verspreide huizen Vuren
19601100	Herwijnen
19601109	Verspreide huizen Herwijnen
19610001	Leerdam-Centrum
19610002	Leerdam-West
19610003	Leerdam-Oost
19610004	Leerdam-Noord
19610005	Verspreide huizen Leerdam
19610006	Kedichem
19610007	Schoonrewoerd
19610100	Oude Stad
19610101	Zederik
19610102	De Hagen
19610103	Vijfheerenlanden
19610104	Industrieterrein Vianen
19610105	Monnikenhof en Amaliastein
19610107	Verspreide huizen Helsdingen
19610109	Overige verspreide huizen Vianen
19610200	Hagestein
19610201	Industrieterrein Hagestein
19610207	Verspreide huizen in het Oosten
19610208	Verspreide huizen in het Noorden
19610209	Verspreide huizen in het Zuidwesten
19610300	Everdingen
19610301	Zijderveld
19610302	Diefdijk gedeeltelijk
19610309	Verspreide huizen Everdingen
19610400	Lexmond Kern
19610401	Achthoven
19610402	Lakerveld
19610403	Lexmond Polder
19610500	Ameide Kern
19610501	Sluis
19610502	Sluis Polder
19610503	Ameide Polder
19610600	Tienhoven Kern
19610601	Hogewaard
19610602	Tienhoven Polder
19610700	Meerkerk kern
19610701	Meerkers Broek
19610702	Meerkerk Polder
19610800	Hei- en Boeicop Kern
19610801	Hei- en Boeicop Polder
19610900	Leerbroek kern
19610901	Middelkoop
19610902	Weverwijk
19610903	Leerbroek Polder
19611000	Nieuwland Kern
19611001	Achterdijk
19611002	Geer
19611003	Nieuwland Polder
19630000	Oud-Beijerland Centrum
19630001	Oud-Beijerland Oosterse Gorzenwijk
19630002	Oud-Beijerland Croonenburghwijk
19630003	Oud-Beijerland Zeeheldenwijk
19630004	Oud-Beijerland Zuidwijk
19630005	Oud-Beijerland Zoomwijck
19630006	Oud-Beijerland Spuioeverwijk
19630007	Oud-Beijerland Poortwijk
19630050	Oud-Beijerland Bedrijventerrein De Bosschen
19630051	Oud-Beijerland Bedrijventerrein De Hoogerwerf
19630099	Oud-Beijerland Buitengebied
19630100	Heinenoord Woonkern
19630150	Heinenoord Bedrijvenpark Hoeksche Waard
19630199	Heinenoord Buitengebied
19630200	Mijnsheerenland Woonkern
19630299	Mijnsheerenland Buitengebied
19630300	Westmaas Woonkern
19630399	Westmaas Buitengebied
19630400	Puttershoek Woonkern
19630499	Puttershoek Buitengebied
19630500	Maasdam Woonkern
19630599	Maasdam Buitengebied
19630600	s-Gravendeel Woonkern
19630650	s-Gravendeel Bedrijventerrein Mijlpolder
19630699	s-Gravendeel Buitengebied
19630700	Strijen Woonkern
19630750	Strijen Bedrijventerrein Bonaventura
19630799	Strijen Buitengebied
19630800	Klaaswaal Woonkern
19630899	Klaaswaal Buitengebied
19630900	Numansdorp Woonkern
19630950	Numansdorp Bedrijventerrein Middelsluis
19630999	Numansdorp Buitengebied
19631000	Zuid-Beijerland Woonkern
19631099	Zuid-Beijerland Buitengebied
19631100	Goudswaard Woonkern
19631199	Goudswaard Buitengebied
19631200	Piershil Woonkern
19631299	Piershil Buitengebied
19631300	Nieuw-Beijerland Woonkern
19631399	Nieuw-Beijerland Buitengebied
19660000	Bedum
19660001	Verspreide huizen Bedum
19660002	Zuidwolde
19660003	Verspreide huizen Zuidwolde
19660004	Onderdendam
19660005	Verspreide huizen Onderdendam
19660006	Noordwolde
19660007	Verspreide huizen Noordwolde
19660100	Winsum
19660101	Obergum
19660102	Ripperda
19660103	Potmaar
19660104	De Brake
19660109	Verspreide huizen Winsum
19660200	Baflo
19660201	Den Andel
19660202	Rasquert
19660203	Tinallinge
19660204	Saaxumhuizen
19660209	Verspreide huizen Baflo
19660300	Adorp
19660301	Sauwerd
19660302	Wetsinge
19660309	Verspreide huizen Adorp
19660401	Uithuizen
19660402	t Lage van de Weg
19660408	Verspreide huizen in de nieuwe polders
19660409	Overige verspreide huizen
19660500	Uithuizermeeden
19660501	Oosternieland
19660502	Roodeschool
19660503	Oosteinde
19660504	Hooilandseweg
19660505	Hefswal
19660506	Oudeschip
19660507	Oldenzijl
19660508	Eemshavengebied
19660509	Verspreide huizen Uithuizermeeden
19660600	Kantens
19660601	Zandeweer
19660602	Rottum
19660603	Stitswerd
19660604	Doodstil
19660605	Eppenhuizen
19660606	Garsthuizen gedeeltelijk
19660609	Verspreide huizen Kantens
19660700	Usquert
19660708	Verspreide huizen in de nieuwe polders
19660709	Overige verspreide huizen
19660800	Warffum
19660809	Verspreide huizen Warffum
19660900	Ulrum
19660901	Zoutkamp
19660902	Houwerzijl
19660903	Vierhuizen
19660904	Niekerk
19660905	Lauwersoog
19660906	Haven Lauwersoog
19660908	Landelijk gebied Lauwersmeer
19660909	Verspreide huizen Ulrum
19661000	Wehe-Den Hoorn-West
19661001	Leens
19661002	Warfhuizen
19661003	Mensingeweer
19661004	Schouwerzijl
19661005	Wehe-Den Hoorn-Oost
19661006	Zuurdijk
19661009	Verspreide huizen Leens
19661100	Eenrum
19661101	Pieterburen
19661102	Westernieland
19661103	Kaakhorn
19661108	Verspreide huizen Oude Land
19661109	Verspreide huizen in het Noorden
19661200	Kloosterburen
19661201	Hornhuizen
19661202	Kruisweg
19661203	Molenrij
19661204	Kleine Huisjes
19661209	Verspreide huizen Kloosterburen
19690000	Grootegast
19690001	Doezum
19690002	Sebaldeburen
19690006	Het Peebos
19690007	Verspreide huizen ten zuiden van Sebaldeburen
19690008	Verspreide huizen ten zuiden van Grootegast
19690009	Overige verspreide huizen
19690100	Lutjegast
19690109	Verspreide huizen Lutjegast
19690200	Opende-West
19690201	Opende-Oost
19690202	Kornhorn
19690209	Verspreide huizen ten zuiden van Opende
19690300	Niekerk
19690301	Oldekerk
19690309	Verspreide huizen Oldekerk
19690401	Diepswal
19690402	Centrum Leek en omgeving
19690403	Rodenburg en omgeving
19690404	Nienoordsrand
19690408	Buitengebied ten oosten van Leek
19690409	Buitengebied ten zuiden van Leek
19690500	Bebouwde kom Zevenhuizen
19690501	De Haspel
19690502	Drostinnewijk
19690503	Boerenstreek
19690507	Buitengebied ten noorden van Zevenhuizen
19690508	Buitengebied ten oosten van Zevenhuizen
19690509	Buitengebied ten westen van Zevenhuizen
19690600	Bebouwde kom Tolbert
19690601	Sint Maheerdt
19690609	Buitengebied Tolbert
19690700	Bebouwde kom Midwolde
19690701	Pasop
19690709	Buitengebied Midwolde
19690800	Bebouwde kom Lettelbert
19690809	Buitengebied Lettelbert
19690900	Bebouwde kom Oostwold
19690909	Buitengebied-Oostwold
19691000	Bebouwde kom Enumatil
19691009	Buitengebied Enumatil
19691100	Marum
19691102	Nuis
19691103	Niebert
19691104	Boerakker
19691105	Lucaswolde
19691106	Noordwijk
19691107	De Haar
19691108	Verspreide huizen in het noordwesten
19691109	Verspreide huizen in het noordoosten
19691200	De Wilp gedeeltelijk
19691201	Wilpstervaart
19691202	Keuningswijk
19691204	Jonkersvaart
19691208	Verspreide huizen ten noorden van Jonkersvaart
19691209	Verspreide huizen ten noorden van de Wilp
19691300	Ezinge
19691301	Feerwerd
19691302	Garnwerd
19691309	Verspreide huizen Ezinge
19691400	Zuidhorn
19691401	Noordhorn
19691402	Niezijl
19691403	Briltil
19691409	Verspreide huizen Zuidhorn
19691500	Grijpskerk
19691502	Visvliet
19691503	Kommerzijl
19691504	Pieterzijl
19691509	Verspreide huizen Grijpskerk
19691600	Oldehove
19691601	Niehove
19691603	Saaksum
19691604	Lauwerzijl
19691608	Verspreide huizen Ruigezand en Nieuwe Ruigezand
19691609	Overige verspreide huizen
19691700	Aduard
19691701	Den Horn
19691702	Den Ham
19691709	Verspreide huizen Aduard
19700000	Dokkum binnen de Bolwerken
19700001	Dokkum Noord
19700002	Dokkum Fonteinslanden
19700003	Dokkum Fugellan
19700004	Dokkum Betterwird
19700005	Dokkum Hoedemakerspolder
19700006	Dokkum De Woudhorne
19700007	De Trije Terpen
19700008	Dokkum Weeshuislanden
19700009	Dokkum Jantjeszeepolder
19700010	Dokkum Kooilanden
19700011	Dokkum Hogedijken
19700100	Metslawier
19700101	Jouswier
19700102	Niawier
19700103	Wetsens
19700104	Aalsum
19700105	Oostrum
19700107	Verspreide huizen Metslawier
19700108	Verspreide huizen Niawier
19700109	Verspreide huizen Oostrum
19700200	Ee
19700201	Engwierum
19700202	Dokkumer Nieuwe Zijlen
19700208	Verspreide huizen Ee
19700209	Verspreide huizen Engwierum
19700300	Anjum
19700301	Lioessens
19700302	Morra
19700303	Oostmahorn
19700307	Verspreide huizen Anjum
19700308	Verspreide huizen Lioessens
19700309	Verspreide huizen Morra
19700400	Oosternijkerk
19700401	Paesens
19700408	Verspreide huizen Oosternijkerk
19700409	Verspreide huizen Paesens
19700500	Ternaard
19700501	Wierum
19700502	Nes
19700503	Moddergat
19700506	Verspreide huizen Ternaard
19700507	Verspreide huizen Wierum
19700508	Verspreide huizen Nes
19700509	Verspreide huizen Moddergat
19700600	Holwerd
19700601	Waaxens
19700602	Brantgum
19700603	Foudgum
19700604	Bornwird
19700605	Raard
19700608	Verspreide huizen Holwerd
19700609	Verspreide huizen Brantgum
19700700	Hantum
19700701	Hantumhuizen
19700702	Hantumeruitburen
19700703	Hiaure
19700708	Verspreide huizen Hantum
19700709	Verspreide huizen Hantumhuizen
19700800	Ferwerd
19700801	Marrum
19700802	Blija
19700803	Hogebeintum
19700807	Verspreide huizen Ferwerd
19700808	Verspreide huizen Marrum-Westernijkerk
19700809	Verspreide huizen Blija
19700900	Hallum
19700909	Verspreide huizen Hallum
19701000	Birdaard
19701001	Wanswerd
19701002	Jislum
19701003	Genum
19701004	Reitsum
19701005	Lichtaard
19701006	Janum
19701008	Verspreide huizen Birdaard
19701009	Verspreide huizen Wanswerd
19701100	Kollum
19701109	Verspreide huizen Kollum
19701200	Burum
19701201	Kollumerpomp
19701202	Warfstermolen
19701203	Munnekezijl
19701204	Augsbuurt
19701206	Verspreide huizen Burum
19701207	Verspreide huizen Kollumerpomp
19701208	Verspreide huizen Warfstermolen
19701209	Verspreide huizen Munnekezijl
19701300	Oudwoude
19701301	Triemen
19701302	Westergeest
19701308	Verspreide huizen Oudwoude
19701309	Verspreide huizen Westergeest
19701400	Kollumerzwaag
19701401	Zwagerbosch
19701402	Veenklooster
19701409	Verspreide huizen Kollumerzwaag
19780101	Arkel-Industriegebied-Zuid1
19780102	Arkel-Industriegebied-Noord
19780103	Arkel-Industriegebied-West
19780104	Arkel-Dorp
19780105	Arkel-Industriegebied-Zuid2
19780106	Lintbebouwing-Noord
19780107	Arkel-Buitengebied-Zuid-West
19780108	Arkel-Buitengebied-Oost
19780201	Bleskensgraaf-Buitengebied-Noord
19780202	Bleskensgraaf-Buitengebied-Zuid
19780203	Bleskensgraaf-Dorp
19780204	Bleskensgraaf-Melkweg
19780205	Bleskensgraaf-West
19780206	Bleskensgraaf-Hofwegen
19780301	Brandwijk-Noord-Oost
19780302	Brandwijk-Dorp
19780303	Brandwijk-Zuid-West
19780304	Brandwijk-Zuid-Oost
19780305	Brandwijk-Noord-West
19780307	Brandwijk-Buitengebied
19780308	Brandwijk-Vuilendam
19780309	Brandwijk-Kern-Oud
19780401	Giessenburg-West
19780402	Kern-Dorp
19780403	Giessenburg-Zuidwest
19780404	Giessen-Oudekerk-Dorp
19780405	Giessenburg-Oost
19780406	Giessenburg-Buitengebied-Zuid
19780407	Giessenburg-Industriegebied
19780408	Giessenburg-Buitengebied-Noord
19780409	Giessenburg-Recreatie-Zuid
19780410	Giessenburg-Recreatie-Noord
19780501	Goudriaan-Oost
19780502	Goudriaan-Dorp
19780503	Goudriaan-Buitengebied-Noord
19780504	Goudriaan-Buitengebied-Zuid
19780601	Buitengebied-Ammersekade
19780602	Groot-Ammers-Gelkenes
19780603	Dijkgebied-Groot-Ammers
19780604	Groot-Ammers-Dorp
19780605	Groot-Ammers-Haven
19780607	Groot-Ammers-Graafland
19780608	Groot-Ammers-Scheepswerf
19780609	Groot-Ammers-Buitengebied-Zuid
19780610	Groot-Ammers-Buitengebied-Noord
19780701	Hoogblokland-Bazeldijk
19780702	Hoogblokland-Dorp
19780703	Hoogblokland-Minkeloos
19780704	Hoogblokland-Noord
19780705	Hoogblokland-Buitengebied-Noord
19780706	Hoogblokland-Buitengebied-Zuid
19780801	Hoornaar-Buitengebied-Noord
19780802	Hoornaar-Dorp
19780803	Hoornaar-Lage-Giessen
19780804	Hoornaar-Buitengebied-Zuid-Oost
19780901	Dijkgebied-Kinderdijk
19780902	IHC-Kinderdijk
19780903	Kinderdijk-Dorp
19780904	Kinderdijk-Buitengebied
19781001	Langerak-Noord
19781002	Dijkgebied-Langerak
19781003	Langerak-Dorp
19781004	Langerak-Buitengebied
19781101	Molenaarsgraaf-Dorp
19781102	Molenaarsgraaf-West
19781103	Molenaarsgraaf-Vuilendam
19781104	Molenaarsgraaf-Polderweg-oost
19781105	Molenaarsgraaf-Buitengebied
19781106	Molenaarsgraaf-Oost
19781201	Nieuw-Lekkerland-Dorp
19781202	Nieuw-Lekkerland-Middelweg
19781203	Industriegebied-Dorp
19781204	Nieuw-Lekkerland-Buitengebied
19781205	Nieuw-Lekkerland-Noord
19781206	Industriegebied-Oost
19781207	Dijkgebied-Nieuw-Lekkerland
19781301	Nieuwpoort-Stad
19781302	Dijkgebied-Nieuwpoort
19781401	Noordeloos-Industriegebied
19781402	Noordeloos-Buitengebied-Zuid
19781403	Noordeloos-Middelweg
19781405	Noordeloos-Overslingeland
19781406	Noordeloos-Dorp
19781407	Noordeloos-Oost
19781408	Noordeloos-West
19781409	Noordeloos-Buitengebied-Noord
19781501	Ottoland-Buitengebied-Noord
19781502	Ottoland-Langezijde
19781503	Ottoland-Vuilendam
19781504	Ottoland-Kortezijde
19781505	Ottoland-West
19781506	Ottoland-Oost
19781507	Ottoland-Buitengebied-Zuid
19781508	Ottoland-Dorp
19781509	Buitengebied-Laag-Blokland
19781510	Ottoland-Dorp-West
19781601	Oud-Alblas-Oost
19781602	Oud-Alblas-West
19781603	Oud-Alblas-Dorp
19781604	Oud-Alblas-Buitengebied-Zuid
19781605	Oud-Alblas-Buitengebied-Noord
19781701	Schelluinen-Dorp
19781702	Schelluinen-Zuid
19781703	Schelluinen-Griendweg
19781704	Schelluinen-Buitengebied-West
19781705	Schelluinen-Buitengebied-Noordoost
19781801	Dijkgebied-Streefkerk
19781802	Streefkerk-Buitengebied
19781803	Streefkerk-Dorp
19781901	Waal-Dorp
19782001	Wijngaarden-Buitengebied
19782002	Kern-Dorp
19782003	Lintbebouwing-Oost
19782004	Lintbebouwing-West.
Execute.


VALUE Labels wc2020
000300	Wijk 00
001001	Centrum
001002	West
001003	Farmsum
001004	Tuikwerd
001005	Fivelzigt
001006	Noord
001007	Buitengebied Noord
001008	Oosterhorn
001009	Buitengebied Zuid
001400	Centrum
001401	Oud-Zuid
001402	Oud-West
001403	Oud-Noord
001404	Oosterparkwijk
001405	Zuidoost
001406	Helpman en omstreken
001407	Zuidwest
001408	Hoogkerk en omstreken
001409	Nieuw-West
001410	Noordwest
001411	Noordoost
001412	Noorddijk en omstreken
001413	Meerdorpen
001414	Meerstad en omstreken
001415	Ten Boer en omstreken
001416	Ten Post en omstreken
001417	Haren-West en omstreken
001418	Haren-Oost en omstreken
001419	Glimmen-Onnen-Noordlaren
002400	Wijk 00
002401	Wijk 01 Stedum
002402	Wijk 02 Middelstum
002403	Wijk 03 t Zandt
003401	Wijk 01 Almere Haven
003402	Wijk 02 Almere Stad
003403	Wijk 03 Almere Buiten
003404	Wijk 04 Almere Poort
003405	Wijk 05 Almere Hout
003406	Wijk 06 Almere Pampus
003701	Stadskanaal
003702	Musselkanaal
003703	Onstwedde
003704	Mussel
003705	Alteveer
004700	Wijk 00 Veendam-kern
004701	Wijk 01 Veendam-buitengebied
004702	Wijk 02 Wildervank
005000	Wijk 00
005900	Wijk 00 Noord
005901	Wijk 01 Centrum
005902	Wijk 02 Zuid
006000	Wijk 00
007200	Wijk 00 Harlingen
007201	Wijk 01 Midlum
007202	Wijk 02 Wijnaldum
007401	Wijk 01 Heerenveen
007402	Wijk 02 Noord-Heerenveen
007403	Wijk 03 Hoornsterzwaag
007404	Wijk 04 Jubbega
007406	Wijk 06 Oranjewoud
007407	Skarsterlân
007409	Boarnsterhim
008010	Binnenstad
008011	Potmargezone
008020	Oud-Oost
008030	Sonnenborgh en omstreken
008031	Westeinde en omstreken
008032	Vossepark & Helicon
008040	Huizum-West
008041	Nijlân & De Zwette
008050	Heechterp & Schieringen
008051	Camminghaburen en omstreken
008060	Bilgaard & Havankpark en omstreken
008061	Vrijheidswijk
008062	Dokkumer Ie en omstreken
008063	Stiens en omstreken
008070	Aldlân & De Hemrik
008071	Goutum
008072	HempensenTeerns & Zuiderburen
008073	De Zuidlanden
008074	Middelsee
008080	Dorpen Zuid-Oost
008081	Dorpen Zuid-West
008082	Grou en omstreken
008501	Appelscha
008502	Donkerbroek
008503	Elsloo
008504	Fochteloo
008505	Haule
008506	Haulerwijk
008507	Langedijke
008508	Makkinga
008509	Nijeberkoop
008510	Oldeberkoop
008511	Oosterwolde
008512	Ravenswoud
008513	Waskemeer
008601	Bakkeveen
008602	Beetsterzwaag
008604	Frieschepalen
008605	Gorredijk
008606	Hemrik
008607	Jonkerslân
008608	Langezwaag
008609	Lippenhuizen
008610	Luxwoude
008611	Nij Beets
008613	Siegerswoude
008614	Terwispel
008615	Tijnje
008616	Ureterp
008617	Wijnjewoude
008800	Wijk 00
009000	Wijk 00 Drachten
009001	Wijk 01 Overig Smallingerland
009300	Wijk 00 West-Terschelling
009301	Wijk 01 Midsland
009302	Wijk 02 Formerum
009303	Wijk 03 Lies
009304	Wijk 04 Hoorn
009305	Wijk 05 Oosterend
009600	Wijk 00
009800	Wolvega
009801	De Wolden-Ter Idzard
009802	De Lamers
009803	Lange-Nije-Munk
009804	Scherpenzeel-Spanga
009805	Oldetrijne-Sonnega
009806	Blesdijke
009807	De Blesse-Peperga
009808	Steggerda
009809	De Hoeve-Vinkega
009810	Noordwolde
009811	Oosterstreek
009812	Zandhuizen
009813	Boijl
009814	Nijeholtpade
009815	Oldeholtpade
010600	Wijk 00 Assen centrum
010601	Wijk 01 Lariks
010602	Wijk 02 Noorderpark
010603	Wijk 03 Assen Oost
010604	Wijk 04 Pittelo
010605	Wijk 05 Assen West
010606	Wijk 06 Peelo
010607	Wijk 07 Marsdijk
010608	Wijk 08 Kloosterveen
010699	Wijk 99 Buitengebied
010910	Wijk 10 Coevorden
010911	Wijk 11 Steenwijksmoer
010912	Wijk 12 Nieuwe Krim
010913	Wijk 13 Weijerswold
010914	Wijk 14 Vlieghuis en Padhuis
010920	Wijk 20 Dalen
010930	Wijk 30 Oosterhesselen
010940	Wijk 40 Sleen
010950	Wijk 50 Zweeloo
011401	Wijk 01 Nieuw-Weerdinge
011402	Wijk 02 Roswinkel
011403	Wijk 03 Emmer-Compascuum
011404	Wijk 04 Barger-Compascuum
011405	Wijk 05 Nieuw-Dordrecht
011406	Wijk 06 Nieuw-Amsterdam
011407	Wijk 07 Erica
011408	Wijk 08 Klazienaveen
011409	Wijk 09 Zwartemeer
011410	Wijk 10 Schoonebeek
011413	Wijk 13 Veenoord
011421	Wijk 21 Nieuw-Schoonebeek
011432	Wijk 32 Weiteveen
011440	Wijk 40 Emmen-Centrum
011441	Wijk 41 Emmen-Centrum Oost
011442	Wijk 42 Emmermeer
011443	Wijk 43 Angelslo
011444	Wijk 44 Emmerhout
011445	Wijk 45 Emmerschans
011446	Wijk 46 Bargeres
011447	Wijk 47 Rietlanden
011448	Wijk 48 Parc Sandur
011449	Wijk 49 Delftlanden
011450	Wijk 50 Barger-Oosterveld
011451	Wijk 51 Kern Emmen Noord
011452	Wijk 52 Kern Emmen Zuid
011453	Wijk 53 Kern Emmen Industrieterreinen
011850	Wijk 50 Hoogeveen
011851	Wijk 51 De Weide
011852	Wijke 52 Fluitenberg
011853	Wijk 53 Elim
011854	Wijk 54 Hollandscheveld
011855	Wijk 55 Noordscheschut
011856	Wijk 56 Nieuwlande
011857	Wijk 57 Nieuweroord
011858	Wijk 58 Tiendeveen
011859	Wijk 59 Stuifzand
011860	Wijk 60 Pesse
011861	Wijk 61 Zuideropgaande Nieuw Moscou
011862	Wijk 62 Industrie- en verspreide gebieden
011900	Centrum
011901	Watertoren
011902	Haveltermade
011903	Koedijkslanden
011904	Berggierslanden
011905	Ezinge
011906	Oosterboer
011907	Nieuwveenselanden
011908	Blankenstein
011909	Industrieterrein Noord
011910	Industrie Oevers
011911	Verspreid gebied Meppel
011912	Nijeveen
011913	Rogat
014110	Wijk 10 Binnenstad
014111	Wijk 11 De Riet
014112	Wijk 12 Noorderkwartier
014113	Wijk 13 Sluitersveld
014114	Wijk 14 Wierdense Hoek
014115	Wijk 15 Nieuwstraat-Kwartier
014116	Wijk 16 Ossenkoppelerhoek
014117	Wijk 17 Hofkamp
014118	Wijk 18 Schelfhorst
014119	Wijk 19 Windmolenbroek
014120	Wijk 20 Aadorp
014121	Wijk 21 Bornerbroek
014700	Wijk 00 Borne
014701	Wijk 01 Buitengebied Borne
014801	Dalfsen
014802	Nieuwleusen
014803	Lemelerveld
015001	Wijk 1 Binnenstad
015002	Wijk 2 De Hoven
015003	Wijk 3 Zandweerd
015004	Wijk 4 Voorstad
015005	Wijk 5 Borgele en Platvoet
015006	Wijk 6 Keizerslanden
015007	Wijk 7 Rivierenwijk en Bergweide
015008	Wijk 8 Colmschate-Noord
015009	Wijk 9 Colmschate-Vijfhoek
015010	Wijk 10 Colmschate-Zuid
015011	Wijk 11 Diepenveen
015012	Wijk 12 Schalkhaar
015013	Wijk 13 Okkenbroek
015014	Wijk 14 Lettele
015015	Wijk 15 Bathmen
015300	Wijk 00 Binnensingelgebied
015301	Wijk 01 Hogeland - Velve
015302	Wijk 02 Boswinkel - Stadsveld
015303	Wijk 03 Twekkelerveld - THT
015304	Wijk 04 Enschede-Noord
015305	Wijk 05 Ribbelt - Stokhorst
015306	Wijk 06 Enschede-Zuid
015307	Wijk 07 Bedrijfsterreinen Enschede-West
015308	Wijk 08 Glanerbrug en omgeving
015309	Wijk 09 Landelijk gebied en kernen
015800	Wijk 00 Haaksbergen dorp
015801	Wijk 01 Haaksbergen buitengebied
015802	Wijk 02 Sint Isidorushoeve
015803	Wijk 03 Buurse
015804	Wijk 04 Rietmolen
015805	Wijk 05 Hengevelde
015806	Wijk 06 Beckum
015809	Wijk 09 Haaksbergen-kern
016001	Ane
016002	Anerveen
016003	Anevelde
016004	Balkbrug
016005	Bergentheim
016006	Brucht
016007	Collendoorn
016008	De Krim
016009	Dedemsvaart
016010	Den Velde
016011	Diffelen
016012	Gramsbergen
016013	Heemserveen
016014	Holtheme
016015	Holthone
016016	Hoogenweg
016017	Kloosterhaar
016018	Loozen
016019	Lutten
016020	Marienberg
016021	Radewijk
016022	Rheeze
016023	Rheezerveen
016024	Schuinesloot
016025	Sibculo
016026	Slagharen
016027	Venebrugge
016028	Hardenberg
016029	Bruchterveld
016301	Wijk 01 Hellendoorn
016302	Wijk 02 Nijverdal Noord
016303	Wijk 03 Nijverdal West
016304	Wijk 04 Nijverdal Oost
016305	Wijk 05 Buitengebied
016306	Wijk 06 Kruidenwijk
016307	Wijk 07 Haarle
016308	Wijk 08 Daarle
016309	Wijk 09 Daarlerveen
016400	Wijk 00 Binnenstad
016401	Wijk 01 Hengelose Es
016402	Wijk 02 Noord
016403	Wijk 03 Hasseler Es
016404	Wijk 04 Groot Driene
016405	Wijk 05 Berflo Es
016406	Wijk 06 Wilderinkshoek
016407	Wijk 07 Woolde
016408	Wijk 08 Slangenbeek
016409	Wijk 09 Buitengebied
016600	Wijk 00 Kampen
016603	Wijk 03 IJsselmuiden
016604	Wijk 04 Zalk
016605	Wijk 05 Wilsum
016606	Wijk 06 Grafhorst
016607	Wijk 07 Kamperveen
016608	Wijk 08 s-Heerenbroek
016609	Wijk 09 Verspreide huizen
016800	Wijk 00 Losser
016801	Wijk 01 Glane
016802	Wijk 02 Overdinkel
016803	Wijk 03 De Lutte
016804	Wijk 04 Beuningen
017101	Wijk 01 Emmeloord
017102	Wijk 02 Bant
017103	Wijk 03 Luttelgeest
017104	Wijk 04 Marknesse
017105	Wijk 05 Kraggenburg
017106	Wijk 06 Ens
017107	Wijk 07 Nagele
017108	Wijk 08 Tollebeek
017109	Wijk 09 Espel
017110	Wijk 10 Creil
017111	Wijk 11 Rutten
017112	Wijk 12 Schokland
017301	Wijk 01 Binnenstad
017302	Wijk 02 Het Inslag-De Kleies
017303	Wijk 03 Glinde-Hooiland
017304	Wijk 04 De Meijbree
017305	Wijk 05 Haerbroek-Scholtenhoek
017306	Wijk 06 Zuid-Berghuizen
017307	Wijk 07 Hanzepoort
017308	Wijk 08 Eekte-Hazewinkel
017309	Wijk 09 Jufferbeek
017310	Wijk 10 Het Hulsbeek
017311	Wijk 11 De Thij
017312	Wijk 12 De Graven Es
017313	Wijk 13 De Essen
017314	Wijk 14 Bekspring
017501	Ommen
017502	Arrien
017503	Beerze
017504	Beerzerveld
017505	Dalmsholte
017506	Giethmen
017507	Lemele
017508	Stegeren
017509	Vilsteren
017510	Vinkenbuurt
017511	Witharen
017701	Raalte
017702	Luttenberg
017703	Mariënheem
017704	Nieuw Heeten
017705	Heeten
017706	Broekland
017707	Heino
017708	Lierderholthuis
017709	Laag Zuthem
018000	Wijk 00 Staphorst kern
018001	Wijk 01 Rouveen kern
018002	Wijk 02 Rouveen buitengebied
018003	Wijk 03 Staphorst buitengebied
018004	Wijk 04 IJhorst
018005	Wijk 05 Punthorst
018006	Wijk 06 Lankhorst
018007	Wijk 07 Klooster
018300	Wijk 00 Tubbergen
018301	Wijk 01 Albergen
018302	Wijk 02 Harbrinkhoek
018303	Wijk 03 Geesteren
018304	Wijk 04 Langeveen
018305	Wijk 05 Vasse
018306	Wijk 06 Reutum
018307	Wijk 07 Fleringen
018400	Wijk 00 Urk
018900	Wijk 00 Wierden kern
018901	Wijk 01 Landelijk gebied Wierden
018902	Wijk 02 Hooge-Hexel
018903	Wijk 03 Enter kern
018904	Wijk 04 Landelijk gebied Enter
018905	Wijk 05 Rectum - Notter - Zuna
019310	Wijk 10 Binnenstad
019311	Wijk 11 Diezerpoort
019312	Wijk 12 Wipstrik
019313	Wijk 13 Assendorp
019314	Wijk 14 Kamperpoort-Veerallee
019320	Wijk 20 Poort van Zwolle
019321	Wijk 21 Westenholte
019322	Wijk 22 Stadshagen
019330	Wijk 30 Holtenbroek
019331	Wijk 31 Aa-landen
019332	Wijk 32 Vechtlanden
019340	Wijk 40 Berkum
019341	Wijk 41 Marsweteringlanden
019350	Wijk 50 Schelle
019351	Wijk 51 Ittersum
019352	Wijk 52 Soestweteringlanden
019701	Wijk 01 Buitengebied Aalten
019702	Wijk 02 Bredevoort
019703	Wijk 03 Aalten Kern
019704	Wijk 04 Dinxperlo
020001	Centrum
020002	West
020003	Zuidwest
020004	Zuid
020005	Zuidoost
020006	Oost
020007	Noordoost
020008	Noord
020010	Uddel en omgeving
020011	Hoog Soeren en Radio Kootwijk
020012	Hoenderloo en omgeving
020013	Loenen en omgeving
020014	Beekbergen en omgeving
020015	Lieren en omgeving
020016	Klarenbeek en omgeving
020017	Wenum Wiesel Beemte
020201	Centrum
020202	Spijkerkwartier
020203	Arnhemse Broek
020204	Presikhaaf-West
020205	Presikhaaf-Oost
020206	St MartenenSonsbeek
020207	Klarendal
020208	Velperweg en omstreken
020209	AlteveerenCranevelt
020210	Geitenkamp
020211	Monnikenhuizen
020212	BurgemeesterswijkenHoogkamp
020213	Schaarsbergen
020214	HeijenoordenLombok
020215	Klingelbeek en omstreken
020216	Malburgen-West
020217	Malburgen-Oost Noord
020218	Malburgen-Oost Zuid
020219	VredenburgenKronenburg
020220	Elden
020221	Elderveld
020222	De Laar
020223	Rijkerswoerd
020224	Schuytgraaf
020354	Wijk 54 Barneveld
020355	Wijk 55 Voorthuizen
020356	Wijk 56 Kootwijkerbroek
020357	Wijk 57 Garderen
020358	Wijk 58 Terschuur
020359	Wijk 59 Stroe
020360	Wijk 60 Zwartebroek
020361	Wijk 61 De Glind
020362	Wijk 62 Kootwijk
020363	Wijk 63 Achterveld
020901	Beuningen
020902	Ewijk
020903	Weurt
020904	Winssen
021301	Wijk 01 Empe
021302	Wijk 02 Tonden
021303	Wijk 03 Brummen
021304	Wijk 04 Leuvenheim
021305	Wijk 05 Hall
021306	Wijk 06 Eerbeek
021400	Wijk 00 Buren
021401	Wijk 01 Beusichem
021402	Wijk 02 Zoelen
021403	Wijk 03 Lienden
021404	Wijk 04 Ingen
021405	Wijk 05 Maurik
021406	Wijk 06 Ravenswaaij
021600	Wijk 00
022101	Wijk 01
022201	Wijk 01 Doetinchem Centrum
022202	Wijk 02
022203	Wijk 03
022204	Wijk 04
022205	Wijk 05
022206	Wijk 06
022207	Wijk 07
022208	Wijk 08
022209	Wijk 09
022211	Wijk 11 Buitengebied Doetinchem
022231	Wijk 31 Wehl
022500	Druten
022501	Puiflijk
022502	Afferden
022503	Deest
022504	Horssen
022601	Wijk 01 Bedrijventerrein
022602	Wijk 02 Buitengebied
022603	Wijk 03 Duiven-Noord
022604	Wijk 04 Duiven-Zuid
022605	Wijk 05 Groessen
022606	Wijk 06 Loo
022801	Ede-Oost
022802	Ede-West
022803	Ede-Veldhuizen
022804	Kernhem
022805	Veluwse Poort
022810	Ede-Zuid
022811	Maandereng
022812	Rietkampen
022813	Bedrijventerrein
022820	Buitengebied Ede-Stad
022830	Bennekom
022840	Lunteren
022850	Ederveen
022860	De Klomp
022870	Harskamp
022880	Wekerom
022890	Otterlo
023001	Wijk 01 Elburg
023002	Wijk 02
023003	Wijk 03 Doornspijk
023200	Wijk 00 Epe
023201	Wijk 01 Emst
023202	Wijk 02 Vaassen
023203	Wijk 03 Oene
023300	Wijk 00 Ermelo
023301	Wijk 01 Speuld
024301	Wijk 01 Binnenstad
024302	Wijk 02 Waterfront
024303	Wijk 03 Zeebuurt
024304	Wijk 04 Friesegracht
024305	Wijk 05 Stadsdennen
024306	Wijk 06 De Sypel
024307	Wijk 07 Stationsomgeving
024308	Wijk 08 Stadsweiden
024309	Wijk 09 Slingerbos
024310	Wijk 10 Tweelingstad
024311	Wijk 11 Frankrijk
024312	Wijk 12 Drielanden
024313	Wijk 13 Industrieterrein Lorentz
024314	Wijk 14 Buitengebied Harderwijk
024315	Wijk 15 Hierden
024316	Wijk 16 Wolderwijd
024400	Wijk 00 Hattem
024401	Wijk 01 Polder Hattem en Molecaten
024600	Wijk 00 Heerde
024601	Wijk 01 Wapenveld
025200	Wijk 00 Heumen
025201	Wijk 01 Overasselt
026200	Wijk 00 Lochem kern
026201	Wijk 01 Lochem buitengebied
026202	Wijk 02 Laren
026203	Wijk 03 Barchem
026204	Wijk 04 Gorssel
026205	Wijk 01 Almen-Harfsen
026300	Wijk 00 Kerkdriel
026301	Wijk 01 Ammerzoden
026302	Wijk 02 Hedel
026303	Wijk 03 Heerewaarden
026304	Wijk 04 Rossum
026701	Nijkerk-stad
026702	Appel, Driedorp, Kruishaar, Prinsenkamp en Slichtenhorst
026703	Nijkerkerveen en Holkerveen
026704	Arkemheen, Achterhoek, De Veenhuis
026705	Hoevelaken
026801	Wijk 01 Nijmegen-Centrum
026802	Wijk 02 Nijmegen-Oost
026803	Wijk 03 Nijmegen-Oud-West
026804	Wijk 04 Nijmegen-Nieuw-West
026805	Wijk 05 Nijmegen-Midden
026806	Wijk 06 Nijmegen-Zuid
026807	Wijk 07 Dukenburg
026808	Wijk 08 Lindenholt
026809	Wijk 09 Nijmegen-Noord
026900	Wijk 00 Oldebroek
026901	Wijk 01 Wezep
026902	Wijk 02 Oosterwolde
027300	Wijk 00 Putten
027301	Wijk 01 Bosgebied en Krachtighuizen
027401	Renkum Zuid
027402	Renkum Noord
027403	Heelsum ten westen van de rijksweg
027404	Heelsum ten oosten van de rijksweg
027405	Wolfheze ten zuiden van het spoor
027406	Wolfheze ten noorden van het spoor
027407	Buitengebied Doorwerth
027408	Bebouwde kom Doorwerth
027409	Heveadorp
027410	Oosterbeek West
027411	Oosterbeek Zuidoost
027412	Oosterbeek Noordoost
027500	Wijk 00 Dieren
027501	Wijk 01 Rheden
027502	Wijk 02 Velp
027700	Wijk 00
027900	Wijk 00
028100	Tiel kern
028101	Tiel-Noord
028102	Wadenoijen en Kapel Avezaath
028103	Tiel-Zuid
028500	Wijk 00 Voorst
028501	Wijk 01 Twello-Nijbroek
028502	Wijk 02 Klarenbeek-Teuge
028503	Wijk 03 Wilp
028901	Noordwest
028902	Wageningen Universiteit
028903	De Weiden en Boomgaarden
028904	De Horsten
028905	Kortenoord
028906	De Buurt
028907	Boven- en Benedenbuurt
028908	Nude
028909	Centrum
028910	Veluvia-Hamelakkers
028911	Wageningen-Hoog
028912	Buitengebied
029300	Wijk 00
029400	Wijk 00 Stad
029401	Wijk 01 Land
029600	Wijk 00 Wijchen buitengebied
029601	Wijk 01 Wijchen kern
029602	Wijk 02 Balgoij
029603	Wijk 03 Batenburg
029604	Wijk 04 Bergharen
029605	Wijk 05 Hernen
029606	Wijk 06 Leur
029607	Wijk 07 Niftrik
029608	Wijk 08 Alverna
029700	Wijk 00 Zaltbommel
029701	Wijk 01 Brakel
029702	Wijk 02 Kerkwijk
029703	Wijk 03 Nederhemert
029900	Zevenaar
029901	Babberich
029902	Angerlo
029903	Giesbeek
029904	Lathum
029905	Rijnstrangen
029906	Pannerden
029907	Aerdt
029908	Herwen
029909	Lobith
029910	Tolkamer
029911	Spijk
030100	Wijk 00 Centrum - De Hoven
030101	Wijk 01 Waterkwartier
030102	Wijk 02 Noordveen
030103	Wijk 03 Zuidwijken
030104	Wijk 04 Leesten
030105	Wijk 05 Warnsveld
030200	Wijk 00 Nunspeet
030201	Wijk 01 Elspeet-Vierhouten
030301	Wijk 01 Dronten west
030302	Wijk 02 Dronten Noord
030303	Wijk 03 Dronten Midden
030304	Wijk 04 Dronten Zuid
030305	Wijk 05 Buitengebied Dronten
030306	Wijk 06 Biddinghuizen
030307	Wijk 07 Swifterbant
030701	Wijk 01 Stadskern
030702	Wijk 02 Zonnehof
030703	Wijk 03 Soesterkwartier
030704	Wijk 04 Isselt
030705	Wijk 05 Bosgebied
030706	Wijk 06 De Koppel
030707	Wijk 07 De Kruiskamp
030708	Wijk 08 Schothorst Zuid
030709	Wijk 09 Schothorst Noord
030710	Wijk 10 Liendert
030711	Wijk 11 Rustenburg
030712	Wijk 12 Stoutenburg-Noord
030713	Wijk 13 Schuilenburg
030714	Wijk 14 Randenbroek
030715	Wijk 15 Vermeerkwartier
030716	Wijk 16 Leusderkwartier
030717	Wijk 17 De Berg Zuid
030718	Wijk 18 De Berg Noord
030719	Wijk 19 Hoogland
030720	Wijk 20 Zielhorst
030721	Wijk 21 Kattenbroek
030722	Wijk 22 Calveen
030723	Wijk 23 Park Schothorst
030724	Wijk 24 Nieuwland
030725	Wijk 25 valleipoort
030726	Wijk 26 Hooglanderveen
030727	Wijk 27 Buitengebied West
030728	Wijk 28 Vathorst-De Velden
030729	Wijk 29 Vathorst-centrum
030730	Wijk 30 Vathorst-De Bron
030731	Wijk 31 Vathorst-De Laak
030800	Wijk 00 Baarn
030801	Wijk 01 Baarn-Noord, Eemdal en Eemland
030802	Wijk 02 PHWpark
030804	Wijk 04 Buitengebied
030805	Wijk 05 Lage Vuursche
031001	Westbroek
031002	Hollandsche Rading
031003	Maartensdijk
031004	Groenekan
031005	De Leijen
031006	Bilthoven Noord
031007	Bilthoven Zuid Oost
031008	Bilthoven Zuid West
031009	De Bilt West
031010	De Bilt Oost
031200	Wijk 00 Bunnik
031201	Wijk 01 Odijk
031202	Wijk 02 Werkhoven
031300	Wijk 00
031702	Eemnes
032110	Houten Noord-West
032111	Houten Noord-Oost
032112	Houten Zuid-West
032113	Houten Zuid-Oost
032120	Houten Buitengebied
032130	t Goy
032131	t Goy Buitengebied
032140	Tull en t Waal
032141	Tull en t Waal Buitengebied
032150	Schalkwijk
032151	Schalkwijk Buitengebied
032700	Wijk 00 Leusden-Centrum Oost
032701	Wijk 01 Leusden-Centrum West
032702	Wijk 02 Leusden-Zuid
032703	Wijk 03 Achterveld
032704	Wijk 04 Stoutenburg
032705	Wijk 05 t Ruige Veld
033100	Wijk 00 Lopik, Benschop en Polsbroek
033500	Wijk 00
033501	Wijk 01 Linschoten
033502	Wijk 02 Willeskop
033900	Wijk 00
034000	Wijk 00 Rhenen
034001	Wijk 01 Rhenen Oost
034002	Wijk 02 Rhenen West
034003	Wijk 03 Rhenen Noord
034004	Wijk 04 Grebbeberg
034005	Wijk 05 Randzone
034006	Wijk 06 Binnenveld
034007	Wijk 07 Achterberg
034008	Wijk 08 Uiterwaarden Rhenen
034009	Wijk 09 Remmerden
034010	Wijk 10 Heuvelrug Rhenen
034011	Wijk 11 Heuvelrug Elst
034012	Wijk 12 Uiterwaarden Elst
034013	Wijk 13 Elst
034201	Wijk 01 t Hart-Soestdijk
034202	Wijk 02 Klaarwater
034203	Wijk 03 Boerenstreek
034204	Wijk 04 de Eng-Soest-Midden
034205	Wijk 05 Smitsveen
034206	Wijk 06 Overhees
034207	Wijk 07 Soest-Zuid
034208	Wijk 08 Soesterberg
034401	Wijk 01 West
034402	Wijk 02 Noordwest
034403	Wijk 03 Overvecht
034404	Wijk 04 Noordoost
034405	Wijk 05 Oost
034406	Wijk 06 Binnenstad
034407	Wijk 07 Zuid
034408	Wijk 08 Zuidwest
034409	Wijk 09 Leidsche Rijn
034410	Wijk 10 Vleuten-De Meern
034500	Wijk 00 Centrum
034501	Wijk 01 Noordoost
034502	Wijk 02 Zuidoost
034503	Wijk 03 Zuidwest
034504	Wijk 04 Noordwest
034505	Wijk 05 West
035100	Wijk 00 Woudenberg
035200	Wijk 00 Wijk bij Duurstede
035201	Wijk 01 Landelijk gebied
035202	Wijk 02 Cothen
035203	Wijk 03 Langbroek
035300	Wijk 00 IJsselstein
035501	Wijk 01 Centrum Zeist
035502	Wijk 02 Zeist-Noord
035503	Wijk 03 Zeist-West
035504	Wijk 04 Zeist-Oost, Zeister Bos en omgeving
035505	Wijk 05 Huis Ter Heide, Bosch en Duin
035601	Jutphaas Wijkersloot
035602	Zuilenstein
035603	Batau Zuid
035604	Batau Noord
035605	Doorslag
035606	Huis de Geer
035607	Blokhoeve
035608	Galecop
035610	Fokkesteeg
035611	Hoogzandveld
035612	Lekboulevard
035613	Vreeswijk
035614	Merwestein
035615	Park Oudegein
035616	Zandveld
035618	Het Klooster
035620	Laagraven
035621	Plettenburg
035622	De Wiers
035623	Hoge Landen
035624	Stadscentrum
035625	Rijnhuizen
035800	Wijk 00 Aalsmeer
035801	Wijk 01 Kudelstraat en Kalslagen
035802	Wijk 02 Oosteinde
036101	Zuid
036102	Oudorp
036103	Overdie
036104	West
036105	Huiswaard
036106	De Mare
036107	DaalmeerenKoedijk
036108	Centrum
036109	Schermer
036110	Graft-De Rijp
036111	Vroonermeer
036201	Randwijck
036202	Patrimonium
036203	Elsrijk
036204	Stadshart
036205	Uilenstede, Kronenburg
036206	Bankras, Kostverloren
036207	Buitengebied Noord
036208	Keizer Karelpark
036209	Groenelaan
036210	Waardhuizen, Middenhoven
036211	Bovenkerk - Westwijk Noord
036212	Westwijk Zuid
036213	Buitengebied Zuid
036214	Amsterdamse Bos
036300	Burgwallen-Oude Zijde
036301	Burgwallen-Nieuwe Zijde
036302	Grachtengordel-West
036303	Grachtengordel-Zuid
036304	NieuwmarktenLastage
036305	Haarlemmerbuurt
036306	Jordaan
036307	De Weteringschans
036308	WeesperbuurtenPlantage
036309	Oostelijke EilandenenKadijken
036310	Westelijk Havengebied
036311	Bedrijventerrein Sloterdijk
036312	Houthavens
036313	Spaarndammer- en Zeeheldenbuurt
036314	Staatsliedenbuurt
036315	Centrale Markt
036316	Frederik Hendrikbuurt
036317	Da Costabuurt
036318	Kinkerbuurt
036319	Van Lennepbuurt
036320	Helmersbuurt
036321	Overtoomse Sluis
036322	Vondelbuurt
036323	Zuidas
036324	Oude Pijp
036325	Nieuwe Pijp
036326	Zuid Pijp
036327	Weesperzijde
036328	Oosterparkbuurt
036329	Dapperbuurt
036330	Transvaalbuurt
036331	Indische Buurt West
036332	Indische Buurt Oost
036333	Oostelijk Havengebied
036334	ZeeburgereilandenNieuwe Diep
036335	IJburg West
036336	Sloterdijk
036337	Landlust
036338	Erasmuspark
036339	De Kolenkit
036340	Geuzenbuurt
036341	Van Galenbuurt
036342	Hoofdweg en omstreken
036343	Westindische Buurt
036344	Hoofddorppleinbuurt
036345	Schinkelbuurt
036346	Willemspark
036347	Museumkwartier
036348	Stadionbuurt
036349	Apollobuurt
036350	IJburg Oost
036351	IJburg Zuid
036352	Scheldebuurt
036353	IJselbuurt
036354	Rijnbuurt
036355	Frankendael
036356	Middenmeer
036357	Betondorp
036358	OmvalenOveramstel
036359	Prinses Irenebuurt en omstreken
036360	Volewijck
036361	IJpleinenVogelbuurt
036362	Tuindorp Nieuwendam
036363	Tuindorp Buiksloot
036364	NieuwendammerdijkenBuiksloterdijk
036365	Tuindorp Oostzaan
036366	Oostzanerwerf
036367	Kadoelen
036368	Waterlandpleinbuurt
036369	Buikslotermeer
036370	Banne Buiksloot
036371	Noordelijke IJ-oevers West
036372	Noordelijke IJ-oevers Oost
036373	Waterland
036374	Elzenhagen
036375	Chassébuurt
036376	Slotermeer-Noordoost
036377	Slotermeer-Zuidwest
036378	Geuzenveld
036379	Eendracht
036380	LutkemeerenOokmeer
036381	Osdorp-Oost
036382	Osdorp-Midden
036383	De Punt
036384	Middelveldsche Akerpolder
036385	Slotervaart Noord
036386	Overtoomse Veld
036387	Westlandgracht
036388	Sloter-enRiekerpolder
036389	Slotervaart Zuid
036390	Buitenveldert-West
036391	Buitenveldert-Oost
036392	Amstel IIIenBullewijk
036393	Bijlmer Centrum D,F,H
036394	Bijlmer Oost E,G,K
036395	Nellestein
036396	HolendrechtenReigersbos
036397	Gein
036398	Driemond
037000	Wijk 00 Beemster
037001	Wijk 01 Zuidoostbeemster
037301	Wijk 01 Bergen Binnen
037302	Wijk 02 Bergen aan Zee
037303	Wijk 03 Buitengebied Bergen
037304	Wijk 04 Egmond aan Zee
037305	Wijk 05 Egmond-Binnen
037306	Wijk 06 Egmond aan den Hoef
037307	Wijk 07 Schoorl
037500	Centrum
037501	Vondelkwartier
037502	Oranjebuurt
037503	Kuenenkwartier
037504	Warande
037505	Noordwestelijk tuinbouwgebied
037506	Oosterwijk en Zwaansmeer
037507	Meerestein
037508	Wijk aan Zee
037509	de Pijp en Wijkerbroek
037510	Broekpolder
037601	Blaricum
037700	Wijk 00 Bloemendaal
037701	Wijk 01 Overveen
037702	Wijk 02 Aerdenhout
037703	Wijk 03 Vogelenzang
037704	Wijk 04 Bennebroek
038300	Wijk 00 Centrum
038301	Wijk 01 Castricum-Noord
038302	Wijk 02 Castricum-Oost
038303	Wijk 03 Castricum-Zuid
038304	Wijk 04 Bakkum
038305	Wijk 05 Akersloot
038306	Wijk 06 De Woude
038307	Wijk 07 Limmen
038401	Diemen Noord
038402	Diemen Centrum
038403	Diemen Zuid
038404	Bergwijkpark
038405	Holland Park
038406	Bedrijventerreinen
038407	Plantage de Sniep
038408	Buitengebied
038500	Wijk 00 Edam
038501	Wijk 01 Purmer
038502	Wijk 02 Volendam
038503	Wijk 03 Beets
038504	Wijk 04 Oosthuizen
038505	Wijk 05 Warder
038506	Wijk 06 Middelie
038507	Wijk 07 Kwadijk
038508	Wijk 08 Schardam
038509	Wijk 09 Hobrede
038800	Wijk 00
038801	Wijk 01
039201	Oude Stad
039202	Haarlemmerhoutkwartier
039203	Zijlwegkwartier
039204	Houtvaartkwartier
039205	Duinwijk
039206	Waarder- en Veerpolder
039207	Amsterdamsewijk
039208	Slachthuiswijk
039209	Parkwijk
039210	Transvaalwijk
039211	Indischewijk
039212	Ter Kleefkwartier
039213	Te Zaanenkwartier
039214	Vogelenwijk
039215	Delftwijk
039216	Vondelkwartier
039217	Spaarndam
039218	Europawijk
039219	Boerhaavewijk
039220	Molenwijk
039221	Meerwijk
039401	Hoofddorp
039402	Nieuw-Vennep
039403	Zwanenburg
039404	Lijnden en Boesingheliede
039405	Badhoevedorp
039406	Aalsmeerderbrugen Oude Meeren Rozenburg en Schiphol Rijk
039407	Rijsenhout
039408	Burgerveen en Leimuiderbrug en Weteringbrug
039409	Abbenes en Buitenkaag
039410	Lisserbroek
039411	Beinsdorp
039412	Zwaanshoek
039413	Cruquius
039415	Vijfhuizen
039416	Schiphol
039420	Spaarndam
039421	Haarlemmerliede
039422	Halfweg
039601	Wijk 01 Heemskerk-Dorp
039602	Wijk 02 Commandeurs en Marquette
039603	Wijk 03 Hofland, Oosterwijk en Zuidbroek
039604	Wijk 04 Heemskerkerduin en Noorddorp
039605	Wijk 05 Poelenburg en Oosterzij
039606	Wijk 06 Noordbroek en De Trompet
039607	Wijk 07 Kerkbeek
039608	Wijk 08 Assumburg
039609	Wijk 09 Hoogdorp en Waterakkers
039610	Wijk 10 Broekpolder
039611	Wijk 11 Oostelijk Heemskerk
039700	Wijk 00 Heemstede-Centrum
039701	Wijk 01 Heemstede-Zuid
039702	Wijk 02 Heemstede west van de spoorbaan
039801	Wijk 01 Schrijverswijk
039802	Wijk 02 Schilderswijk
039804	Wijk 04 Planetenwijk
039806	Wijk 06 Bomen- Recreatiewijk
039807	Wijk 07 Heemradenwijk
039808	Wijk 08 Edelstenenwijk
039809	Wijk 09 Stadshart
039810	Wijk 10 Molenwijk
039811	Wijk 11 Rivierenwijk
039812	Wijk 12 Bedrijventerrein
039813	Wijk 13 Butterhuizen
039814	Wijk 14 Oostertocht
039815	Wijk 15 Zuidwijk
039816	Wijk16 Huygenhoek
039817	Wijk 17 Stad van de Zon
039818	Wijk 18 De Draai
039819	Wijk 19 Broekhorn
039820	Wijk 20 De Noord
039830	Wijk 30 Buitengebied Noord
039840	Wijk 40 t Kruis
039850	Wijk 50 Buitengebied Zuid
039901	Wijk 01 Blockhovepark
039902	Wijk 02 Heiloo Noord-West
039903	Wijk 03 Heiloo-Midden
039904	Wijk 04 Heiloo-West
039905	Wijk 05 Stationsomgeving
039906	Wijk 06 Ypestein
039907	Wijk 07 Heiloo-Oost
039908	Wijk 08 Heiloo Zuid-West
040001	Wijk 01 Stad binnen de Linie-Oost
040002	Wijk 02 Stad binnen de Linie-West
040003	Wijk 03 Nieuw Den Helder-West
040004	Wijk 04 Nieuw Den Helder-Oost
040005	Wijk 05 De Schooten
040006	Wijk 06 Het Koegras
040007	Wijk 07 Duinzoom
040008	Wijk 08 Julianadorp
040201	Centrum
040202	Noordwest
040203	Zuidwest
040204	Zuid
040205	Zuidoost
040206	Oost
040207	Noordoost
040208	Hilversumse Meent
040209	Landelijk Gebied
040510	Wijk 10 Binnenstad
040511	Wijk 11 Venenlaan-kwartier
040512	Wijk 12 Hoorn-Noord
040513	Wijk 13 Grote Waal
040520	Wijk 20 Risdam-Zuid
040521	Wijk 21 Risdam-Noord
040522	Wijk 22 Nieuwe Steen
040530	Wijk 30 Zwaag
040531	Wijk 31 Blokker
040532	Wijk 32 Kersenboogerd-Noord
040533	Wijk 33 Kersenboogerd-Zuid
040534	Wijk 34 Hoorn 80
040535	Wijk 35 Bangert en Oosterpolder
040536	Wijk 36 Noord
040600	Wijk 00 Oude Dorp
040601	Wijk 01 Westereng
040602	Wijk 02 Buitenwijken
040603	Wijk 03 Erica en Tafelberg
040604	Wijk 04 Staatslieden en Componistenbuurt
040605	Wijk 05 Havengebied
040606	Wijk 06 Zenderwijk en Bovenweg
040607	Wijk 07 Stad en Lande
040608	Wijk 08 Huizermaat West en Zuid
040609	Wijk 09 Huizermaat Noord
040610	Wijk 10 Bijvanck
040611	Wijk 11 Bovenmaten
040612	Wijk 12 Hogemaat
041500	Wijk 00 Landsmeer
041501	Wijk 01 Ilpendam
041600	Wijk 00
041703	Laren
042001	Medemblik
042002	Opperdoes
042003	Twisk
042004	Lambertschaag
042005	Abbekerk
042006	Sijbekarspel
042007	Benningbroek
042008	Wognum
042009	Zwaagdijk-West
042010	Nibbixwoud
042011	Midwoud
042012	Oostwoud
042013	Hauwert
042014	Zwaagdijk-Oost
042015	Wervershoof
042016	Andijk
043100	Wijk 00
043200	Wijk 00
043201	Wijk 01
043202	Wijk 02
043700	Wijk 00
043901	Wijk 01 Centrum
043902	Wijk 02 Overwhere
043903	Wijk 03 Wheermolen
043904	Wijk 04 Gors
043905	Wijk 05 Purmer-Noord
043906	Wijk 06 Purmer-Zuid
043907	Wijk 07 Weidevenne
044101	Schagerbrug
044103	Burgerbrug
044104	Sint Maarten
044105	Warmenhuizen
044106	Tuitjenhorn
044107	Waarland
044108	Dirkshorn
044109	Oudesluis
044110	Schagen woonkern-Midden
044111	Petten
044112	Sint Maartensbrug
044113	t Zand
044114	Sint Maartensvlotbrug
044115	Callantsoog
044116	Schagen woonkern-West en Buitengebied
044117	Schagen woonkern-Oost en Buitengebied
044800	Wijk 00 Het Oude Land en duingebied
044801	Wijk 01 Het Nieuwe Land
045000	Wijk 00 Uitgeest
045115	Wijk 15 Dorpscentrum
045125	Wijk 25 Thamerdal
045135	Wijk 35 Zijdelwaard
045145	Wijk 45 Legmeer
045150	Wijk 50 Langs de Vuurlinie
045155	Wijk 55 Veilinggebied
045165	Wijk 65 Meerwijk
045175	Wijk 75 Bedrijventerrein
045185	Wijk 85 Meerwijk
045190	Wijk 90 Glastuinbouwgebied
045195	Wijk 95 Veenweidegebied
045300	Wijk 00 Velsen-Zuid en Driehuis
045301	Wijk 01 IJmuiden-Noord
045302	Wijk 02 IJmuiden-Zuid
045303	Wijk 03 IJmuiden-West
045304	Wijk 04 Zee- en Duinwijk
045305	Wijk 05 Velsen-Noord
045306	Wijk 06 Santpoort-Noord
045307	Wijk 07 Santpoort-Zuid
045308	Wijk 08 Velserbroek
045309	Wijk 09 Spaarndammerpolder
045700	Binnenstad
045701	Zuid
045702	Noord
045703	Hogewey
045704	Aetsveld
045707	Aetsveldsepolder
045708	Oostelijke Vechtoever
045709	Bloemendalerpolder
047301	Zandvoort Noord
047302	Zandvoort Zuid
047303	Bentveld
047304	Buitengebied
047911	Wijk 11 Zaandam Zuid
047912	Wijk 12 Poelenburg
047913	Wijk 13 Pelders- en Hoornseveld
047914	Wijk 14 Rosmolenwijk
047915	Wijk 15 Kogerveldwijk
047916	Wijk 16 Zaandam Noord
047921	Wijk 21 Oude Haven
047922	Wijk 22 Zaandam West
047923	Wijk 23 Nieuw West
047931	Wijk 31 Oud Koog aend Zaan
047932	Wijk 32 Westerkoog
047941	Wijk 41 Oud Zaandijk
047942	Wijk 42 Rooswijk
047951	Wijk 51 Wormerveer
047961	Wijk 61 Krommenie Oost
047962	Wijk 62 Krommenie West
047971	Wijk 71 Assendelft-Zuid
047972	Wijk 72 Assendelft-Noord
047981	Wijk 81 Westzaan
048201	Wijk 01 Centrum
048202	Wijk 02 Kinderdijk
048203	Wijk 03 Blokweer
048204	Wijk 04 Souburgh
048205	Wijk 05 Bedrijventerrein
048206	Wijk 06 Landelijk gebied
048401	Oudshoorn
048402	Ridderveld
048403	Zegersloot
048404	Hoorn
048405	Hoge Zijde
048406	Lage Zijde
048407	Steekterpolder
048408	Kerk en Zanen
048409	Rietveld
048431	Benthuizen
048445	Aarlanderveen
048470	Boskoop
048471	Zwammerdam
048491	Hazerswoude-Dorp
048494	Hazerswoude-Rijndijk
048496	Koudekerk aan den Rijn
048901	Wijk 01 Centrum
048902	Wijk 02 Noord
048903	Wijk 03 Binnenland
048904	Wijk 04 Oranjewijk
048905	Wijk 05 Buitenoord
048906	Wijk 06 Ter Leede
048907	Wijk 07 Paddewei
048908	Wijk 08 Molenvliet
048909	Wijk 09 Nieuweland
048910	Wijk 10 Dorpzicht
048911	Wijk 11 Bijdorp
048912	Wijk 12 Smitshoek
048913	Wijk 13 Voordijk
048914	Wijk 14 Meerwede
048915	Wijk 15 Waterkant
048916	Wijk 16 Havenkwartier
048917	Wijk 17 Gaatkensoog
048918	Wijk 18 Riederhoek
048919	Wijk 19 Vrijheidsakker
048920	Wijk 20 Vrijenburg
048930	Wijk 30 Buitengebied Noord
048931	Wijk 31 Buitengebied Zuid
048950	Wijk 50 Bedrijventerreinen
049800	Wijk 00 Hoogkarspel
049801	Wijk 01 Westwoud
049802	Wijk 02 Oosterblokker
049803	Wijk 03 Venhuizen
049804	Wijk 04 Wijdenes
049805	Wijk 05 Schellinkhout
050100	Wijk 00 Brielle
050101	Wijk 01 Vierpolders
050102	Wijk 02 Zwartewaal
050103	Wijk 03 Recreatiestrook Brielse Maas
050201	Capelle West en s Gravenland
050202	Middelwatering West
050203	Middelwatering Oost
050204	Oostgaarde Zuid
050205	Oostgaarde Noord
050206	Schenkel
050207	Schollevaar Zuid
050208	Schollevaar Noord
050209	Rivium
050311	Wijk 11 Binnenstad
050312	Wijk 12 Vrijenban
050313	Wijk 13 Hof van Delft
050314	Wijk 14 Voordijkshoorn
050316	Wijk 16 Delftse Hout
050322	Wijk 22 Tanthof-West
050323	Wijk 23 Tanthof-Oost
050324	Wijk 24 Voorhof
050325	Wijk 25 Buitenhof
050326	Wijk 26 Abtswoude
050327	Wijk 27 Schieweg
050328	Wijk 28 Wippolder
050329	Wijk 29 Ruiven
050501	Wijk 01 Binnenstad
050502	Wijk 02 Noordflank
050503	Wijk 03 Oud Krispijn
050504	Wijk 04 Nieuw-krispijn
050505	Wijk 05 Het Reeland
050506	Wijk 06 Staart
050507	Wijk 07 Wielwijk
050508	Wijk 08 CrabbehofenZuidhoven
050509	Wijk 09 Sterrenburg
050510	Wijk 10 Dubbeldam
050511	Wijk 11 Stadspolders
050519	Wijk 19 Industriegebied West
050598	Wijk 98 Verspreide bebouwing
051201	Wijk 01 Gorinchem binnenstad
051202	Wijk 02 Wijdschild
051203	Wijk 03 Lingewijk
051204	Wijk 04 haarwijk
051205	Wijk 05 Stalkaarsen
051206	Wijk 06 Gildenwijk
051207	Wijk 07 Schelluinsestraat
051208	Wijk 08 Avelingen Oost
051209	Wijk 09 Avelingen West
051210	Wijk 10 Molenvliet
051211	Wijk 11 laag Dalem
051212	Wijk 12 Dalem
051213	Wijk 13 Hoog Dalem
051214	Wijk 14 Bedrijventerrein Oost
051215	Wijk 15 Papland
051216	Wijk 16 schotdeuren
051217	Wijk 17 Bedrijventerrein Noord
051218	Wijk 18 Landelijk gebied West
051219	Wijk 19 Landelijk gebied Noord
051220	Wijk 20 Landelijk gebied Oost
051221	Wijk 21 Landelijk gebied Zuid
051301	Binnenstad
051302	De Korte Akkeren
051303	Bloemendaal
051304	Plaswijck
051305	Noord
051306	Kort Haarlem
051307	Goverwelle
051308	Stolwijkersluis
051309	Westergouwe
051801	Wijk 01 Oostduinen
051802	Wijk 02 Belgisch Park
051803	Wijk 03 Westbroekpark en Duttendel
051804	Wijk 04 Benoordenhout
051805	Wijk 05 Archipelbuurt
051806	Wijk 06 Van Stolkpark en Scheveningse Bosjes
051807	Wijk 07 Scheveningen
051808	Wijk 08 Duindorp
051809	Wijk 09 Geuzen- en Statenkwartier
051810	Wijk 10 Zorgvliet
051811	Wijk 11 Duinoord
051812	Wijk 12 Bomen- en Bloemenbuurt
051813	Wijk 13 Vogelwijk
051814	Wijk 14 Bohemen en Meer en Bos
051815	Wijk 15 Kijkduin en Ockenburgh
051816	Wijk 16 Kraayenstein en Vroondaal
051817	Wijk 17 Loosduinen
051818	Wijk 18 Waldeck
051819	Wijk 19 Vruchtenbuurt
051820	Wijk 20 Valkenboskwartier
051821	Wijk 21 Regentessekwartier
051822	Wijk 22 Zeeheldenkwartier
051823	Wijk 23 Willemspark
051824	Wijk 24 Haagse Bos
051825	Wijk 25 Mariahoeve en Marlot
051826	Wijk 26 Bezuidenhout
051827	Wijk 27 Stationsbuurt
051828	Wijk 28 Centrum
051829	Wijk 29 Schildersbuurt
051830	Wijk 30 Transvaalkwartier
051831	Wijk 31 Rustenburg en Oostbroek
051832	Wijk 32 Leyenburg
051833	Wijk 33 Bouwlust en Vrederust
051834	Wijk 34 Morgenstond
051835	Wijk 35 Zuiderpark
051836	Wijk 36 Moerwijk
051837	Wijk 37 Groente- en Fruitmarkt
051838	Wijk 38 Laakkwartier en Spoorwijk
051839	Wijk 39 Binckhorst
051840	Wijk 40 Wateringse Veld
051841	Wijk 41 Hoornwijk
051842	Wijk 42 Ypenburg
051843	Wijk 43 Forepark
051844	Wijk 44 Leidschenveen
052300	Wijk 00
053000	Wijk 00 Hellevoet
053001	Wijk 01 Nieuw-Helvoet
053002	Wijk 02 Nieuwenhoorn
053003	Wijk 03 De Struyten
053004	Wijk 04 De Kooistee
053005	Wijk 05 Den Bonsen Hoek
053006	Wijk 06 Ravense Hoek
053007	Wijk 07 Centrumgebied
053008	Wijk 08 Kickers Bloem
053009	Wijk 09 Buitengebied
053010	Oudenhoorn
053101	Wijk 01 Centrum
053102	Wijk 02 Krommeweg
053103	Wijk 03 De Volgerlanden
053104	Wijk 04 Sandelingen-Ambacht
053105	Wijk 05 De Oevers
053200	Wijk 00
053201	Wijk 01
053401	Hillegom Midden
053402	Hillegom Noord
053403	Hillegom Zuid
053404	Hillegom West
053405	Buitengebied
053701	Katwijk Noord
053702	t Heen
053703	Katwijk aan den Rijn
053705	Katwijk aan Zee
053706	Landelijk gebied Katwijk
053707	Rijnsburg
053708	Valkenburg
054200	Wijk 00 Krimpen aan den IJssel
054600	Binnenstad-Zuid
054601	Binnenstad-Noord
054602	Stationsdistrict
054603	Leiden-Noord
054604	Roodenburgerdistrict
054605	Bos- en Gasthuisdistrict
054606	Morsdistrict
054607	Boerhaavedistrict
054608	Merenwijkdistrict
054609	Stevenshofdistrict
054700	Wijk 00
054701	Wijk 01
054702	Wijk 02
055301	Lisse Noord
055302	Centrum
055303	Lisse Zuid
055304	Buitengebied
055601	Wijk 01 Taanschuurpolder
055602	Wijk 02 Dijkpolder
055603	Sluispolder
055604	Wijk 04 Kapelpolder
055605	Wijk 05 Burgemeesterswijk
055606	Wijk 06 Steendijkpolder
055607	Wijk 07 Aalkeetpolder
055608	Wijk 08 Wilgenrijk
056900	Wijk 00
056901	Wijk 01 Nieuwveen
056902	Wijk 02 Zevenhoven
056903	Wijk 03 Ter Aar
057500	Wijk 00 Noordwijk-Binnen
057501	Wijk 01 Noordwijk Aan Zee
057502	Wijk 02 Noordwijkerhout
057900	Wijk 00 Oegstgeest
058901	Hekendorp
058902	Oudewater
058903	Papekop
058904	Snelrewaard
059000	Wijk 00 Papendrecht
059701	Centrum
059702	West
059703	Oost
059704	Drievliet
059705	Het Zand
059706	Slikkerveer
059707	Bolnes
059708	Rijsoord
059709	Oostendam
059710	Donkersloot
059711	Verenambacht
059712	Cornelisland
059901	Rotterdam Centrum
059903	Delfshaven
059904	Overschie
059905	Noord
059906	Hillegersberg-Schiebroek
059908	Kralingen-Crooswijk
059910	Feijenoord
059912	IJsselmonde
059913	Pernis
059914	Prins Alexander
059915	Charlois
059916	Hoogvliet
059917	Hoek van Holland
059918	Spaanse Polder
059919	Nieuw Mathenesse
059921	Waalhaven-Eemhaven
059922	Vondelingenplaat
059923	Botlek-Europoort-Maasvlakte
059924	Rotterdam-Noord-West
059925	Rivium
059926	Bedrijventerrein Schieveen
059927	Rozenburg
060301	Wijk 01
060302	Wijk 02
060303	Wijk 03
060304	Wijk 04
060305	Wijk 05
060306	Wijk 06
060307	Wijk 07
060308	Wijk 08
060309	Wijk 09
060310	Wijk 10
060311	Wijk 11
060600	Wijk 00 Centrum
060601	Wijk 01 Oost
060602	Wijk 02 Tussen Havens en Grachten
060603	Wijk 03 West
060604	Wijk 04 Zuid
060605	Wijk 05 Nieuw Mathenesse
060606	Wijk 06 Nieuwland
060607	Wijk 07 Groenoord en Kethel
060608	Wijk 08 Industriegebied ten noorden van Rijksweg 20
060609	Wijk 09 WoudhoekenSpaland enSveaparken
061001	Wijk 01 Sliedrecht-West
061002	Wijk 02 Sliedrecht-Centrum
061003	Wijk 03 Sliedrecht-Oost
061004	Wijk 04 Sliedrecht-Noord
061301	Wijk 01 Poortugaal-Noord
061302	Wijk 02 Rhoon-Noord
061303	Wijk 03 Poortugaal-Zuid
061304	Wijk 04 Rhoon-Zuid
061305	Wijk 05 Buitengebied Albrandswaard
061306	Wijk 06 Portland
061307	Wijk 07 Rotterdam-Albrandswaard
061400	Wijk 00 Rockanje
061401	Wijk 01 Oostvoorne
062201	Centrum
062202	Westwijk
062203	Vettenoordse Polder
062204	Oostwijk
062205	Vlaardinger Ambacht
062206	Holy Zuid
062207	Holy Noord
062208	Broekpolder
062600	Wijk 00
062701	Wijk 01
062702	Wijk 02
062703	Wijk 03
062704	Wijk 04
062900	Wijk 00 Zuidwestelijk deel der gemeente
062901	Wijk 01 Noordoostelijk deel der gemeente
063201	Wijk 01 Woerden-Midden
063202	Wijk 02 Woerden-West
063203	Wijk 03 Woerden-Oost
063204	Wijk 04 Buitengebied Woerden-West
063205	Wijk 05 Buitengebied Woerden-Oost
063206	Wijk 06 Harmelen
063207	Wijk 07 Kamerik
063208	Wijk 08 Zegveld
063700	Centrum
063701	Meerzicht
063702	Buytenwegh de Leyens
063703	Seghwaert
063704	Noordhove
063705	Rokkeveen
063706	Oosterheem
063708	Industriegebied
063709	Buitengebied
063800	Zoeterwoude-Dorp
063801	Westeinde
063802	Zuidbuurt
063803	Weipoort
063804	Gelderswoude
063809	Verspreide huizen
063810	Zoeterwoude-Rijndijk
064201	Wijk 01 Walburg
064202	Wijk 02 Centrum
064203	Wijk 03 Noord
064204	Wijk 04 Heer Oudelands Ambacht
064205	Wijk 05 Kort Ambacht
064206	Wijk 06 Nederhoven
064207	Wijk 07 Verspreide bebouwing
064208	Wijk 08 Bebouwde kom Heerjansdam
064209	Wijk 09 Landelijk gebied Heerjansdam
065401	Baarland
065402	Borssele
065403	Driewegen
065404	Ellewoutsdijk
065405	Heinkenszand
065406	Hoedekenskerke
065407	Kwadendamme
065408	Lewedorp
065409	Nieuwdorp
065410	Nisse
065411	Oudelande
065412	Ovezande
065413	s-Gravenpolder
065414	s-Heer Abtskerke
065415	s-Heerenhoek
066401	Wijk 01 Goes
066402	Wijk 02 Wilhelminadorp
066403	Wijk 03 Kloetinge
066404	Wijk 04 Kattendijke
066405	Wijk 05 s-Heer-Arendskerke
066406	Wijk 06 Eindewege
066407	Wijk 07 s-Heer-Hendrikskinderen
066408	Wijk 08 Wolphaartsdijk
066409	Wijk 09 Oud-Sabbinge
066801	Wijk 01 Alphen
066802	Wijk 02 Altforst
066803	Wijk 03 Appeltern
066804	Wijk 04 Beneden-Leeuwen
066805	Wijk 05 Boven-Leeuwen
066806	Wijk 06 Dreumel
066807	Wijk 07 Maasbommel
066808	Wijk 08 Wamel
067701	Hulst
067702	Sint Jansteen
067703	Clinge
067704	Graauw
067705	Heikant
067706	Nieuw Namen
067707	Kapellebrug
067708	Kloosterzande
067709	Lamswaarde
067710	Terhole
067711	Vogelwaarde
067712	Hengstdijk
067713	Ossenisse
067714	Kuitaart
067715	Walsoorden
067800	Wijk 00 Kapelle
067801	Wijk 01 Wemeldinge
067802	Wijk 02 Schore
068700	Binnenstad
068710	Griffioen
068711	Klarenbeek
068712	Nieuw Middelburg
068713	Brigdamme
068714	Sint Laurens
068715	Ramsburg
068716	Veersepoort
068717	Verspreide huizen in het noorden
068718	Verspreide huizen in het noordwesten
068719	Verspreide huizen in het noordoosten
068720	Stromenwijkent Zand
068729	Verspreide huizen in het zuidwesten
068730	Middelburg Zuid
068731	Dauwendaele
068732	Arnestein
068739	Mortiere
068740	Nieuw- en Sint Joosland
068749	Verspreide huizen Nieuw- en Sint Joosland
068750	Arnemuiden
068751	Kleverskerke
068752	Oranjeplaat
068753	Veerse Meer
068759	Verspreide huizen Arnemuiden
070300	Wijk 00 Yerseke
070301	Wijk 01 Kruiningen
070302	Wijk 02 Krabbendijke
070303	Wijk 03 Waarde
070304	Wijk 04 Rilland-Bath
070305	Wijk 05 Hansweert
070306	Wijk 06 Oostdijk
071501	Terneuzen Centrum
071504	Terneuzen West
071507	Terneuzen Zuid
071510	Terneuzen Noord
071513	Terneuzen Oost
071516	Buitengebied Terneuzen
071519	Kern Axel
071522	Buitengebied Axel
071525	Kern Biervliet
071528	Buitengebied Biervliet
071531	Kern Hoek
071534	Buitengebied Hoek
071537	Kern Koewacht
071540	Buitengebied Koewacht
071543	Kern Overslag
071546	Buitengebied Overslag
071549	Kern Philippine
071552	Buitengebied Philippine
071555	Kern Sas van Gent
071558	Buitengebied Sas van Gent
071561	Kern Sluiskil
071564	Buitengebied Sluiskil
071567	Kern Spui
071570	Buitengebied Spui
071573	Kern Westdorpe
071576	Buitengebied Westdorpe
071579	Kern Zaamslag
071582	Buitengebied Zaamslag
071585	Kern Zuiddorpe
071588	Buitengebied Zuiddorpe
071600	Tholen
071601	Poortvliet
071602	Scherpenisse
071603	Sint-Maartensdijk
071604	Stavenisse
071605	Sint-Annaland
071606	Oud-Vossemeer
071607	Sint Philipsland
071700	Wijk 00 Veere
071701	Wijk 01 Gapinge
071702	Wijk 02 Vrouwenpolder
071703	Wijk 03 Serooskerke
071704	Wijk 04 Domburg
071705	Wijk 05 Oostkapelle
071706	Wijk 06 Aagtekerke
071707	Wijk 07 Grijpskerke
071708	Wijk 08 Meliskerke
071709	Wijk 09 Koudekerke
071710	Wijk 10 Biggekerke
071711	Wijk 11 Zoutelande
071712	Wijk 12 Westkapelle
071801	Binnenstad
071802	Middengebied
071803	Paauwenburg - Westduin
071804	Lammerenburg
071805	Oost-Souburg
071806	Ritthem en omstreken
071807	Binnen- en Buitenhavens
071808	Sloegebied
073601	Mijdrecht
073602	de Hoef
073603	Amstelhoek
073604	Vinkeveen
073605	Waverveen
073606	Wilnis
073607	Abcoude
073608	Baambrugge
073700	Wijk 00 Burgum
073701	Wijk 01 Aldtsjerk
073702	Wijk 02 Mûnein
073703	Wijk 03 Ryptsjerk
073704	Wijk 04 Tytsjerk
073705	Wijk 05 Earnewâld
073706	Wijk 06 Sumar
073707	Wijk 07 Eastermar
073708	Wijk 08 Noordburgum
073709	Wijk 09 Hurdegaryp
074301	Asten industrie noord
074302	Asten buitengebied oost
074303	Asten noord
074304	Asten oost
074305	Asten zuid
074306	Asten centrum en west
074307	Asten buitengebied west
074308	Heusden wonen
074309	Heusden recreatie
074310	Ommel wonen
074311	Ommel recreatie
074400	Wijk 00 Baarle - Nassau
074401	Wijk 01 Ulicoten
074402	Wijk 02
074800	Wijk 00 Bergen op Zoom-Oude stad en omgeving
074801	Wijk 01 Bergen op Zoom-Noord
074802	Wijk 02 Bergen op Zoom-Oost
074803	Wijk 03 Bergen op Zoom-West
074804	Wijk 04 Halsteren
074805	Wijk 05 Lepelstraat
075300	Wijk 00 Best
075500	Wijk 00 Boekel
075501	Wijk 01 Venhorst
075600	Wijk 00 Boxmeer
075601	Wijk 01 Sambeek
075602	Wijk 02 Beugen
075603	Wijk 03 Oeffelt
075604	Wijk 04 Rijkevoort
075605	Wijk 05 Vortum-Mullem
075606	Wijk 06 Vierlingsbeek
075607	Wijk 07 Overloon
075608	Wijk 08 Maashees
075609	Wijk 09 Holthees
075700	Wijk 00 Boxtel
075701	Wijk 01 Lennisheuvel
075702	Wijk 02 Liempde
075800	Breda centrum
075801	Breda noord
075802	Breda oost
075803	Breda zuid-oost
075804	Breda zuid
075805	Breda west
075806	Breda noord-west
075807	Bavel
075808	Ulvenhout
075809	Prinsenbeek
075810	Teteringen
076200	Wijk 00 Deurne
076201	Wijk 01 Vlierden
076202	Wijk 02 Liessel
076203	Wijk 03 Neerkant
076204	Wijk 04 Helenaveen
076500	Wijk 00
076501	Wijk 01
076601	Dongen
076602	s Gravenmoer
077000	Eersel
077001	Duizel
077002	Steensel
077003	Vessem
077004	Wintelre
077005	Knegsel
077211	Centrum
077221	Oud-Stratum
077222	Kortonjo
077223	Putten
077231	De Laak
077232	Doornakkers
077233	Oud-Tongelre
077241	Oud-Woensel
077242	Erp
077243	Begijnenbroek
077251	Ontginning
077252	Achtse Molen
077253	Aanschot
077254	Dommelbeemd
077261	Oud-Strijp
077262	Halve Maan
077263	Meerhoven
077271	Rozenknopje
077272	Oud-Gestel
077273	Gestelse Ontginning
077700	Midden woongebied
077701	Midden Bedrijventerrein
077702	Midden landelijk gebied
077710	Noord woongebied
077711	Noord bedrijventerrein
077712	Noord landelijk gebied
077720	Zuid woongebied
077721	Zuid bedrijventerrein West
077722	Zuid bedrijventerrein Oost
077723	Zuid landelijk gebied
077900	Wijk 00 Raamsdonksveer
077901	Wijk 01 Raamsdonk
077902	Wijk 02 Geertruidenberg
078400	Wijk 00 Rijen
078401	Wijk 01 Gilze
078402	Wijk 02 Molenschot
078403	Wijk 03 Hulten
078501	Wijk 01 Goirle-Centrum
078502	Wijk 02 Grobbendonck
078503	Wijk 03 De Groote Akkers
078504	Wijk 04 De Hoge Wal
078505	Wijk 05 Abcoven
078506	Wijk 06 Wildackers
078507	Wijk 07 t Ven
078508	Wijk 08 De Boschkens
078509	Wijk 09 De Hellen
078510	Wijk 10 De Nieuwe Erven
078511	Wijk 11 Hoogeind
078512	Wijk 12 Sportpark Van den Wildenberg
078513	Wijk 13 Bedrijventerrein Tijvoort
078514	Wijk 14 Verspreide huizen Goirle
078520	Wijk 20 Riel
078521	Wijk 21 Bedrijventerrein Riel
078522	Wijk 22 Sportpark De Krim
078523	Wijk 23 Verspriede huizen Riel
078605	Escharen
078607	Velp
078608	Gassel
078613	Grave
078801	Wijk 01 Haaren
078802	Wijk 02 Helvoirt
078803	Wijk 03 Esch
078804	Wijk 04 Biezenmortel
079410	Wijk 10 Binnenstad
079411	Wijk 11 Helmond-Oost
079412	Wijk 12 Helmond-Noord
079413	Wijk 13 t Hout
079414	Wijk 14 Brouwhuis
079415	Wijk 15 Helmond-West
079416	Wijk 16 Warande
079417	Wijk 17 Stiphout
079418	Wijk 18 Rijpelberg
079419	Wijk 19 Dierdonk
079421	Wijk 21 Brandevoort
079429	Wijk 29 Industriegebied Zuid
079601	Binnenstad
079602	Zuidoost
079603	Graafsepoort
079604	Muntel en Vliert
079605	Rosmalen-Zuid
079606	Rosmalen-Noord
079607	De Groote Wielen
079608	Empel
079609	Noord
079610	Maaspoort
079611	West
079612	Engelen
079613	Nuland
079614	Vinkel
079701	Wijk 01 Drunen
079702	Wijk 02 Elshout
079703	Wijk 03 Haarsteeg
079704	Wijk 04 Nieuwkuijk
079705	Wijk 05 Vlijmen
079706	Wijk 06 Doeveren
079707	Wijk 07 Hedikthuizen
079708	Wijk 08 Heesbeen
079709	Wijk 09 Herpt
079710	Wijk 10 Heusden
079711	Wijk 11 Oudheusden
079800	Wijk 00 Hilvarenbeek
079801	Wijk 01 Esbeek
079802	Wijk 02 Biest-Houtakker
079803	Wijk 03 Diessen
079804	Wijk 04 Haghorst
080910	Wijk 10 Kaatsheuvel-West
080920	Wijk 20 Kaatsheuvel-Oost
080930	Wijk 30 Loon op Zand
080940	Wijk 40 De Moer
081509	Mill
081510	Sint Hubert
081512	Wilbertoord
081515	Langenboom
082000	Wijk 00 Nuenen
082001	Wijk 01 Gerwen
082002	Wijk 02 Nederwetten
082300	Wijk 00 Oirschot
082301	Wijk 01 Spoordonk
082302	Wijk 02 Middelbeers en Westelbeers
082303	Wijk 03 Oostelbeers
082401	Versprh westen en noorden Moerg
082402	Pannenschuur
082403	Heukelom
082404	Buitengebied Zuid
082405	Omgeving Vinkenberg en Heuvelstraat
082406	Omgeving George Perklaan
082407	Centrum Moergestel
082408	t Westend en t Seuverick
082409	Bunders en Levenskerk
082410	Buitengebied Kerkhoven
082411	Waterhoef en Klompven
082412	Omgeving Industrieterrein
082413	Centrum Oisterwijk
082414	Versprh oosten en zuiden Moerg
082415	Omgeving Broekzijde
082600	Wijk 00 Oosterhout-Centrum
082601	Wijk 01 Slotjes
082602	Wijk 02 West
082603	Wijk 03 Strijen
082604	Wijk 04 Leijsenakkers
082605	Wijk 05 Oosterheide
082606	Wijk 06 Dommelbergen
082607	Wijk 07 Vrachelen
082608	Wijk 08 Industrieterrein Zuid
082609	Wijk 09 Industrieterrein Noord
082610	Wijk 10 Buitengebied Oosterhout
082611	Wijk 11 Den Hout
082612	Wijk 12 Oosteind
082613	Wijk 13 Dorst
082800	Centrum
082801	Schadewijk
082802	Industrieterreinen-Zuid
082803	Oss-Zuid
082804	Krinkelhoek
082805	Industrieterreinen-Noord
082806	Ruwaard
082807	Ussen
082808	Buitengebied-Noord
082809	Buitengebied-Zuid
082810	Berghem
082811	Haren
082812	Macharen
082813	Megen
082814	Ravenstein
082815	Herpen
082816	Overlangel
082817	Deursen en Dennenburg
082818	Lith
082819	Lithoijen
082820	Oijen
082821	Maren-Kessel
082822	Geffen
084000	Wijk 00 Rucphen
084001	Wijk 01 Sint Willebrord
084002	Wijk 02 Sprundel
084003	Wijk 03 Schijf
084004	Wijk 04 Zegge
084500	Wijk 00 Sint-Michielsgestel
084501	Wijk 01 Gemonde
084502	Wijk 02 Den Dungen
084503	Wijk 03 Berlicum
084504	Wijk 04 Middelrode
084700	Wijk 00 Someren
084701	Wijk 01 Lierop
084702	Wijk 02 Someren-Eind
084703	Wijk 03 Somerense Heide
084709	Wijk 09
084800	Wijk 00 Son
084801	Wijk 01 Breugel
085100	Wijk 00 Steenbergen
085101	Wijk 01 Kruisland
085102	Wijk 02 De Heen
085103	Wijk 03 Dinteloord
085104	Wijk 04 Nieuw-Vossemeer
085200	Wijk 00 Monnickendam
085201	Wijk 01 Katwoude
085202	Wijk 02 Marken
085203	Wijk 03 Broek in Waterland
085204	Wijk 04 Ilpendam
085205	Wijk 05 Watergang
085510	Binnenstad
085511	Hoogvenne
085512	Armhoef
085513	Jeruzalem
085514	Fatima
085515	Broekhoven
085516	Oerle
085517	Korvel
085518	Trouwlaan - Uitvindersbuurt
085519	Sint Anna
085520	Noordhoek
085521	Spoorzone Zuid
085522	Bouwmeester
085523	De Hasselt
085524	Het Goirke
085525	Groeseind-Hoefstraat
085526	Loven-Besterd
085527	Theresia
085528	Spoorzone Noord
085529	Kanaalzone
085530	Moerenburg
085531	De Leij
085532	Groenewoud
085533	Stappegoor
085534	Bedrijventerrein Het Laar
085535	De Blaak
085536	Zorgvlied
085537	De Reit
085538	Het Zand
085539	Wandelbos Noord
085540	Wandelbos Zuid
085541	De Oude Warande
085542	Stokhasselt
085543	Heikant
085544	Quirijnstok
085545	Indterrein Loven
085546	Bosscheweg
085547	Gesworen Hoek
085548	Huibeven
085549	Campenhoef
085550	Heyhoef
085551	Heerevelden
085552	Dongewijk
085553	Tuindorp De Kievit
085554	Leeuwerik
085555	Dalem Noord
085556	Dalem Zuid
085557	Koolhoven
085558	Witbrant
085559	Bedrijventerrein Kraaiven
085560	Bedrijventerrein Vossenberg
085561	De Katsbogten
085562	Buitengebied Tilburg Zuid-Oost
085563	Buitengebied Tilburg Zuid-West
085564	Buitengebied Tilburg Noord-Oost
085565	Buitengebied Tilburg Noord-West
085566	Berkel-Enschot
085567	Udenhout
085601	Wijk 01 Uden
085602	Wijk 02 Volkel
085603	Wijk 03 Odiliapeel
085800	Wijk 00 Valkenswaard
085801	Wijk 01 Kloosterakkers en Dommelen
085802	Wijk 02 Borkel en Schaft
086100	Wijk 00 Veldhoven
086101	Wijk 01 Noordelijk Woongebied
086102	Wijk 02 Oerle
086500	Wijk 00 Vught
086501	Wijk 01 Vught-Zuid
086502	Wijk 02 Cromvoirt
086600	Wijk 00 Waalre
086700	Wijk 00 Waalwijk
086701	Wijk 01 Sprang-Capelle
086702	Wijk 02 Waspik
087300	Wijk 00 Hoogerheide en Woensdrecht
087301	Wijk 01 Huijbergen
087302	Wijk 02 Ossendrecht
087303	Wijk 03 Putte
087900	Wijk 00 Zundert
087901	Wijk 01 Klein - Zundert
087902	Wijk 02 Wernhout
087903	Wijk 03 Achtmaal
087904	Wijk 04 Rijsbergen
088000	Wijk 00 Wormer
088001	Wijk 01 Wijdewormer
088002	Wijk 02 Jisp
088200	Wijk 00 Schaesberg
088201	Wijk 01 Nieuwenhagen
088202	Wijk 02 Ubach over Worms
088800	Wijk 00 Beek - Spaubeek
088801	Wijk 01 Beek-Zuid
088900	Wijk 00 Reuver
088901	Wijk 01 Beesel
089301	Aijen
089302	Oud-Bergen
089303	Nieuw-Bergen
089304	Afferden
089305	Siebengewald
089306	Well
089307	Wellerlooi
089901	Wijk 01 Brunssum-West
089902	Wijk 02 Brunssum-Noord
089903	Wijk 03 Brunssum-Oost
089904	Wijk 04 Brunssum-Zuid
089905	Wijk 05 Brunssum-Centrum
090700	Wijk 00 Milsbeek
090701	Wijk 01 Ottersum
090702	Wijk 02 Ven-Zelderheide
090703	Wijk 03 Gennep
090704	Wijk 04 Heijen
091710	Wijk 10 Maria Gewanden en Terschuren
091711	Wijk 11 Mariarade
091712	Wijk 12 Hoensbroek-De Dem
091713	Wijk 13 Nieuw Lotbroek
091714	Wijk 14 De Koumen
091720	Wijk 20 Vrieheide-De Stack
091721	Wijk 21 Heerlerheide-Passart
091722	Wijk 22 Heksenberg
091723	Wijk 23 De Hei
091724	Wijk 24 Rennemig-Beersdal
091730	Wijk 30 Zeswegen-Nieuw Husken
091731	Wijk 31 Schandelen-Grasbroek
091732	Wijk 32 Meezenbroek-Schaesbergerveld
091733	Wijk 33 Heerlen-Centrum
091734	Wijk 34 Eikenderveld
091735	Wijk 35 Woonboulevard-Ten Esschen
091736	Wijk 36 Welten-Benzenrade
091737	Wijk 37 Bekkerveld
091738	Wijk 38 Caumerveld-Douve Weien
091739	Wijk 39 Molenberg
091740	Wijk 40 Heerlerbaan-Centrum
091741	Wijk 41 Heerlerbaan-Schil
091742	Wijk 42 De Beitel
092800	Wijk 00 Kerkrade-West
092801	Wijk 01 Kerkrade-Oost
092802	Wijk 02 Kerkrade-Noord
093500	Wijk 00 Centrum
093501	Wijk 01 Buitenwijk Zuidwest
093502	Wijk 02 Buitenwijk West
093503	Wijk 03 Buitenwijk Noordwest
093504	Wijk 04 Buitenwijk Oost
093505	Wijk 05 Buitenwijk Noordoost
093506	Wijk 06 Buitenwijk Zuidoost
093800	Wijk 00 Meerssen
093801	Wijk 01 Ulestraten
093802	Wijk 02 Bunde - Geulle
094400	Wijk 00 Mook
094401	Wijk 01 Middelaar
094601	Wijk 01 Nederweert
094602	Wijk 02 Budschop
094603	Wijk 03 Ospel
094604	Wijk 04 Nederweert-Eind
094605	Wijk 05 Leveroy
095700	Wijk 00 Centrum
095701	Wijk 01 Roermond-Oost
095702	Wijk 02 Roermond-Zuid
095703	Wijk 03 Maasniel
095704	Wijk 04 Donderberg
095705	Wijk 05 Hoogvonderen
095706	Wijk 06 Asenray
095707	Wijk 07 Herten
095708	Wijk 08 Swalmen
095709	Wijk 09 Maasplassen
096500	Wijk 00 Simpelveld
096501	Wijk 01 Bocholtz
097100	Wijk 00 Stein
097101	Wijk 01 Elsloo
097102	Wijk 02 Urmond
098100	Wijk 00 Vijlen-Lemiers
098101	Wijk 01 Vaals
098311	Wijk 11 Venlo-Centrum
098312	Wijk 12 Venlo-Zuid
098313	Wijk 13 Venlo-Oost-Noord
098314	Wijk 14 Venlo-Noord
098315	Wijk 15 Venlo-Oost-Zuid
098316	Wijk 16 Het Ven
098321	Wijk 21 Blerick-Midden
098322	Wijk 22 Blerick-Noord
098323	Wijk 23 Blerick-Zuid
098324	Wijk 24 Vossener
098325	Wijk 25 Klingerberg
098326	Wijk 26 Hout-Blerick
098327	Wijk 27 Boekend
098328	Wijk 28 Trade-Port
098331	Wijk 31 Tegelen-Centrum
098332	Wijk 32 Op de Hei
098335	Wijk 35 Steyl
098341	Wijk 41 Velden
098343	Wijk 43 Lomm
098344	Wijk 44 Arcen
098351	Wijk 51 Belfeld
098401	Heide
098402	Ysselsteyn
098403	Merselo
098404	Vredepeel
098405	Smakt
098406	Oostrum
098407	Oirlo
098408	Castenray
098409	Veulen
098410	Leunen
098411	Centrum
098412	Oost
098413	West
098414	Vlakwater
098415	Veltum
098416	Brukske
098417	Landweert
098418	Smakterheide
098419	Brabander
098420	St Antoniusveld
098421	Wanssum
098422	Geijsteren
098423	Blitterswijck
098601	Wijk 01 Voerendaal
098602	Wijk02 Kunrade
098603	Wijk 03 Ubachsberg
098604	Wijk 04 Klimmen
098605	Wijk 05 Ransdaal
098609	Wijk 09 Verspreide huizen Voerendaal
098801	Wijk 01 Boshoven
098802	Wijk 02 Laar en Hushoven
098803	Wijk 03 Molenakker en Kampershoek
098811	Wijk 11 Weert-Centrum
098812	Wijk 12 Biest
098813	Wijk 13 Groenewoud
098814	Wijk 14 Fatima
098821	Wijk 21 Keent
098822	Wijk 22 Moesel
098823	Wijk 23 Graswinkel
098824	Wijk 24 Leuken
098825	Wijk 25 Kazernelaan
098831	Wijk 31 Altweerterheide
098832	Wijk 32 Tungelroy
098833	Wijk 33 Swartbroek
098834	Wijk 34 Stramproy
099400	Wijk 00: Valkenburg
099401	Wijk 01: Houthem - Sint Gerlach
099402	Wijk 02: Schin op Geul - Oud-Valkenburg
099403	Wijk 03: Sibbe - IJzeren
099404	Wijk 04: Berg en Terblijt - Vilt
099405	Wijk 05: Walem
099501	Zuiderzeewijk
099502	Atolwijk
099503	Boswijk
099504	Waterwijk-Landerijen
099505	Bolder
099506	Kustwijk
099507	Havendiep
099508	Lelystad-Haven
099509	Stadshart
099510	Buitengebied
099511	Warande
150700	Wijk 00 Griendtsveen
150701	Wijk 01 America
150702	Wijk 02 Meterik
150703	Wijk 03 Hegelsom
150704	Wijk 04 Horst
150705	Wijk 05 Melderslo
150706	Wijk 06 Broekhuizen
150707	Wijk 07 Lottum
150708	Wijk 08 Grubbenvorst
150709	Wijk 09 Broekhuizen
150710	Wijk 10 Sevenum
150711	Wijk 11 Kronenberg
150712	Wijk 12 Evertsoord
150713	Wijk 13 Meerlo
150714	Wijk 14 Tienray
150715	Wijk 15 Swolgen
150900	Wijk 00 Ulft-Etten
150901	Wijk 01 Overig Gendringen
150902	Wijk 02 Silvolde-Terborg
150903	Wijk 03 Varsseveld
152501	Voorhout Oude Dorp
152502	Voorhout Oosthout
152503	Voorhout Hooghkamer
152504	Voorhout Buiten
152511	Sassenheim  Midden
152512	Sassenheim  Oost
152513	Sassenheim  Zuid
152514	Sassenheim  West
152515	Sassenheim  buiten
152521	Warmond
152522	Warmond buiten
158100	Wijk 00 Doorn
158101	Wijk 01 Driebergen-Rijssenburg
158102	Wijk 02 Leersum
158103	Wijk 03 Amerongen
158104	Wijk 04 Maarn
158601	Wijk 01 Lichtenvoorde
158602	Wijk 02 Harreveld
158603	Wijk 03 Zieuwewnt
158604	Wijk 04 Lievelde
158605	Wijk 05 Vragender
158606	Wijk 06 Groenlo
158607	Wijk 07 Marienvelde
159801	Obdam
159802	Hensbroek
159803	Spierdijk
159804	Zuidermeer
159805	Berkhout
159806	Ursem
159807	De Goorn
159808	Avenhorn
159809	Scharwoude
159810	Oudendijk
162111	Wijk 11 Bergschenhoek
162112	Wijk 12 De Ackers
162113	Wijk 13 Boterdorp
162114	Wijk 14 Wilderszijde
162115	Wijk 15 Oosteindsche Polder
162121	Wijk 21 Berkel
162122	Wijk 22 Noordpolder
162123	Wijk 23 Meerpolder
162124	Wijk 24 Noordeinde
162125	Wijk 25 Zuidpolder
162126	Wijk 26 De Wadden
162127	Wijk 27 Westpolder
162128	Wijk 28 Rodenrijs
162131	Wijk 31 Bleiswijk
162132	Wijk 32 Hoekeindse Zoom
162133	Wijk 33 Bleiswijk Buiten
164000	Heythuysen
164001	Heibloem
164002	Roggel
164003	Neer
164004	Nunhem
164005	Haelen
164006	Buggenum
164007	Horn
164008	Baexem
164009	Kelpen-Oler
164010	Grathem
164011	Ell
164012	Haler
164013	Hunsel
164014	Neeritter
164015	Ittervoort
164100	Wijk 00 Maasbracht
164101	Wijk 01 Linne
164102	Wijk 02 Stevensweert
164103	Wijk 03 Ohé en Laak
164104	Wijk 04 Thorn
164105	Wijk 05 Heel
164106	Wijk 06 Beegden
164107	Wijk 07 Wessem
165200	Wijk 00 Gemert
165201	Wijk 01 Handel
165202	Wijk 02 De Mortel
165203	Wijk 03 Elsendorp
165204	Wijk 04 Bakel
165205	Wijk 05 Milheeze
165206	Wijk 06 De Rips
165501	Wijk 01 Oud Gastel
165502	Wijk 02 Stampersgat
165503	Wijk 03 Oudenbosch
165504	Wijk 04 Hoeven
165505	Wijk 05 Bosschenhoofd
165800	Wijk 00 Heeze
165801	Wijk 01 Leende
165802	Wijk 02 Leenderstrijp
165803	Wijk 03 Sterksel
165900	Wijk 00 Beek en Donk
165901	Wijk 01 Aarle-Rixtel
165902	Wijk 02 Lieshout
165903	Wijk 03 Mariahout
166700	Wijk 00 Reusel
166701	Wijk 01 Hooge Mierde
166702	Wijk 02 Lage Mierde
166703	Wijk 03 Hulsel
166901	Montfort
166902	Sint Odiliënberg
166903	Melick
166904	Posterholt
166905	Herkenbosch
166906	Vlodrop
167400	Wijk 00 Centrum
167401	Wijk 01 Oost
167402	Wijk 02 Noord
167403	Wijk 03 West
167404	Wijk 04 Groot Kroeven
167405	Wijk 05 Langdonk
167406	Wijk 06 Kortendijk
167407	Wijk 07 Tolberg
167408	Wijk 08 Industriegebieden
167410	Wijk 10 Nispen
167411	Wijk 11 Wouw
167412	Wijk 12 Heerle
167413	Wijk 13 Moerstraten
167414	Wijk 14 Wouwse Plantage
167600	Wijk 00 Zierikzee
167601	Wijk 01 Brouwershaven
167602	Wijk 02 Zonnemaire
167603	Wijk 03 Dreischor
167604	Wijk 04 Noordgouwe
167605	Wijk 05 Bruinisse
167606	Wijk 06 Nieuwerkerk
167607	Wijk 07 Oosterland
167608	Wijk 08 Ouwerkerk
167609	Wijk 09 Scharendijke
167610	Wijk 10 Kerkwerve
167611	Wijk 11 Ellemeet
167612	Wijk 12 Haamstede
167613	Wijk 13 Renesse
167614	Wijk 14 Noordwelle
167615	Wijk 15 Serooskerke
168000	Wijk 00 Annen
168001	Wijk 01 Eext
168002	Wijk 02 Anloo
168003	Wijk 03 Gasteren
168004	Wijk 04 Anderen
168005	Wijk 05 Schipborg
168006	Wijk 06 Eexterveen
168007	Wijk 07 Spijkerboor
168008	Wijk 08 Nieuw-Annerveen
168009	Wijk 09 Oud-Annerveen
168011	Wijk 11 Annerveenschekanaal
168012	Wijk 12 Eexterveenschekanaal
168013	Wijk 13 Eexterzandvoort
168014	Wijk 14 Gasselte
168015	Wijk 15 Gasselternijveen
168016	Wijk 16 Gasselternijveenschemond
168017	Wijk 17 Gieten
168018	Wijk 18 Gieterveen
168019	Wijk 19 Rolde
168020	Wijk 20 Grolloo
168021	Wijk 21 Ekehaar
168100	Wijk 00 Borger
168101	Wijk 01 Buinen
168102	Wijk 02 Bronneger
168103	Wijk 03 Drouwen
168104	Wijk 04 Bronnegerveen
168105	Wijk 05 Drouwenerveen
168106	Wijk 06 Drouwenermond
168107	Wijk 07 Nieuw-Buinen
168108	Wijk 08 Buinerveen
168109	Wijk 09 Ees
168110	Wijk 10 Odoorn
168111	Wijk 11 Exloo
168112	Wijk 12 Valthe
168113	Wijk 13 Klijndijk
168114	Wijk 14 Odoornerveen
168115	Wijk 15 Tweede Exloërmond
168116	Wijk 16 Valthermond
168401	Linden
168402	Katwijk
168403	Vianen
168404	Beers
168406	Cuijk
168411	Haps
168414	Sint Agatha
168500	Wijk 00 Schaijk
168501	Wijk 01 Reek
168502	Wijk 02 Zeeland
168509	Wijk 09 Verspreide huizen Zeeland
169000	Wijk 00 Zuidwolde
169001	Wijk 01 Alteveer
169002	Wijk 02 Kerkenveld
169003	Wijk 03 Drogteropslagen
169004	Wijk 04 Linde
169005	Wijk 05 Fort
169006	Wijk 06 Veeningen
169007	Wijk 07 Echten
169008	Wijk 08 Ruinen
169009	Wijk 09 Eursinge
169010	Wijk 10 Ansen
169011	Wijk 11 Ruinerwold
169012	Wijk 12 Koekange
169013	Wijk 13 De Wijk
169500	Wijk 00 Kortgene
169501	Wijk 01 Colijnsplaat
169502	Wijk 02 Kats
169503	Wijk 03 Kamperland
169504	Wijk 04 Wissenkerke
169505	Wijk 05 Geersdijk
169600	Wijk 00 s-Graveland
169601	Wijk 01 Kortenhoef
169602	Wijk 02 Ankeveen
169603	Wijk 03 Loosdrecht
169604	Wijk 04 Nieuw-Loosdrecht
169605	Wijk 05 Breukeleveen
169606	Wijk 06 Nederhorst den Berg
169900	Wijk 00 Roden
169901	Wijk 01 Roden
169903	Wijk 03 Norg
169904	Wijk 04 Norg
169906	Wijk 06 Peize
170000	Wijk 00 Vriezenveen kern
170001	Wijk 01 Vriezenveen buitengebied
170002	Wijk 02 Westerhaar-Vriezenveensewijk
170003	Wijk 03 Kloosterhaar
170004	Wijk 04 Bruinehaar
170100	Wijk 00 Diever
170101	Wijk 01 Wapse
170102	Wijk 02 Zorgvlied
170103	Wijk 03 Dwingeloo
170104	Wijk 04 Lhee
170105	Wijk 05 Eemster
170106	Wijk 06 Geeuwenbrug
170107	Wijk 07 Dieverbrug
170108	Wijk 08 Havelte
170109	Wijk 09 Uffelte
170110	Wijk 10 Wapserveen
170111	Wijk 11 Vledder
170112	Wijk 12 Frederiksoord
170113	Wijk 13 Nijensleek
170114	Wijk 14 Vledderveen
170115	Wijk 15 Wilhelminaoord
170116	Wijk 16 Doldersum
170117	Wijk 17 Boschoord
170200	Wijk 00 Sint Anthonis
170201	Wijk 01 Oploo
170202	Wijk 02 Westerbeek
170203	Wijk 03 Stevensbeek
170204	Wijk 04 Wanroij
170205	Wijk 05 Landhorst
170500	Wijk 00 Bemmel
170501	Wijk 01 Gendt
170502	Wijk 02 Huissen
170600	Wijk 00 Budel
170601	Wijk 01 Schoot
170602	Wijk 02 Dorplein
170603	Wijk 03 Maarheeze
170604	Wijk 04 Soerendonk
170605	Wijk 05 Gastel
170800	Steenwijk
170802	Oldemarkt
170803	Kalenberg
170804	Kuinre
170805	Blankenham
170806	Scheerwolde
170807	Vollenhove
170808	Sint Jansklooster
170810	Belt-Schutsloot
170811	Wanneperveen
170816	Blokzijl
170817	Giethoorn
170818	Zuidveen
170819	Onna
170820	Kallenkote
170821	Eesveen
170822	De Bult
170823	Baars
170824	Witte Paarden
170825	De Pol
170826	Willemsoord
170827	Marijenkampen
170828	Tuk
170829	Steenwijkerwold
170830	Basse
170831	Paasloo
170832	IJsselham
170833	Ossenzijl
170834	Wetering
170835	Nederland
170836	Baarlo
170900	Wijk 00 Zevenbergen
170901	Wijk 01 Zevenbergschen Hoek
170902	Wijk 02 Langeweg
170903	Wijk 03 Klundert
170904	Wijk 04 Moerdijk
170905	Wijk 05 Noordhoek
170906	Wijk 06 Standdaarbuiten
170907	Wijk 07 Fijnaart
170908	Wijk 08 Heijningen
170909	Wijk 09 Willemstad
170910	Wijk 10 Helwijk
171101	Wijk 01 Susteren
171102	Wijk 02 Dieteren
171103	Wijk 03 Heide
171104	Wijk 04 Roosteren
171105	Wijk 05 Echt
171106	Wijk 06 Maria Hoop
171107	Wijk 07 Peij
171108	Wijk 08 Slek
171109	Wijk 09 Nieuwstadt
171110	Wijk 10 Sint Joost
171111	Wijk 11 Koningsbosch
171400	Wijk 00 Sluis
171401	Wijk 01 Retranchement
171402	Wijk 02 Aardenburg
171403	Wijk 03 Eede
171404	Wijk 04 Sint Kruis
171405	Wijk 05 Oostburg
171406	Wijk 06 Zuidzande
171407	Wijk 07 Cadzand
171408	Wijk 08 Nieuwvliet
171409	Wijk 09 Groede
171410	Wijk 10 Breskens
171411	Wijk 11 Hoofdplaat
171412	Wijk 12 IJzendijke
171413	Wijk 13 Schoondijke
171414	Wijk 14 Waterlandkerkje
171900	Wijk 00 Made
171901	Wijk 01 Drimmelen
171902	Wijk 02 Terheijden
171903	Wijk 03 Wagenberg
171904	Wijk 04 Lage Zwaluwe
171905	Wijk 05 Hooge Zwaluwe
172101	Kern Heesch
172102	Kern Heeswijk-Dinther
172103	Kern Nistelrode
172104	Buitengebied Heesch
172105	Buitengebied Heeswijk-Dinther
172106	Buitengebied Nistelrode
172300	Wijk 00 Alphen
172301	Wijk 01 Chaam
172302	Wijk 02 Galder
172308	Wijk 08 Verspreide huizen
172309	Wijk 09 Verspreide huizen
172400	Wijk 00 Bergeijk t Hof
172401	Wijk 01 Weebosch
172402	Wijk 02 Luyksgestel
172403	Wijk 03 Riethoven
172404	Wijk 04 Westerhoven
172405	Wijk 05 Bergeijk t Loo
172406	Wijk 06 Buitengebied
172800	Wijk 00 Bladel
172801	Wijk 01 Netersel
172802	Wijk 02 Hapert
172803	Wijk 03 Hoogeloon
172804	Wijk 04 Casteren
172900	Wijk 00 Gulpen
172901	Wijk 01 Wijlre
172902	Wijk 02 Eys
172903	Wijk 03 Wittem
172904	Wijk 04 Mechelen
172905	Wijk 05 Epen
172906	Wijk 06 Slenaken
173000	Wijk 00 Zuidlaren
173001	Wijk 01 De Groeve
173002	Wijk 02 Zuidlaarderveen
173003	Wijk 03 Midlaren
173004	Wijk 04 Westlaren
173005	Wijk 05 Schuilingsoord
173006	Wijk 06 Paterswolde
173007	Wijk 07 Eelde
173008	Wijk 08 Eelderwolde
173009	Wijk 09 Vries
173010	Wijk 10 Donderen
173011	Wijk 11 Bunne
173012	Wijk 12 Yde
173013	Wijk 13 Tynaarlo
173014	Wijk 14 Zeegse
173015	Wijk 15 Zeijen
173100	Wijk 00 Beilen
173101	Wijk 01 Hijken
173102	Wijk 02 Hooghalen
173103	Wijk 03 Wijster
173104	Wijk 04 Spier
173105	Wijk 05 Drijber
173106	Wijk 06 Smilde
173107	Wijk 07 Bovensmilde
173108	Wijk 08 Hoogersmilde
173109	Wijk 09 Westerbork
173110	Wijk 10 Elp
173111	Wijk 11 Witteveen
173112	Wijk 12 Nieuw-Balinge
173113	Wijk 13 Nieuweroord
173114	Wijk 14 Zwiggelte
173115	Wijk 15 Orvelte
173116	Wijk 16 De Broekstreek
173401	Buitengebied Elst
173402	Elst-Zuid
173403	Elst-Noord
173404	De Aam
173405	Westeraam
173406	Elst-Oost
173407	Oosterhout
173408	Slijk-Ewijk
173409	Herveld
173410	Andelst
173411	Kern Zetten
173412	Buitengebied Zetten
173413	Hemmen
173414	Randwijk
173415	Kern Heteren
173416	Buitengebied Heteren
173417	Valburg
173418	Driel
173500	Wijk 00 Goor
173501	Wijk 01 De Whee II
173502	Wijk 02 Markelo
173503	Wijk 03 Verspreide huizen Kerspel en omgeving
173504	Wijk 04 Elsen
173505	Wijk 05 Diepenheim
173506	Wijk 06 Delden
173507	Wijk 07 Overig Delden
173508	Wijk 08 Hengevelde
173509	Wijk 09 Bentelo
174000	Wijk 00 Kesteren
174001	Wijk 01 Echteld
174002	Wijk 02 Dodewaard
174200	Wijk 00 Stad Rijssen
174201	Wijk 01 Stadsrand
174202	Wijk 02 Buitengebied Rijssen
174203	Wijk 03 Holten
174204	Wijk 04 Bedrijventerrein Holten
174205	Wijk 05 Buitengebied Holten
174207	Wijk 07 Bedrijventerrein Rijssen
174208	Wijk 08 Recreatiegebied De Borkeld
177100	Wijk 00 Geldrop
177101	Wijk 01 Mierlo
177301	Wijk 01 Olst
177302	Wijk 02 Wijhe
177303	Wijk 03 Wesepe
177304	Wijk 04 Boskamp
177305	Wijk 05 Boerhaar
177306	Wijk 06 Welsum
177307	Wijk 07 Den Nul
177308	Wijk 08 Eikelhof
177309	Wijk 09 Elshof
177310	Wijk 10 Marle
177311	Wijk 11 Middel
177312	Wijk 12 Herxen
177410	Wijk 10 Denekamp
177411	Wijk 11 Lattrop-Breklenkamp
177412	Wijk 12 Tilligte
177413	Wijk 13 Agelo
177414	Wijk 14 Noord Deurningen
177415	Wijk 15 Ootmarsum
177416	Wijk 16 Weerselo
177417	Wijk 17 Rossum
177418	Wijk 18 Saasveld
177419	Wijk 19 Deurningen
177420	Wijk 20 Nutter
177421	Wijk 21 Oud Ootmarsum
178301	Wijk 01 Naaldwijk
178302	Wijk 02 Honselersdijk
178303	Wijk 03 Maasdijk
178304	Wijk 04 s-Gravenzande
178305	Wijk 05 Monster
178306	Wijk 06 Wateringen
178307	Wijk 07 De Lier
178308	Wijk 08 Kwintsheul
178309	Wijk 09 Poeldijk
178310	Wijk 10 Ter Heijde
184200	Wijk 00 Schipluiden
184201	Wijk 01 Maasland
185900	Wijk 00 Borculo
185901	Wijk 01 Eibergen
185902	Wijk 02 Beltrum
185903	Wijk 03 Neede
185904	Wijk 04 Ruurlo
187600	Wijk 00 Hengelo
187601	Wijk 01 Zelhem
187602	Wijk 02 Vorden
187603	Wijk 03 Steenderen
187604	Wijk 04 Hummelo en Keppel
188300	Wijk 00 Limbrichterveld
188301	Wijk 01 Sittard
188302	Wijk 02 Overhoven
188303	Wijk 03 Munstergeleen
188304	Wijk 04 Guttecoven
188305	Wijk 05 Geleen
188306	Wijk 06 Holtum-Born
188307	Wijk 07 Obbicht en Papenhoven
188400	Wijk 00 Roelofarendsveen
188401	Wijk 01 Overig Alkemade
188402	Wijk 02 Woubrugge
188403	Wijk 03 Rijnsaterwoude
188404	Wijk 04 Leimuiden
189100	Wijk 00 Centrum
189101	Wijk 01 Oost
189102	Wijk 02 Zuid
189103	Wijk 03 West
189201	Moerkapelle wijk 01
189202	Zevenhuizen wijk 02
189203	Moordrecht wijk 03
189204	Nieuwerkerk aan den IJssel wijk 04
189400	Wijk 00 Grashoek-Koningslust
189401	Wijk 01 Panningen
189402	Wijk 02 Kessel
189403	Wijk 03 Maasbree
189404	Wijk 04 Baarlo
189405	Wijk 05 Meijel
189500	Wijk 00 Winschoten
189501	Wijk 01 Finsterwolde
189502	Wijk 02 Drieborg
189503	Wijk 03 Beerta
189504	Wijk 04 Nieuw-Beerta
189505	Wijk 05 Nieuweschans
189506	Wijk 06 Scheemda-Heiligerlee
189507	Wijk 01 Westerlee
189508	Wijk 02 Noord
189509	Wijk 03 Midwolda
189510	Wijk 04 Nieuwolda
189600	Wijk 00 Genemuiden
189601	Wijk 01 Kamperzeedijk
189602	Wijk 02 Hasselt
189603	Wijk 03 Landelijk gebied Hasselt
189604	Wijk 04 Zwartsluis
189605	Wijk 05 Mastenbroek
190000	Wijk 00 Bolsward
190001	Wijk 01 Sneek
190002	Wijk 02 Nijefurd
190003	Wijk 03 Koudum
190004	Wijk 04 Hemelum
190005	Wijk 05 IJlst
190006	Wijk 06 Zuid IJlst
190007	Wijk 07 Oost IJlst
190008	Wijk 08 West IJlst
190009	Wijk 09 Oosthem
190010	Wijk 10 Noordwest IJlst
190011	Wijk 11 Zuidoost IJlst
190012	Wijk 12 Woudsend
190013	Wijk 13 Bouwhoek
190014	Wijk 14 Weidestreek Oost
190015	Wijk 15 Weidestreek West
190016	Wijk 16 Weidestreek Zuid
190017	Wijk 17 Makkum
190018	Wijk 18 Weidestreek Zuidwest
190019	Wijk 19 Boarnsterhim
190020	Wijk 20 Littenseradiel
190101	Wijk 01 Bodegraven Noord
190102	Wijk 02 Bodegraven Centrum
190103	Wijk 03 Bodegraven Zuid
190104	Wijk 04 Nieuwerbrug Noord
190105	Wijk 05 Nieuwerbrug Zuid
190106	Wijk 06 Reeuwijk Dorp
190107	Wijk 07 Reeuwijk Brug
190108	Wijk 08 Driebruggen
190109	Wijk 09 Waarder
190300	Wijk 00 Eijsden
190301	Wijk 01 Gronsveld
190302	Wijk 02 Margraten
190303	Wijk 03 Cadier en Keer
190304	Wijk 04 Sint Geertruid
190305	Wijk 05 Mheer - Noorbeek
190401	Wijk 01 Maarssen
190402	Wijk 02 Breukelen
190403	Wijk 03 Loenen aan de Vecht
190404	Wijk 04 Nieuwer Ter Aa
190405	Wijk 05 Kockengen
190406	Wijk 06 Vreeland
190407	Wijk 07 Tienhoven
190408	Wijk 08 Nigtevecht
190409	Wijk 09 Nieuwersluis
190410	Wijk 10 Loenersloot
190411	Wijk 11 Oud Zuilen
190412	Wijk 12 Maarssenbroek
191100	Wijk 00 Winkel
191101	Wijk 01 Nieuwe-Niedorp
191102	Wijk 02 Oude-Niedorp
191103	Wijk 03 Barsingerhorn en omgeving
191104	Wijk 04 Wieringen
191105	Wijk 05 Wieringermeer
191106	Wijk 06
191107	Wijk 07 Wieringerwaard en omgeving
191601	De Zijde en Duivenvoorde en Park Veursehout
191602	Prinsenhof
191603	t Lien en De Rietvink
191604	Stompwijk
191605	Leidschendam - Zuid en omgeving
191606	De Heuvel en Amstelwijk
191607	Damsigt en omgeving
191608	Essesteijn
191609	Voorburg Midden
191610	Bovenveen
191611	Voorburg Noord
191612	Voorburg West en Park Leeuwenbergh
191613	Voorburg Oud
192400	Goedereede
192401	Ouddorp
192402	Stellendam
192403	Middelharnis
192404	Ooltgensplaat
192405	Den Bommel
192406	Oude-Tonge
192407	Dirksland
192408	Melissant
192409	Herkingen
192410	Sommelsdijk
192411	Nieuwe-Tonge
192412	Stad aan t Haringvliet
192413	Achthuizen
192601	Pijnacker
192602	Nootdorp
192603	Delfgauw
193001	Centrum
193002	Schiekamp
193003	Hoogwerf
193004	Vierambachten
193005	De Hoek
193006	Gildenwijk
193007	Groenewoud
193008	Sterrenkwartier
193009	Schenkel
193010	De Elementen
193011	Vogelenzang
193012	De Akkers
193013	Vriesland
193014	Waterland
193015	Maaswijk
193016	Halfweg
193017	Buitengebied
193025	Heenvliet
193027	Geervliet
193029	Abbenbroek
193031	Zuidland
193033	Simonshaven
193050	Hekelingen
193100	Wijk 00 Lekkerkerk
193101	Wijk 01 Krimpen aan de Lek
193102	Wijk 02 Ouderkerk aan den IJssel
193103	Wijk 03 Gouderak
193104	Wijk 04 Bergambacht
193105	Wijk 05 Bergstoep
193106	Wijk 06 Ammerstol
193107	Wijk 07 Berkenwoude
193108	Wijk 08 Haastrecht
193110	Wijk 10 Stolwijk
193111	Wijk 11 Vlist
193112	Wijk 12 Schoonhoven
194001	Wijk 01 Akmarijp
194002	Wijk 02 Bakhuizen
194003	Wijk 03 Balk
194004	Wijk 04 Bantega
194005	Wijk 05 Boornzwaag
194006	Wijk 06 Broek
194007	Wijk 07 Delfstrahuizen
194008	Wijk 08 Dijken
194009	Wijk 09 Doniaga
194010	Wijk 10 Echten
194011	Wijk 11 Echtenerbrug
194012	Wijk 12 Eesterga
194013	Wijk 13 Elahuizen
194014	Wijk 14 Follega
194015	Wijk 15 Goingarijp
194016	Wijk 16 Harich
194017	Wijk 17 Haskerhorne
194018	Wijk 18 Idskenhuizen
194019	Wijk 19 Joure
194020	Wijk 20 Kolderwolde
194021	Wijk 21 Langweer
194022	Wijk 22 Legemeer
194023	Wijk 23 Lemmer
194024	Wijk 24 Mirns
194025	Wijk 25 Nijehaske
194026	Wijk 26 Nijemirdum
194027	Wijk 27 Oldeouwer
194028	Wijk 28 Oosterzee
194029	Wijk 29 Oudega
194030	Wijk 30 Oudehaske
194031	Wijk 31 Oudemirdum
194032	Wijk 32 Ouwsterhaule
194033	Wijk 33 Ouwster-Nijega
194034	Wijk 34 Rijs
194035	Wijk 35 Rohel
194036	Wijk 36 Rotstergaast
194037	Wijk 37 Rotsterhaule
194038	Wijk 38 Rottum
194039	Wijk 39 Ruigahuizen
194040	Wijk 40 Scharsterbrug
194041	Wijk 41 Sint Nicolaasga
194042	Wijk 42 Sinjohannesga
194043	Wijk 43 Sloten
194044	Wijk 44 Snikzwaag
194045	Wijk 45 Sondel
194046	Wijk 46 Terherne
194047	Wijk 47 Terkaple
194048	Wijk 48 Teroele
194049	Wijk 49 Tjerkgaast
194050	Wijk 50 Vegelinsoord
194051	Wijk 51 Wijckel
194200	Bussum Centrum
194201	Brediuskwartier
194202	Eng
194203	Spiegel
194204	Muiden
194205	Naarden
194500	Beek
194501	Berg en Dal
194502	Breedeweg
194503	De Horst
194504	Erlecom
194505	Groesbeek
194506	Heilig Landstichting
194507	Kekerdom
194508	Leuth
194509	Millingen aan de Rijn
194510	Ooij
194511	Persingen
194512	Ubbergen
194801	Erp
194802	Schijndel
194803	Sint-Oedenrode
194804	Veghel
194915	Achlum
194916	St-Annaparochie
194917	Baaium
194918	Berltsum
194919	Bitgum
194920	Bitgummole
194921	Blessum
194922	Boer
194923	Boksum
194924	Deinum
194925	Dongjum
194926	Dronryp
194927	Firdgum
194928	Franeker
194929	Herbaijum
194930	Hitzum
194931	Ingelum
194932	St-Jacobiparochie
194933	Klooster Lidlum
194934	Marsum
194935	Menaam
194936	Minnertsga
194937	Nij Altoenae
194938	Oosterbierum
194939	Oudebildtzijl
194940	Peins
194941	Pietersbierum
194942	Ried
194943	Schalsum
194944	Sexbierum
194945	Skingen
194946	Slappeterp
194947	Spannum
194948	Tzum
194949	Tzummarum
194950	Vrouwenparochie
194951	Westhoek
194952	Wier
194953	Winsum
194954	Wjelsryp
194955	Zweins
195000	Wijk 00 Bellingwolde
195001	Wijk 01 Oost
195002	Wijk 02 Blijham
195003	Wijk 03 Sellingen
195004	Wijk 04 Vlagtwedde
195005	Wijk 05 Bourtange
195006	Wijk 06 Sellingerbeetse
195007	Wijk 07 Ter Apel
195008	Wijk 08 Ter Wisch
195009	Wijk 09 de Maten
195201	Foxham en Hoogezand-Noord
195202	Hoogezand-Zuid
195203	Kalkwijk
195204	Sappemeer
195205	Kiel-Windeweer
195206	Kropswolde
195207	Foxhol
195208	Westerbroek en Waterhuizen
195209	Harkstede, Scharmer en Woudbloem
195210	Kolham
195211	Froombosch
195212	Slochteren
195213	Schildwolde
195214	Hellum
195215	Siddeburen
195216	Eemskanaal-Zuid
195217	Tjuchem en Steendam
195218	Muntendam
195219	Noordbroek
195220	Zuidbroek
195221	Meeden
195400	Wijk 00 Onderbanken
195401	Wijk 01 Nuth
195402	Wijk 02 Wijnandsrade
195403	Wijk 03 Hulsberg
195404	Wijk 04 Schimmert
195405	Wijk 05
195406	Wijk 06 Amstenrade - Oirsbeek
195500	Wijk 00 s-Heerenberg
195501	Wijk 01 Brakel
195502	Wijk 02 Didam
195901	Werkendam
195902	Sleeuwijk
195903	Nieuwendijk
195904	Hank
195905	Dussen
195906	Woudrichem
195907	Rijswijk NB
195908	Uitwijk
195909	Waardhuizen
195910	Giessen
195911	Andel
195912	Almkerk
195913	Veen
195914	Wijk en Aalburg
195915	Babyloniënbroek
195916	Meeuwen
195917	Eethen
195918	Drongelen
195919	Genderen
196000	Geldermalsen
196001	Deil
196002	Beesd
196003	Buurmalsen
196004	Meteren
196005	Haaften
196006	Waardenburg en Opijnen
196007	Varik en Ophemert
196008	Asperen
196009	Heukelum
196010	Vuren
196011	Herwijnen
196100	Wijk 00 Leerdam
196101	Wijk 01 Vianen
196102	Wijk 02 Hagestein
196103	Wijk 03 Everdingen
196104	Wijk 04 Lexmond
196105	Wijk 05 Ameide
196106	Wijk 06 Tienhoven
196107	Wijk 07 Meerkerk
196108	Wijk 08 Hei- en Boeicop
196109	Wijk 09 Leerbroek
196110	Wijk 10 Nieuwland
196300	Oud-Beijerland
196301	Heinenoord
196302	Mijnsheerenland
196303	Westmaas
196304	Puttershoek
196305	Maasdam
196306	s-Gravendeel
196307	Strijen
196308	Klaaswaal
196309	Numansdorp
196310	Zuid-Beijerland
196311	Goudswaard
196312	Piershil
196313	Nieuw-Beijerland
196600	Wijk 00
196601	Wijk 01
196602	Wijk 02
196603	Wijk 03
196604	Wijk 04
196605	Wijk 05
196606	Wijk 06
196607	Wijk 07
196608	Wijk 08
196609	Wijk 09
196610	Wijk 10
196611	Wijk 11
196612	Wijk 12
196900	Wijk 00 Grootegast
196901	Wijk 01 Lutjegast
196902	Wijk 02 Opende
196903	Wijk 03 Oldekerk
196904	Wijk 04 Leek
196905	Wijk 05 Zevenhuizen
196906	Wijk 06 Tolbert
196907	Wijk 07 Midwolde
196908	Wijk 08 Lettelbert
196909	Wijk 09 Oostwold
196910	Wijk 10 Enumatil
196911	Wijk 11 Marum
196912	Wijk 12 De Wilp
196913	Wijk 13
196914	Wijk 14
196915	Wijk 15
196916	Wijk 16
196917	Wijk 17
197000	Dokkum
197001	Metslawier
197002	Ee - Zuidoost
197003	Anjum - Noordoost
197004	Oosternijkerk - Noordwest
197005	Ternaard
197006	Holwerd
197007	Hantum
197008	Wijk 08 Bouwstreek
197009	Wijk 09 Zuidwest
197010	Wijk 10
197011	Wijk 11 Kollum
197012	Wijk 12 Oost
197013	Wijk 13 Noordwest
197014	Wijk 14 Zuidwest
197801	Wijk01-Arkel
197802	Wijk02-Bleskensgraaf ca
197803	Wijk03-Brandwijk
197804	Wijk04-Giessenburg
197805	Wijk05-Goudriaan
197806	Wijk06-Groot-Ammers
197807	Wijk07-Hoogblokland
197808	Wijk08-Hoornaar
197809	Wijk09-Kinderdijk
197810	Wijk10-Langerak
197811	Wijk11-Molenaarsgraaf
197812	Wijk12-Nieuw-Lekkerland
197813	Wijk13-Nieuwpoort
197814	Wijk14-Noordeloos
197815	Wijk15-Ottoland
197816	Wijk16-Oud-Alblas
197817	Wijk17-Schelluinen
197818	Wijk18-Streefkerk
197819	Wijk19-Waal
197820	Wijk20-Wijngaarden.
Execute.

Value labels Huishouden
1 Eenpersoonshuishouden
2 Paar zonder kinderen
3 Paar met kinderen
4 Eenoudergezin
5 Meerpersoonshuishoudens
7 Instellingen en tehuizen.
Execute.

VALUE LABELS Huishoudgrootte_cats
1 Een persoon
2 Twee personen
3 Drie tot vier personen
4 Vijf personen of meer. 
Execute. 

VALUE LABELS Woningbezit
1 Koopwoning
2 Huurwoning zonder toeslag
3. Huurwoning met toeslag
4. Instiutioneel huishouden.
Execute. 

* Encoding: UTF-8.

*ADD VALUE LABELS sbi

STRING  sbi20082digit (A2).
COMPUTE sbi20082digit=CHAR.SUBSTR(SBI2008VJJJJ, 1,2).
EXECUTE.	

ADD VALUE LABELS sbi2008_letter	
	"A"	"Landbouw, bosbouw en visserij"
	"B"	"Winning van delfstoffen "
	"C"	"Industrie"
	"D"	"Productie en distributie van en handel in elektriciteit, aardgas, stoom en gekoelde lucht "
	"E"	"Winning en distributie van water; afval- en afvalwaterbeheer en sanering "
	"F"	"Bouwnijverheid"
	"G"	"Groot- en detailhandel; reparatie van auto's "
	"H"	"Vervoer en opslag "
	"I "	"Logies-, maaltijd- en drankverstrekking "
	"J "	"Informatie en communicatie"
	"K"	"Financiële instellingen "
	"L"	"Verhuur van en handel in onroerend goed"
	"M "	"Advisering, onderzoek en overige specialistische zakelijke dienstverlening "
	"N"	"Verhuur van roerende goederen en overige zakelijke dienstverlening "
	"O"	" Openbaar bestuur, overheidsdiensten en verplichte sociale verzekeringen"
	"P"	"Onderwijs "
	"Q"	"Gezondheids- en welzijnszorg "
	"R"	"Cultuur, sport en recreatie"
	"S"	"Overige dienstverlening"
	"T"	"Huishoudens als werkgever; niet-gedifferentieerde productie van goederen en diensten door huishoudens voor eigen gebruik"
	"U"	"Extraterritoriale organisaties en lichamen".
Execute. 

VALUE LABELS sbi20082digit
	"01"	"Landbouw, jacht en dienstverlening voor de landbouw en jacht "
	"02"	"Bosbouw, exploitatie van bossen en dienstverlening voor de bosbouw"
	"03"	"Visserij en kweken van vis en schaaldieren "
	"06"	"Winning van aardolie en aardgas"
	"08"	"Winning van delfstoffen (geen olie en gas)"
                  "09"	"Dienstverlening voor de winning van delfstoffen"
                  "10"	"Vervaardiging van voedingsmiddelen"
	"11"	"Vervaardiging van dranken"
	"12"	"Vervaardiging van tabaksproducten"
	"13"	"Vervaardiging van textiel"
	"14"	"Vervaardiging van kleding"
	"15"	"Vervaardiging van leer, lederwaren en schoenen"
	"16"	"Primaire houtbewerking en vervaardiging van artikelen van hout, kurk, riet en vlechtwerk ( geen meubels)"
	"17"	"Vervaardiging van papier, karton en papier- en kartonwaren "
	"18"	"Drukkerijen, reproductie van opgenomen media"
	"19"	"Vervaardiging van cokesovenproducten en aardolieverwerking"
                  "20"	"Vervaardiging van chemische producten"
	"21"	"Vervaardiging van farmaceutische grondstoffen en producten"
	"22"	"Vervaardiging van producten van rubber en kunststof"
	"23"	"Vervaardiging van overige niet-metaalhoudende minerale producten"
	"24"	"Vervaardiging van metalen in primaire vorm"
	"25"	"Vervaardiging van producten van metaal (geen machines en apparaten)"
	"26"	"Vervaardiging van computers en van elektronische en optische apparatuur"
	"27"	"Vervaardiging van elektrische apparatuur"
	"28"	"Vervaardiging van overige machines en apparaten"
	"29"	"Vervaardiging van auto's, aanhangwagens en opleggers"
	"30"	"Vervaardiging van overige transportmiddelen"
	"31"	"Vervaardiging van meubels"
	"32"	"Vervaardiging van overige goederen"
	"33"	"Reparatie en installatie van machines en apparaten"
	"35"	"Productie en distributie van en handel in elektriciteit, aardgas, stoom en gekoelde lucht"
	"36"	"Winning en distributie van water"
	"37"	"Afvalwaterinzameling en -behandeling"
	"38"	"Afvalinzameling en -behandeling; voorbereiding tot recycling"
	"39"	"Sanering en overig afvalbeheer"
	"41"	"Algemene burgerlijke en utiliteitsbouw en projectontwikkeling"
	"42"	"Grond-, water- en wegenbouw (geen grondverzet) "
	"43"	"Gespecialiseerde werkzaamheden in de bouw"
	"45"	"Handel in en reparatie van auto's, motorfietsen en aanhangers"
	"46"	"Groothandel en handelsbemiddeling (niet in auto's en motorfietsen)"
	"47"	"Detailhandel (niet in auto's)"
                  "49"	"Vervoer over land"
	"50"	"Vervoer over water"
	"51"	"Luchtvaart"
	"52"	"Opslag en dienstverlening voor vervoer"
	"53"	"Post en koeriers"
	"55"	"Logiesverstrekking"
	"56"	"Eet- en drinkgelegenheden"
	"58"	"Uitgeverijen"
	"59"	"Productie en distributie van films en televisieprogramma´s; maken en uitgeven van geluidsopnamen"
	"60"	"Verzorgen en uitzenden van radio- en televisieprogramma's"
	"61"	"Telecommunicatie"
	"62"	"Dienstverlenende activiteiten op het gebied van informatietechnologie"
	"63"	"Dienstverlenende activiteiten op het gebied van informatie"
	"64"	"Financiële instellingen (geen verzekeringen en pensioenfondsen)"
                  "65"	"Verzekeringen en pensioenfondsen (geen verplichte sociale verzekeringen)"
	"66"	"Overige financiële dienstverlening"
	"68"	"Verhuur van en handel in onroerend goed"
	"69"	"Rechtskundige dienstverlening, accountancy, belastingadvisering en administratie "
	"70"	"Holdings (geen financiële), concerndiensten binnen eigen concern en managementadvisering"
	"71"	"Architecten, ingenieurs en technisch ontwerp en advies; keuring en controle"
	"72"	"Speur- en ontwikkelingswerk "
	"73"	"Reclame en marktonderzoek"
	"74"	"Industrieel ontwerp en vormgeving, fotografie, vertaling en overige consultancy"
	"75"	"Veterinaire dienstverlening"
	"77"	"Verhuur en lease van auto's, consumentenartikelen, machines en overige roerende goederen"
	"78"	"Arbeidsbemiddeling, uitzendbureaus en personeelsbeheer"
	"79"	"Reisbemiddeling, reisorganisatie, toeristische informatie en reserveringsbureaus"
	"80"	"Beveiliging en opsporing"
	"81"	"Facility management, reiniging en landschapsverzorging"
	"82"	"Overige zakelijke dienstverlening"
	"84"	"Openbaar bestuur, overheidsdiensten en verplichte sociale verzekeringen"
	"85"	"Onderwijs"
	"86"	" Gezondheidszorg"
	"87"	"Verpleging, verzorging en begeleiding met overnachting"
	"88"	"Maatschappelijke dienstverlening zonder overnachting"
	"90"	"Kunst"
	"91"	"Culturele uitleencentra, openbare archieven, musea, dieren- en plantentuinen, natuurbehoud"
	"92"	"Loterijen en kansspelen"
	"93"	"Sport en recreatie"
	"94"	"Levensbeschouwelijke en politieke organisaties, belangen- en ideële organisaties, hobbyclubs "
	"95"	"Reparatie van computers en consumentenartikelen"
	"96"	"Wellness en overige dienstverlening; uitvaartbranche"
	"97"	"Huishoudens als werkgever van huishoudelijk personeel"
	"98"	"Niet-gespecificeerde productie van goederen en diensten door particuliere huishoudens voor eigen gebruik"
	"99"	"Extraterritoriale organisaties en lichamen".
Execute. 

CROSSTABS sbi20082digit BY sbi2008_letter.
