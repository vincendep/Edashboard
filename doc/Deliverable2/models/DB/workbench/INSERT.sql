use edashboard ;



INSERT INTO distretto (nome)
		values ('Coppito'),
				('Roio'),
                ('Fontana Luminosa');
                
                
insert into edificio(nome,IDdistretto)
		values ('C1','1'),
				('C1','1'),
                ('C1','1'),
                ('C1','1'),
                ('C1','1'),
                ('C2','1'),
				('C2','1'),
                ('C2','1'),
                ('C2','1'),
                ('C0','1'),
                ('C0','1'),
				('C0','1'),
                ('C0','1'),
                ('R1','2'),
                ('R1','2'),
                ('R1','2'),
				('R1','2'),
                ('R2','2'),
                ('R2','2'),
                ('R2','2'),
                ('FL','3'),
				('FL','3'),
                ('FL','3'),
                ('FL','3'),
                ('FL','3');
   
insert into area (tipo,IDedificio)
		values ('stanza','1'),
			   ('corriDoio','1'),
               ('zona all\' aperto','1'),
               ('stanza','1'),
			   ('corriDoio','2'),
               ('zona all\' aperto','2'),
               ('stanza','3'),
			   ('corrisoio','3'),
               ('zona all\' aperto','3'),
               ('stanza','3'),
			   ('corridoio','3'),
               ('zona all\' aperto','3'),
               ('stanza','4'),
			   ('corridoio','4'),
               ('zona all\' aperto','2'),
               ('stanza','2'),
			   ('stanza','3'),
               ('corridoio','3'),
               ('stanza','2'),
			   ('stanza','1'),
               ('stanza','2'),
			   ('zona all\' aperto','3'),
               ('stanza','2'),
			   ('corridoio','2'),
               ('zona all\' aperto','3'),
               ('stanza','2'),
			   ('stanza','3'),
               ('corridoio','2'),
               ('stanza','3'),
			   ('stanza','2'),
               ('stanza','2'),
               ('stanza','3'),
			   ('corriDoio','3'),
               ('zona all\' aperto','1'),
               ('stanza','1'),
			   ('corriDoio','1'),
               ('zona all\' aperto','3'),
               ('stanza','2'),
			   ('corrisoio','2'),
               ('zona all\' aperto','3'),
               ('stanza','3'),
			   ('corridoio','3'),
               ('zona all\' aperto','3'),
               ('stanza','2'),
			   ('corridoio','3'),
               ('zona all\' aperto','3'),
               ('stanza','1'),
			   ('stanza','1'),
               ('corridoio','2'),
               ('stanza','2'),
			   ('stanza','1'),
               ('stanza','2');
               

insert into amministratore(nome,cognome,email,pw)
		values ('Fabio','Gentile','fabiucciogentilino@gmail.com','F4biucci0000');
        
      
      
insert into gestore (nome,cognome,email,pw,tipo,IDedificio,IDdistretto)
		values	('Mario','Rossi','mariorossi@gmail.com','Mariewon3','GE','1',null),
				('Patrizia','Verdi','patriziaverdi@gmail.com','Patrizfddi4','GE','2',null),
				('Domenico','Neri','domeniconeri@gmail.com','Domendsic0','GE','2',null),
				('Paola','Viola','paolaviola@gmail.com','Paoleedstt4','GE','2',null),
				('Ilaria','Chiodo','IlariaChio@gmail.com','442fdfds','GE','3',null),
                ('Mario','Rossi','mariosi@gmail.com','Maricson3','GE','1',null),
				('Patrizia','Verdi','patriziavi@gmail.com','Patrizi4','GE','1',null),
				('Domenico','Neri','domenneri@gmail.com','Domevdsnic0','GE','1',null),
				('Paola','Viola','paola@gmail.com','Paolecsdd3tt4','GE','1',null),
				('Ilaria','Chiodo','Ilariio@gmail.com','Ilarics44','GE','1',null),
                
                ('Mario','Rossi','marrossi@gmail.com','Mariwewqon3','GD',null,'2'),
				('Patrizia','Verdi','ptriziaverdi@gmail.com','Patrifdszi4','GD',null,'2'),
				('Domenico','Neri','deniconeri@gmail.com','Domdsaenic0','GD',null,'2'),
				('Paola','Viola','plaviola@gmail.com','Paolettds4','GD',null,'2'),
				('Ilaria','Chiodo','ariaChio@gmail.com','Ilariasd44','GD',null,'2'),
                ('Mario','Rossi','maiosi@gmail.com','Marsdion3','GD',null,'3'),
				('Patrizia','Verdi','pariziavi@gmail.com','Patrisdzi4','GD',null,'3'),
				('Domenico','Neri','doenneri@gmail.com','Domenic0','GD',null,'3'),
				('Paola','Viola','pola@gmail.com','Paolett4','GD',null,'3'),
				('Ilaria','Chiodo','Ilari@gmail.com','Ilari44','GD',null,'3'),
                
				('Mario','Rossi','marrvdsvsossi@gmail.com','Marion3','GE','1',null),
				('Patrizia','Verdi','ptrdsaiziaverdi@gmail.com','Patrsaizi4','GE','3',null),
				('Domenico','Neri','dendsaaiconeri@gmail.com','Ddsaomenic0','GE','2',null),
				('Paola','Viola','plajdjviola@gmail.com','Paolettdas4','GE','3',null),
				('Ilaria','Chiodo','adjsajriaChio@gmail.com','Ilaridas44','GE','1',null),
                ('Mario','Rossi','maosdaoiosi@gmail.com','Marion23','GD',null,'1'),
				('Patrizia','Verdi','parizncklaiavi@gmail.com','Patwqrdsizi4','GD',null,'2'),
				('Domenico','Neri','doencoanneri@gmail.com','Domedfsnic0','GD',null,'2'),
				('Paola','Viola','posjiaola@gmail.com','Paolettger4','GD',null,'2'),
				('Ilaria','Chiodo','Ilaaaari@gmail.com','Ilarrgei44','GD',null,'3'),
                
				('Fabrizio','Vitalizio','FabVital@gmail.com','332edfew','GC',null,null),
				('Cristina','Bacchiello','CriBacchi1@gmail.com','CriBagcchi11','GC',null,null),
				('Chiara','Zucca','Chiaraaa2@gmail.com','Chiarrew4','GC',null,null),
                ('Mario','Rossi','mariorosi@gmail.com','Marioewrn3','GC',null,null),
				('Patrizia','Verdi','patriziavdi@gmail.com','Patrewrdsaizi4','GC',null,null),
				('Domenico','Neri','domeniconei@gmail.com','Domenrwfeic0','GC',null,null),
				('Paola','Viola','paolfdsfiola@gmail.com','Paolett344','GC',null,null),
				('Fabrizio','Vitalizio','FabVfssfital@gmail.com','Fabr43iVit4','GC',null,null),
				('Cristina','Bacchiello','CriBasdsfcchi1@gmail.com','CriBac43chi11','GC',null,null),
				('Chiara','Zucca','Chiaraaafd2@gmail.com','Chiarhr4','GC',null,null),
                ('Mario','Rossi','mariorosgdsi@gmail.com','Marionhrt3','GC',null,null),
				('Patrizia','Verdi','patrizigdsavdi@gmail.com','Patrhtrisazi4','GC',null,null),
				('Domenico','Neri','domenidsconei@gmail.com','Domenic0htr','GC',null,null),
				('Paola','Viola','paolCKSCiola@gmail.com','Paolett4wea','GC',null,null),

				('Fabrizio','Vitalizio','FabVitADSADal@gmail.com','FabriVcsait4','GD',null,'2'),
				('Cristina','Bacchiello','CrFDSiBacchi1@gmail.com','CriBacchdsai11','GD',null,'3'),
				('Chiara','Zucca','ChiaraaaDSA2@gmail.com','Chia23r4','GE','2',null),
                ('Mario','Rossi','mariorosiWQ@gmail.com','Mariovbjn3','GE','2',null),
				('Patrizia','Verdi','patrizi2132avdi@gmail.com','rfds32','GE','2',null),
				('Domenico','Neri','domenicone432i@gmail.com','Domendfic0','GC',null,null),
				('Paola','Viola','paolfdsfio123la@gmail.com','Paogerlett4','GC',null,null),
				('Fabrizio','Vitalizio','FabVfsDSAFDsfital@gmail.com','FabriVit4','GC',null,null);


		
INSERT INTO sensore(frequenza,tipo,lower_bound,upper_bound,IDarea)
		values ('60','umidita','20','60','4'),
			   ('30','umidita','20','60','8'),
			   ('26','umidita','20','60','11'),
				('12','temperatura','15','20.4','13'), 
				('18','temperatura','15','22.4','9'), 
                ('10','temperatura','20','60','8'),
			   ('60','pressione','1000','1500','5'),
			   ('60','pressione','800','1000','3'),
			   ('60','pressione','800','1200','10'),
			   ('12','luminosità','30','80','5'), 
			   ('60','luminosità','20','60','2'),
				('44','luminosità','50','60','3');

insert into segnale(valore,data_s,IDsensore)
		values ('20','2018-10-22','12'), 
				('1222','2018-10-25','7'), 
                ('1100','2018-10-29','8'), 
                ('20','2018-10-31','10'), 
                ('18','2018-11-22','3'), 
                ('1500','2018-11-22','9'), 
                ('60','2018-11-22','4'), 
                ('55','2018-11-22','5'),
                ('50','2018-12-22','5'), 
                ('18','2018-12-22','6'), 
                ('43','2018-12-22','4'), 
                ('55','2018-12-22','2');
/*
insert into modifica_soglia(data_m,IDgestore,IDsensore)
		values  ('2018-11-22','5','3'),
                ('2018-12-22','5','10'), 
                ('2018-12-22','6','4'), 
                ('2018-12-22','4','2'), 
                ('2018-12-22','2','10'),
                ('2018-10-25','7','9'), 
                ('2018-10-29','8','8'), 
                ('2018-10-31','10','6'), 
                ('2018-11-22','3','3'); */