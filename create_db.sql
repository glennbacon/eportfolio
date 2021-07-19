-- First login to MySQL database with admin permission before executing this script
-- This script will create a database named animal_shelter, table, and insert values
CREATE DATABASE animal_shelter;
USE animal_shelter;

CREATE TABLE animals ( id INT(8) UNSIGNED NOT NULL auto_increment, 
age_upon_outcome VARCHAR(255) default NULL,
animal_id VARCHAR(255) default NULL,
animal_type VARCHAR(255) default NULL,
breed VARCHAR(255) default NULL,
color VARCHAR(255) default NULL,
date_of_birth DATE default NULL,
datetime DATETIME default NULL,
monthyear VARCHAR(255) default NULL,
name VARCHAR(255) default NULL,
outcome_type VARCHAR(255) default NULL,
outcome_subtype VARCHAR(255) default NULL,
sex_upon_outcome VARCHAR(255) default NULL,
location_lat float(17,13) NOT NULL DEFAULT 000.00,
location_long float(17,13) NOT NULL DEFAULT 000.00,
age_upon_outcome_in_weeks float(17,13) NOT NULL DEFAULT 000.00,
PRIMARY KEY (id) 
) AUTO_INCREMENT=1;

-- Populate database with values
-- If you do not want this data please comment out or delete the following lines
INSERT INTO animals (age_upon_outcome, animal_id, animal_type, breed, color, date_of_birth, datetime, monthyear, name, outcome_subtype, outcome_type, sex_upon_outcome, location_lat, location_long, age_upon_outcome_in_weeks)
VALUES 
("1 year", "A725717", "Cat", "Domestic Shorthair Mix", "Silver Tabby", "2015-05-02", "2016-05-06 10:49:00", "2016-05-06T10:49:00", "", "SCRP", "Transfer", "Spayed Female", 30.6525984560228, -97.7419963476444, 52.9215277777778),
("3 years", "A720214", "Dog", "Labrador Retriever Mix", "Red/White", "2013-02-04", "2016-02-11 12:41:00", "2016-02-11T12:41:00", "Blessing", "", "Adoption", "Spayed Female", 30.3870648199411, -97.3684339731375, 157.504067460317),
("3 months", "A664290", "Cat", "Domestic Shorthair Mix", "Tortie", "2013-09-01", "2013-12-08 14:58:00", "2013-12-08T14:58:00", "*Taylor", "", "Adoption", "Spayed Female", 30.7583105481048, -97.618292198845, 14.0890873015873),
("1 year", "A721199", "Dog", "Dachshund Wirehair Mix", "Tan/White", "2015-02-23", "2016-02-27 17:49:00", "2016-02-27T17:49:00", "Belle", "", "Adoption", "Spayed Female", 30.7290272761146, -97.3753328216134, 52.8203373015873),
("1 year", "A664843", "Dog", "Pit Bull Mix", "Brown/White", "2013-06-09", "2014-08-18 17:24:00", "2014-08-18T17:24:00", "Sherlock", "Partner", "Transfer", "Neutered Male", 30.4515549397366, -97.474104510925, 62.2464285714286),
("1 year", "A700408", "Cat", "Domestic Shorthair Mix", "Brown Tabby/White", "2014-04-13", "2015-04-15 13:34:00", "2015-04-15T13:34:00", "Nyla", "", "Return to Owner", "Spayed Female", 30.4101154527976, -97.562415670838, 52.5093253968254),
("2 years", "A742287", "Dog", "Boxer/Bullmastiff", "Brown Brindle/White", "2015-01-18", "2017-02-11 12:30:00", "2017-02-11T12:30:00", "*Kawhi", "", "Adoption", "Neutered Male", 30.4551148649096, -97.3087780473978, 107.931547619048),
("3 years", "A712638", "Dog", "Pit Bull Mix", "Red/White", "2012-09-26", "2016-07-18 17:52:00", "2016-07-18T17:52:00", "Marcus", "Partner", "Transfer", "Neutered Male", 30.5798299207017, -97.5588487936533, 198.820634920635),
("5 years", "A723742", "Dog", "Miniature Schnauzer Mix", "Black/White", "2011-04-05", "2016-04-10 17:27:00", "2016-04-10T17:27:00", "Gretchen", "", "Adoption", "Spayed Female", 30.4792884863566, -97.4088531587999, 261.818154761905),
("6 months", "A668960", "Dog", "Pit Bull Mix", "Blue/White", "2013-06-12", "2013-12-27 16:56:00", "2013-12-27T16:56:00", "*Gigi", "", "Adoption", "Spayed Female", 30.5943410758588, -97.2489933569515, 28.3865079365079),
("2 months", "A693288", "Cat", "Domestic Shorthair Mix", "Brown Tabby/White", "2014-09-28", "2014-12-09 18:36:00", "2014-12-09T18:36:00", "", "", "Adoption", "Spayed Female", 30.4527678292931, -97.4620507167676, 10.3964285714286),
("3 years", "A746874", "Cat", "Domestic Shorthair Mix", "Black/White", "2014-04-10", "2017-04-11 09:00:00", "2017-04-11T09:00:00", "", "SCRP", "Transfer", "Neutered Male", 30.5066578739455, -97.3408780722188, 156.767857142857),
("1 year", "A693126", "Dog", "American Bulldog Mix", "White/Brown", "2013-12-02", "2015-02-28 17:42:00", "2015-02-28T17:42:00", "George", "", "Adoption", "Neutered Male", 30.577712300078, -97.6438826598467, 64.8196428571429),
("2 years", "A730354", "Dog", "Pit Bull Mix", "Blue/White", "2015-07-02", "2017-07-01 18:11:00", "2017-07-01T18:11:00", "Mia", "", "Adoption", "Spayed Female", 30.4815689674138, -97.3694960927915, 104.393948412698),
("5 years", "A615748", "Dog", "Labrador Retriever Mix", "Black", "2009-12-11", "2015-10-26 18:13:00", "2015-10-26T18:13:00", "Blackie", "Suffering", "Euthanasia", "Neutered Male", 30.7172069757685, -97.2952833147647, 306.537003968254),
("2 years", "A692137", "Dog", "Pit Bull Mix", "Blue/White", "2013-05-15", "2016-03-01 15:26:00", "2016-03-01T15:26:00", "Shadow", "Partner", "Transfer", "Intact Male", 30.3691596527395, -97.3810871961031, 145.949007936508),
("3 weeks", "A704707", "Cat", "Siamese Mix", "Seal Point", "2015-05-17", "2015-06-08 16:25:00", "2015-06-08T16:25:00", "", "Partner", "Transfer", "Unknown", 30.7099356408815, -97.6968533378074, 3.2405753968254),
("2 months", "A725966", "Cat", "Domestic Shorthair Mix", "Tortie", "2016-03-20", "2016-05-24 11:01:00", "2016-05-24T11:01:00", "*Star", "", "Adoption", "Spayed Female", 30.5201707620679, -97.5317824337026, 9.35128968253968),
("1 year", "A743231", "Cat", "Domestic Shorthair Mix", "Black", "2016-02-06", "2017-02-07 09:00:00", "2017-02-07T09:00:00", "", "SCRP", "Transfer", "Intact Female", 30.2920163966506, -97.4266291874198, 52.4821428571429),
("2 years", "A764418", "Dog", "Chihuahua Shorthair Mix", "Tan/White", "2015-12-29", "2017-12-30 11:58:00", "2017-12-30T11:58:00", "Burro", "", "Return to Owner", "Neutered Male", 30.277168944418, -97.7122755507492, 104.642658730159),
("1 year", "A743879", "Dog", "Pit Bull Mix", "Black/White", "2016-02-18", "2017-06-16 14:58:00", "2017-06-16T14:58:00", "*Tallulah", "Partner", "Transfer", "Spayed Female", 30.757367526077, -97.4667421648321, 69.2319444444445),
("2 months", "A756064", "Cat", "Domestic Shorthair Mix", "Blue", "2017-06-13", "2017-08-16 00:00:00", "2017-08-16T00:00:00", "", "Partner", "Transfer", "Intact Male", 30.2934116611166, -97.2901948420822, 9.14285714285714),
("3 years", "A648094", "Dog", "Dachshund/Chihuahua Shorthair", "Red", "2012-11-21", "2016-07-21 18:58:00", "2016-07-21T18:58:00", "Brawndo", "", "Adoption", "Neutered Male", 30.7173271019582, -97.4883408278017, 191.255753968254),
("5 years", "A651202", "Dog", "Maltese Mix", "White", "2009-04-07", "2014-09-06 17:11:00", "2014-09-06T17:11:00", "Daisy", "", "Return to Owner", "Spayed Female", 30.4874006446211, -97.7300741137765, 282.67371031746),
("2 years", "A673830", "Dog", "Pit Bull Mix", "Black/White", "2012-03-03", "2014-03-19 15:15:00", "2014-03-19T15:15:00", "*Seth", "Aggressive", "Euthanasia", "Neutered Male", 30.2954256583441, -97.3136642110436, 106.662202380952),
("5 years", "A696004", "Dog", "Cardigan Welsh Corgi Mix", "Sable/White", "2010-01-27", "2015-01-28 10:39:00", "2015-01-28T10:39:00", "Lucy", "Rabies Risk", "Euthanasia", "Spayed Female", 30.6737365854231, -97.707971529467, 261.063392857143),
("2 years", "A716330", "Dog", "Chihuahua Shorthair Mix", "Brown/White", "2013-11-18", "2015-12-28 18:43:00", "2015-12-28T18:43:00", "Frank", "", "Adoption", "Neutered Male", 30.7595748121648, -97.5523753807133, 110.111408730159),
("2 years", "A691584", "Dog", "Labrador Retriever Mix", "Tan/White", "2012-11-06", "2015-05-30 13:48:00", "2015-05-30T13:48:00", "Luke", "", "Return to Owner", "Neutered Male", 30.7104815618433, -97.562297435286, 133.653571428571),
("7 months", "A733653", "Cat", "Siamese Mix", "Seal Point", "2016-01-25", "2016-08-27 18:11:00", "2016-08-27T18:11:00", "Kitty", "", "Adoption", "Intact Female", 30.3188063374257, -97.7240376703891, 30.8225198412698),
("2 years", "A709958", "Dog", "Australian Cattle Dog Mix", "Brown Brindle/White", "2013-08-15", "2015-08-23 19:23:00", "2015-08-23T19:23:00", "Jack", "", "Adoption", "Intact Female", 30.6937385067567, -97.5766003196181, 105.543948412698),
("1 year", "A736551", "Dog", "Labrador Retriever/Australian Cattle Dog", "Black", "2015-10-12", "2016-11-27 18:00:00", "2016-11-27T18:00:00", "*Mia", "", "Adoption", "Spayed Female", 30.4443212820182, -97.7326980338793, 58.9642857142857),
("3 months", "A687515", "Cat", "Domestic Shorthair Mix", "Orange Tabby", "2014-05-29", "2014-09-07 18:30:00", "2014-09-07T18:30:00", "Dinah", "", "Adoption", "Spayed Female", 30.5370536731062, -97.5684815578894, 14.5386904761905),
("7 years", "A712377", "Cat", "Domestic Shorthair Mix", "Brown Tabby/White", "2008-09-22", "2015-09-23 09:00:00", "2015-09-23T09:00:00", "", "SCRP", "Transfer", "Neutered Male", 30.5914919451752, -97.6417061435299, 365.339285714286),
("6 months", "A706953", "Dog", "Labrador Retriever Mix", "Yellow", "2014-12-06", "2015-07-06 11:33:00", "2015-07-06T11:33:00", "", "Medical", "Euthanasia", "Intact Female", 30.5480802368633, -97.2969969058957, 30.3544642857143),
("3 months", "A739519", "Cat", "Domestic Shorthair Mix", "Brown Tabby", "2016-11-06", "2017-02-11 18:46:00", "2017-02-11T18:46:00", "Mojito", "", "Adoption", "Spayed Female", 30.6831812834341, -97.2458191635746, 13.9688492063492),
("3 months", "A753983", "Cat", "Domestic Shorthair Mix", "Orange Tabby", "2017-04-13", "2017-07-16 19:19:00", "2017-07-16T19:19:00", "", "Snr", "Transfer", "Unknown", 30.4301887696662, -97.5837553641966, 13.5435515873016),
("1 year", "A707145", "Dog", "Dachshund Mix", "Brown/White", "2014-07-08", "2015-07-10 14:01:00", "2015-07-10T14:01:00", "Puppy", "Partner", "Transfer", "Intact Female", 30.3262557645033, -97.5826548089348, 52.512003968254),
("2 months", "A760125", "Cat", "Domestic Shorthair Mix", "White/Black", "2017-07-29", "2017-10-17 00:00:00", "2017-10-17T00:00:00", "", "Partner", "Transfer", "Neutered Male", 30.5414256979756, -97.4633994244696, 11.4285714285714),
("2 months", "A710726", "Cat", "Domestic Shorthair Mix", "Torbie", "2015-08-04", "2015-10-24 18:17:00", "2015-10-24T18:17:00", "*Zara", "", "Adoption", "Spayed Female", 30.3850058790273, -97.5209209803692, 11.6802579365079),
("4 months", "A709511", "Cat", "Domestic Medium Hair Mix", "White/Black", "2015-07-10", "2015-11-13 14:00:00", "2015-11-13T14:00:00", "*Toad", "Foster", "Adoption", "Neutered Male", 30.5202877527245, -97.6574204375118, 18.0833333333333),
("2 years", "A697233", "Dog", "Pit Bull Mix", "Tan/White", "2013-02-20", "2015-04-05 14:10:00", "2015-04-05T14:10:00", "*Tolliver", "Partner", "Transfer", "Neutered Male", 30.3091899182072, -97.407391329783, 110.655753968254),
("6 years", "A674774", "Dog", "German Shepherd/Labrador Retriever", "Brown/Black", "2008-03-18", "2014-03-19 17:06:00", "2014-03-19T17:06:00", "Brownie", "", "Return to Owner", "Neutered Male", 30.6586627849508, -97.5814399775041, 313.244642857143),
("8 years", "A724746", "Cat", "Domestic Shorthair Mix", "Orange Tabby", "2008-04-21", "2016-04-22 14:25:00", "2016-04-22T14:25:00", "", "Partner", "Transfer", "Intact Male", 30.3734825413611, -97.4876534656943, 417.657242063492),
("2 years", "A699587", "Dog", "Miniature Poodle Mix", "White", "2013-03-30", "2015-04-03 17:26:00", "2015-04-03T17:26:00", "Paisley", "", "Adoption", "Spayed Female", 30.28807307007, -97.7083036718567, 104.960912698413),
("1 month", "A683445", "Cat", "Domestic Shorthair Mix", "Orange Tabby/White", "2014-06-03", "2014-07-17 07:55:00", "2014-07-17T07:55:00", "*Blynn", "In Kennel", "Died", "Intact Male", 30.4948425592226, -97.4588853059737, 6.3328373015873),
("3 years", "A672401", "Dog", "Siberian Husky Mix", "Red/White", "2011-02-09", "2014-02-09 18:36:00", "2014-02-09T18:36:00", "Ziegen", "", "Return to Owner", "Neutered Male", 30.5731136081642, -97.43700344702, 156.682142857143),
("1 year", "A691043", "Dog", "Pug/Chihuahua Shorthair", "Tan/Black", "2013-07-29", "2014-11-02 12:50:00", "2014-11-02T12:50:00", "Thor", "Partner", "Transfer", "Intact Male", 30.6024909051342, -97.5565461484622, 65.9335317460317),
("1 year", "A689217", "Dog", "Australian Cattle Dog/Beagle", "White/Red", "2013-09-30", "2014-10-11 19:10:00", "2014-10-11T19:10:00", "Hot Dog", "", "Adoption", "Spayed Female", 30.370784054406, -97.377875081342, 53.828373015873),
("8 years", "A742234", "Dog", "Yorkshire Terrier Mix", "Brown/Black", "2009-01-18", "2017-01-28 11:17:00", "2017-01-28T11:17:00", "Coco", "", "Return to Owner", "Neutered Male", 30.3571792790617, -97.5467092518215, 418.924305555556),
("2 years", "A721406", "Dog", "Labrador Retriever Mix", "Cream/White", "2014-02-26", "2016-05-04 00:00:00", "2016-05-04T00:00:00", "Lanie", "", "Adoption", "Spayed Female", 30.4095171307439, -97.4146768727431, 114),
("1 weeks", "A723050", "Cat", "Domestic Shorthair Mix", "Brown Tabby", "2016-03-12", "2016-03-25 18:49:00", "2016-03-25T18:49:00", "", "Partner", "Transfer", "Intact Male", 30.3557252644792, -97.5743300659894, 1.96914682539683),
("4 weeks", "A752695", "Cat", "Domestic Shorthair Mix", "Brown Tabby/White", "2017-05-26", "2017-06-27 15:07:00", "2017-06-27T15:07:00", "", "Partner", "Transfer", "Intact Male", 30.3465931591785, -97.3104071716501, 4.66140873015873),
("2 years", "A680890", "Dog", "Miniature Poodle", "White", "2012-06-09", "2014-06-09 18:21:00", "2014-06-09T18:21:00", "", "Suffering", "Euthanasia", "Intact Female", 30.3319903337122, -97.556817439575, 104.39494047619),
("1 year", "A715512", "Cat", "Domestic Shorthair Mix", "Orange Tabby", "2014-11-05", "2016-01-04 00:00:00", "2016-01-04T00:00:00", "*Lola", "Partner", "Transfer", "Spayed Female", 30.560261054965, -97.298122147497, 60.7142857142857),
("6 years", "A699222", "Dog", "Beagle Mix", "Tricolor", "2009-06-14", "2015-06-19 18:43:00", "2015-06-19T18:43:00", "Scruffy", "Partner", "Transfer", "Neutered Male", 30.7539956876934, -97.6406095439333, 313.825694444444),
("1 month", "A728660", "Cat", "Domestic Shorthair Mix", "Brown Tabby", "2016-05-05", "2016-06-30 13:25:00", "2016-06-30T13:25:00", "Misty", "", "Adoption", "Intact Female", 30.3384118987052, -97.5099376814615, 8.07986111111111),
("7 years", "A754845", "Dog", "Chow Chow Mix", "Tan", "2010-08-12", "2017-08-17 16:03:00", "2017-08-17T16:03:00", "Coco", "", "Rto-Adopt", "Spayed Female", 30.5499038787221, -97.7055343025446, 366.095535714286),
("1 year", "A730275", "Dog", "Chinese Sharpei Mix", "Brown", "2015-07-01", "2016-07-09 17:53:00", "2016-07-09T17:53:00", "Chai", "", "Adoption", "Spayed Female", 30.5813151102997, -97.6206629031585, 53.5350198412698),
("4 years", "A689501", "Dog", "Chinese Crested Mix", "Black/White", "2010-10-04", "2014-10-09 17:20:00", "2014-10-09T17:20:00", "*Ping", "", "Adoption", "Neutered Male", 30.6794669197802, -97.5734023310214, 209.531746031746),
("1 year", "A669824", "Dog", "Labrador Retriever Mix", "Black", "2013-07-27", "2014-11-15 15:19:00", "2014-11-15T15:19:00", "Jackson", "Partner", "Transfer", "Neutered Male", 30.6194338512674, -97.6579352219145, 68.0911706349206),
("1 year", "A751029", "Dog", "Staffordshire Mix", "Blue/White", "2016-06-03", "2017-06-09 18:23:00", "2017-06-09T18:23:00", "", "", "Adoption", "Spayed Female", 30.3196475861473, -97.5725082134572, 53.1094246031746),
("2 months", "A716822", "Dog", "Dachshund Mix", "Red/White", "2015-09-18", "2015-11-30 16:53:00", "2015-11-30T16:53:00", "*Sally", "", "Adoption", "Spayed Female", 30.5205750485563, -97.2918628227555, 10.5290674603175),
("2 years", "A728144", "Dog", "Border Collie/Queensland Heeler", "Black/White", "2014-05-31", "2016-06-05 15:43:00", "2016-06-05T15:43:00", "Lilly", "", "Adoption", "Spayed Female", 30.2947528985168, -97.4279427946485, 105.236408730159),
("1 year", "A708999", "Dog", "Australian Cattle Dog Mix", "Brown Brindle/White", "2014-11-03", "2015-12-15 11:00:00", "2015-12-15T11:00:00", "*Daisy", "Foster", "Adoption", "Spayed Female", 30.4703459246575, -97.6851640454193, 58.2083333333333),
("6 months", "A713150", "Cat", "Domestic Medium Hair Mix", "Blue/White", "2015-04-03", "2015-10-04 09:00:00", "2015-10-04T09:00:00", "", "SCRP", "Transfer", "Unknown", 30.6490056542256, -97.3006432681698, 26.3392857142857),
("12 years", "A745946", "Dog", "Chihuahua Shorthair", "White/Tan", "2005-03-29", "2017-08-07 12:47:00", "2017-08-07T12:47:00", "*Toodles", "Foster", "Adoption", "Neutered Male", 30.7003350911457, -97.5727489821515, 644.933234126984),
("10 years", "A671822", "Dog", "German Shepherd Mix", "Black/Tan", "2006-01-31", "2016-10-11 10:03:00", "2016-10-11T10:03:00", "*Milo", "Foster", "Adoption", "Neutered Male", 30.7118766251975, -97.2999365773623, 558.059821428571),
("4 years", "A752436", "Dog", "Yorkshire Terrier Mix", "Tricolor", "2013-06-22", "2017-06-23 16:48:00", "2017-06-23T16:48:00", "Rylie", "", "Return to Owner", "Neutered Male", 30.5804324963125, -97.5404082136154, 208.957142857143),
("3 months", "A683276", "Other", "Raccoon Mix", "Black/Gray", "2014-04-08", "2014-07-09 08:52:00", "2014-07-09T08:52:00", "", "Rabies Risk", "Euthanasia", "Unknown", 30.5106746135701, -97.2826788031676, 13.1956349206349),
("2 years", "A762414", "Other", "Raccoon", "Gray/Black", "2015-11-20", "2017-11-21 08:20:00", "2017-11-21T08:20:00", "", "Suffering", "Euthanasia", "Unknown", 30.3718926151062, -97.4774272170111, 104.621031746032),
("3 years", "A725549", "Cat", "Domestic Shorthair Mix", "Brown Tabby/White", "2013-04-30", "2016-06-12 18:13:00", "2016-06-12T18:13:00", "Diz", "", "Adoption", "Spayed Female", 30.349666302369, -97.3331182841803, 162.822718253968),
("9 years", "A582826", "Dog", "Beagle", "Tricolor", "2005-08-26", "2015-08-18 11:11:00", "2015-08-18T11:11:00", "Charlie", "", "Return to Owner", "Neutered Male", 30.336163516779, -97.4507799807501, 520.637996031746),
("2 months", "A666065", "Cat", "Domestic Shorthair Mix", "Brown Tabby/White", "2013-08-26", "2013-11-09 18:14:00", "2013-11-09T18:14:00", "Sandy", "", "Adoption", "Spayed Female", 30.5430287552918, -97.6862435276171, 10.8228174603175),
("1 year", "A712292", "Dog", "Chihuahua Shorthair Mix", "Tan/White", "2014-09-20", "2015-09-21 12:18:00", "2015-09-21T12:18:00", "Peanut", "", "Return to Owner", "Spayed Female", 30.7645588874433, -97.6304822507824, 52.3589285714286),
("5 months", "A734883", "Cat", "Domestic Shorthair Mix", "Blue Tabby/White", "2016-04-14", "2016-09-27 22:24:00", "2016-09-27T22:24:00", "", "", "Adoption", "Neutered Male", 30.4984779796621, -97.5930332183412, 23.847619047619),
("10 months", "A703777", "Cat", "Domestic Shorthair Mix", "Black Smoke", "2015-04-21", "2016-03-11 11:10:00", "2016-03-11T11:10:00", "Whisper", "Foster", "Adoption", "Spayed Female", 30.4445743241147, -97.3019831691228, 46.4950396825397),
("1 year", "A690377", "Dog", "Pit Bull Mix", "Black/White", "2013-10-19", "2015-02-20 15:07:00", "2015-02-20T15:07:00", "*Pagani", "", "Adoption", "Neutered Male", 30.5804041697432, -97.3441305405284, 69.947123015873),
("4 weeks", "A674079", "Other", "Bat", "Brown/Black", "2014-02-07", "2014-03-07 10:46:00", "2014-03-07T10:46:00", "", "Rabies Risk", "Euthanasia", "Unknown", 30.760789218019, -97.708668826107, 4.0640873015873),
("4 months", "A687309", "Dog", "Miniature Poodle Mix", "Cream", "2014-05-03", "2014-09-07 16:48:00", "2014-09-07T16:48:00", "", "Partner", "Transfer", "Neutered Male", 30.349814324788, -97.3355763099762, 18.2428571428571),
("4 years", "A756786", "Dog", "Chihuahua Longhair/Yorkshire Terrier", "White/Tan", "2013-08-25", "2017-08-28 19:08:00", "2017-08-28T19:08:00", "Bebe", "", "Adoption", "Neutered Male", 30.4738298856514, -97.567165928853, 209.256746031746),
("11 months", "A678782", "Cat", "Domestic Shorthair Mix", "Black", "2014-03-28", "2015-03-02 15:10:00", "2015-03-02T15:10:00", "Fred", "Partner", "Transfer", "Neutered Male", 30.2958386572413, -97.5584905456389, 48.5188492063492),
("1 year", "A704521", "Cat", "Domestic Shorthair Mix", "Orange Tabby", "2014-06-05", "2015-06-24 16:41:00", "2015-06-24T16:41:00", "*Goldie", "Partner", "Transfer", "Spayed Female", 30.4989634425086, -97.6751570637692, 54.9564484126984),
("4 years", "A738497", "Cat", "Domestic Shorthair Mix", "Brown Tabby", "2012-11-16", "2016-12-22 13:35:00", "2016-12-22T13:35:00", "*Kyleigh", "Partner", "Transfer", "Spayed Female", 30.6806345179162, -97.6678754502172, 213.937996031746),
("3 years", "A723765", "Dog", "Queensland Heeler Mix", "White/Red Merle", "2013-04-06", "2016-04-06 16:50:00", "2016-04-06T16:50:00", "Dewie", "", "Return to Owner", "Spayed Female", 30.2769451914628, -97.3149222912905, 156.671626984127),
("11 years", "A323668", "Dog", "Australian Cattle Dog Mix", "Tricolor", "2003-05-15", "2015-03-06 17:36:00", "2015-03-06T17:36:00", "Ringo", "", "Return to Owner", "Neutered Male", 30.5079890751536, -97.5534887534599, 616.247619047619),
("6 years", "A724022", "Dog", "Chihuahua Shorthair Mix", "Tan/Red", "2011-04-10", "2017-05-24 16:15:00", "2017-05-24T16:15:00", "Pepe", "", "Return to Owner", "Neutered Male", 30.4054162302655, -97.5924477988179, 319.525297619048),
("1 year", "A724478", "Dog", "Flat Coat Retriever Mix", "Black", "2015-04-18", "2016-05-04 16:45:00", "2016-05-04T16:45:00", "Shadow", "", "Adoption", "Neutered Male", 30.5265906400911, -97.6402446114754, 54.6711309523809),
("4 months", "A765965", "Dog", "Pointer Mix", "Chocolate/White", "2017-09-30", "2018-02-01 16:11:00", "2018-02-01T16:11:00", "Coco", "", "Adoption", "Spayed Female", 30.3197231579781, -97.2562701820422, 17.8106150793651),
("2 years", "A725343", "Dog", "Pit Bull Mix", "Brown Brindle/White", "2014-04-28", "2016-07-13 18:13:00", "2016-07-13T18:13:00", "Luna", "", "Adoption", "Spayed Female", 30.4283598669481, -97.3545862586938, 115.394146825397),
("14 years", "A724729", "Cat", "Domestic Longhair Mix", "Calico", "2002-04-21", "2016-04-24 15:52:00", "2016-04-24T15:52:00", "Victoria", "", "Return to Owner", "Spayed Female", 30.4251029835876, -97.6483363859866, 731.094444444444),
("2 months", "A707888", "Cat", "Domestic Shorthair Mix", "Brown Tabby/White", "2015-05-04", "2015-07-25 12:01:00", "2015-07-25T12:01:00", "Sammy", "", "Adoption", "Neutered Male", 30.3482043779662, -97.3505154521528, 11.7858134920635),
("1 year", "A724814", "Cat", "Domestic Shorthair Mix", "Black", "2015-04-22", "2016-06-28 00:00:00", "2016-06-28T00:00:00", "*Oaxaca", "", "Adoption", "Spayed Female", 30.4465203443607, -97.6775633819665, 61.8571428571429),
("2 months", "A682638", "Cat", "Domestic Shorthair Mix", "Brown Tabby", "2014-05-15", "2014-07-18 17:08:00", "2014-07-18T17:08:00", "Marie", "", "Adoption", "Spayed Female", 30.3213210811901, -97.3396320952829, 9.24484126984127),
("1 year", "A742473", "Cat", "Domestic Shorthair Mix", "Brown Tabby/Brown", "2016-01-22", "2017-01-23 09:00:00", "2017-01-23T09:00:00", "", "SCRP", "Transfer", "Spayed Female", 30.6424102365412, -97.5257665624004, 52.4821428571429),
("7 years", "A663438", "Dog", "Labrador Retriever Mix", "Sable", "2006-09-18", "2014-06-14 16:40:00", "2014-06-14T16:40:00", "Bonny", "", "Adoption", "Spayed Female", 30.71339193104, -97.3077552120648, 403.813492063492),
("4 months", "A742468", "Cat", "Domestic Shorthair Mix", "Black", "2016-09-22", "2017-01-28 16:57:00", "2017-01-28T16:57:00", "Jiji", "", "Adoption", "Spayed Female", 30.6333863692891, -97.4648294968615, 18.3866071428571),
("2 weeks", "A694902", "Dog", "Pit Bull Mix", "White/Tricolor", "2014-12-22", "2015-01-08 12:39:00", "2015-01-08T12:39:00", "", "", "Return to Owner", "Intact Female", 30.650885495879, -97.4935832242768, 2.50386904761905),
("1 year", "A679645", "Dog", "Boxer/Queensland Heeler", "White/Black", "2013-05-24", "2014-06-17 18:18:00", "2014-06-17T18:18:00", "*Calvin", "Behavior", "Euthanasia", "Neutered Male", 30.4938807818552, -97.3795454409679, 55.6803571428571),
("2 months", "A665579", "Cat", "Domestic Shorthair Mix", "Black", "2013-08-19", "2013-11-04 15:09:00", "2013-11-04T15:09:00", "*Candy", "Partner", "Transfer", "Neutered Male", 30.6233838291794, -97.6718082403238, 11.0901785714286),
("1 year", "A734988", "Dog", "Catahoula Mix", "Brown Brindle/White", "2015-09-16", "2017-01-03 16:15:00", "2017-01-03T16:15:00", "*Avalon", "", "Adoption", "Spayed Female", 30.5938633595961, -97.2924224280396, 67.9538690476191),
("10 months", "A761936", "Dog", "Scottish Terrier Mix", "Brown Brindle", "2017-01-12", "2017-11-16 12:54:00", "2017-11-16T12:54:00", "", "Partner", "Transfer", "Intact Male", 30.611195337689, -97.4206096705434, 44.0767857142857);