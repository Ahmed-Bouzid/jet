Aircraft.create(Tail: 'OEFCB',
  Category: 'Very Light Jet',
  Type: 'Cessna Citation Mustang',
  Maxpax: '4',
  Actual_position:'Nice',
  price: '3700',
  company: 'GlobeAir',
  origin:'Autriche',
  YOM:'2008',
  YOR:'–')

Aircraft.create(Tail: 'FHBOD',
  Category: 'Very Light Jet',
  Type: 'Embraer Phenom 100E', 
  Maxpax: '5',
  Actual_position:'Bordeaux',
  price:'3850',
  company: 'JetKey',
  origin:'France',
  YOM:'2016',
  YOR:'–')


Aircraft.create(Tail: 'DCJET',
  Category: 'Light Jet',
  Type: 'Cessna Citation CJ3',
  Maxpax: '7',
  Actual_position:'Berlin',
  price:'6230',
  company: 'Air Hamburg',
  origin:'Allemagne',
  YOM:'2010',
  YOR:'-')

Aircraft.create(Tail: 'FHAJV',
  Category: 'Light Jet',
  Type: 'Cessna Citation II',
  Maxpax: '8',
  Actual_position:'Paris',
  price:'6345',
  company: 'Valljet',
  origin:'France',
  YOM:'1990',
  YOR:'2010')

Aircraft.create(Tail: 'SPKCS',
  Category: 'Super Light Jet',
  Type: 'Cessna Citation XLS',
  Maxpax: '8',
  Actual_position:'Nice',
  price:'8970',
  company: 'Jet Story',
  origin:'Pologne',
  YOM:'2006',
  YOR:'2013')

Aircraft.create(Tail: '9HBCP',
  Category: 'Super Light Jet',
  Type: 'Bombardier Learjet 45',
  Maxpax: '8',
  Actual_position:'Paris',
  price:'9340',
  company: 'Skyfirst',
  origin:'France',
  YOM:'2006',
  YOR:'2015')

  Aircraft.create(Tail: 'OEGLF',
  Category: 'Midsize Jet',
  Type: 'Gulfstream G150',
  Maxpax: '7',
  Actual_position:'Nice',
  price:'11300',
  company: 'Avcon Jet',
  origin:'Autriche',
  YOM:'2005',
  YOR:'2013')

  Aircraft.create(Tail: 'CSDGR',
  Category: 'Midsize Jet',
  Type: 'Cessna Citation VII',
  Maxpax: '9',
  Actual_position:'Paris',
  price:'12600',
  company: 'Airjetsul',
  origin:'Portugal',
  YOM:'1994',
  YOR:'2018')

  Aircraft.create(Tail: 'FHADH',
  Category: 'Super Midsize Jet',
  Type: 'Dassault Falcon 50',
  Maxpax: '10',
  Actual_position:'Nice',
  price:'18300',
  company: 'Masterjet',
  origin:'France',
  YOM:'1979',
  YOR:'2011')

  Aircraft.create(Tail: 'GKLAS',
  Category: 'Super Midsize Jet',
  Type: 'BOMBARDIER Challenger 300',
  Maxpax: '9',
  Actual_position:'Paris', 
  price:'19100',
  company: 'Air Charter Scotland',
  origin:'Ecosse',
  YOM:'2003',
  YOR:'-')

  Aircraft.create(Tail: '9HBOO',
  Category: 'Heavy Jet',
  Type: 'Bombardier Challenger 850',
  Maxpax: '15',
  Actual_position:'Nice',
  price:'20900',
  company: 'Air X',
  origin:'Malte',
  YOM:'2008',
  YOR:'2017')

  Aircraft.create(Tail: 'OEIMZ',
  Category: 'Heavy Jet',
  Type: 'Gulsfstream G450',
  Maxpax: '16',
  Actual_position:'Paris',
  price:'22300',
  company: 'TopJet',
  origin:'Autriche',
  YOM:'2011',
  YOR:'-')

  Aircraft.create(Tail: 'OYCLS',
  Category: 'Ultra Long Range Jet',
  Type: 'Dassault Falcon 7x',
  Maxpax: '14',
  Actual_position:'Nice',
  price:'23600',
  company: 'Air Alsie',
  origin:'Danemark',
  YOM:'2017',
  YOR:'-')

  Aircraft.create(Tail: '9HVJC',
  Category: 'Ultra Long Range Jet',
  Type: 'Bombardier Global 6000',
  Maxpax: '16',
  Actual_position:'Paris',
  price:'25780',
  company: 'VistaJet',
  origin:'Malte',
  YOM:'2014',
  YOR:'-')

  Airport.create(Code: 'LFPB',
  Name: 'Paris Le Bourget',
  City: 'Le Bourget',
  Country: 'FRANCE')

Airport.create(Code: 'LFMN',
  Name: "Aéroport de Nice-Côte d'Azur",
  City: 'Nice',
  Country: 'FRANCE')











 #client = Nexmo::Client.new(api_key: '3442d6bd', api_secret: 'aTY7YWJjGGnOgcQo')

# p " Etape 1 Création des utilisateurs =========="

# 10.times do
# 	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone: '06'+Faker::Number.number(8), email:Faker::Internet.email, password:"ordinateur")
# end
# #User.create(first_name: "nico", last_name: "alo", phone: "0698765656", email:"ahmahm@hotmail.com", password:"bonjourbonjour")

# p " ======== Les utilisateurs ont été créé ========"



# p " Etape 2 Envoie d'SMS =========="

# def send_sms

# 	response = client.sms.send(from: 'Ruby', to: '33782585134', text: 'Vous venez de confirmer votre inscription a notre application')

# 	if response.messages.first.status == '0'
# 		puts "Sent message id=#{response.messages.first.message_id}"
# 	else
# 		puts "Error: #{response.messages.first.error_text}"
# 	end

# end

# p " SMS envoyé =========="
