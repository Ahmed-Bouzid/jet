Aircraft.create(tail: 'OEFCB',
  category: 'Very Light Jet',
  aircraft_type: 'Cessna Citation Mustang',
  maxpax: '4',
  actual_position:'Nice',
  price: '2000',
  company: 'GlobeAir',
  origin:'Autriche',
  yom:'2008',
  yor:'–')

Aircraft.create(tail: 'FHBOD',
  category: 'Very Light Jet',
  aircraft_type: 'Embraer Phenom 100E', 
  maxpax: '5',
  actual_position:'Bordeaux',
  price:'2000',
  company: 'JetKey',
  origin:'France',
  yom:'2016',
  yor:'–')


Aircraft.create(tail: 'DCJET',
  category: 'Light Jet',
  aircraft_type: 'Cessna Citation CJ3',
  maxpax: '7',
  actual_position:'Berlin',
  price:'2450',
  company: 'Air Hamburg',
  origin:'Allemagne',
  yom:'2010',
  yor:'-')

Aircraft.create(tail: 'FHAJV',
  category: 'Light Jet',
  aircraft_type: 'Cessna Citation II',
  maxpax: '8',
  actual_position:'Paris',
  price:'2450',
  company: 'Valljet',
  origin:'France',
  yom:'1990',
  yor:'2010')

Aircraft.create(tail: 'SPKCS',
  category: 'Super Light Jet',
  aircraft_type: 'Cessna Citation XLS',
  maxpax: '8',
  actual_position:'Nice',
  price:'2800',
  company: 'Jet Story',
  origin:'Pologne',
  yom:'2006',
  yor:'2013')

Aircraft.create(tail: '9HBCP',
  category: 'Super Light Jet',
  aircraft_type: 'Bombardier Learjet 45',
  maxpax: '8',
  actual_position:'Paris',
  price:'2800',
  company: 'Skyfirst',
  origin:'France',
  yom:'2006',
  yor:'2015')

Aircraft.create(tail: 'OEGLF',
  category: 'Midsize Jet',
  aircraft_type: 'Gulfstream G150',
  maxpax: '7',
  actual_position:'Nice',
  price:'3350',
  company: 'Avcon Jet',
  origin:'Autriche',
  yom:'2005',
  yor:'2013')

Aircraft.create(tail: 'CSDGR',
  category: 'Midsize Jet',
  aircraft_type: 'Cessna Citation VII',
  maxpax: '9',
  actual_position:'Paris',
  price:'3350',
  company: 'Airjetsul',
  origin:'Portugal',
  yom:'1994',
  yor:'2018')

Aircraft.create(tail: 'FHADH',
  category: 'Super Midsize Jet',
  aircraft_type: 'Dassault Falcon 50',
  maxpax: '10',
  actual_position:'Nice',
  price:'4000',
  company: 'Masterjet',
  origin:'France',
  yom:'1979',
  yor:'2011')

Aircraft.create(tail: 'GKLAS',
  category: 'Super Midsize Jet',
  aircraft_type: 'BOMBARDIER Challenger 300',
  maxpax: '9',
  actual_position:'Paris', 
  price:'4000',
  company: 'Air Charter Scotland',
  origin:'Ecosse',
  yom:'2003',
  yor:'-')

Aircraft.create(tail: '9HBOO',
  category: 'Heavy Jet',
  aircraft_type: 'Bombardier Challenger 850',
  maxpax: '15',
  actual_position:'Nice',
  price:'5500',
  company: 'Air X',
  origin:'Malte',
  yom:'2008',
  yor:'2017')

Aircraft.create(tail: 'OEIMZ',
  category: 'Heavy Jet',
  aircraft_type: 'Gulsfstream G450',
  maxpax: '16',
  actual_position:'Paris',
  price:'5500',
  company: 'TopJet',
  origin:'Autriche',
  yom:'2011',
  yor:'-')

Aircraft.create(tail: 'OYCLS',
  category: 'Ultra Long Range Jet',
  aircraft_type: 'Dassault Falcon 7x',
  maxpax: '14',
  actual_position:'Nice',
  price:'8000',
  company: 'Air Alsie',
  origin:'Danemark',
  yom:'2017',
  yor:'-')

Aircraft.create(tail: '9HVJC',
  category: 'Ultra Long Range Jet',
  aircraft_type: 'Bombardier Global 6000',
  maxpax: '16',
  actual_position:'Paris',
  price:'8000',
  company: 'VistaJet',
  origin:'Malte',
  yom:'2014',
  yor:'-')

Airport.create(code: 'LFPB',
  name: 'Paris Le Bourget',
  city: 'Le Bourget',
  country: 'FRANCE')

Airport.create(code: 'LFMN',
  name: "Aéroport de Nice-Côte d'Azur",
  city: 'Nice',
  country: 'FRANCE')

Airport.create(code: 'LFBD',
  name: 'Bordeaux Merignac',
  city: 'Bordeaux',
  country: 'FRANCE')

Airport.create(code: 'LFLS',
  name: "Lyon Bron",
  city: 'Lyon',
  country: 'FRANCE')











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
