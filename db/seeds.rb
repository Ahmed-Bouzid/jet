require 'nexmo'

Aircraft.create(aircraftTail: 'OE-FCB'
                      aircraftCategory: 'Very Light Jet'
                      aircraftType: 'Cessna Citation Mustang'
                      aircraftMaxpax: '4'
                      aircraftHomebase:'LFPB')

Aircraft.create(aircraftTail: 'F-HBOD'
                      aircraftCategory: 'Very Light Jet'
                      aircraftType: 'Embraer Phenom 100E'
                      aircraftMaxpax: '5'
                      aircraftHomebase:'LFBD')


Aircraft.create(aircraftTail: 'D-CJET'
                      aircraftCategory: 'Light Jet'
                      aircraftType: 'Cessna Citation CJ3'
                      aircraftMaxpax: '7'
                      aircraftHomebase:'LIML')

Aircraft.create(aircraftTail: 'F-HAJV'
                      aircraftCategory: 'Light Jet'
                      aircraftType: 'Cessna Citation II'
                      aircraftMaxpax: '8'
                      aircraftHomebase:'LFPB')

Aircraft.create(aircraftTail: 'SP-KCS'
                      aircraftCategory: 'Super Light Jet'
                      aircraftType: 'Cessna Citation XLS'
                      aircraftMaxpax: '8'
                      aircraftHomebase:'EPWA')

Aircraft.create(aircraftTail: '9H-BCP'
                      aircraftCategory: 'Super Light Jet'
                      aircraftType: 'Bombardier Learjet 45'
                      aircraftMaxpax: '8'
                      aircraftHomebase:'LFPB')

Aircraft.create(aircraftTail: 'OE-GLF'
                      aircraftCategory: 'Midsize Jet'
                      aircraftType: 'Gulfstream G150'
                      aircraftMaxpax: '7'
                      aircraftHomebase:'UKKK')

Aircraft.create(aircraftTail: 'CS-DGR'
                      aircraftCategory: 'Midsize Jet'
                      aircraftType: 'Cessna Citation VII'
                      aircraftMaxpax: '9'
                      aircraftHomebase:'LPCS')

Aircraft.create(aircraftTail: 'F-HADH'
                      aircraftCategory: 'Super Midsize Jet'
                      aircraftType: 'Dassault Falcon 50'
                      aircraftMaxpax: '10'
                      aircraftHomebase:'LFPB')

Aircraft.create(aircraftTail: 'G-KLAS'
                      aircraftCategory: 'Super Midsize Jet'
                      aircraftType: 'BOMBARDIER Challenger 300'
                      aircraftMaxpax: '9'
                      aircraftHomebase:'EGGW')

Aircraft.create(aircraftTail: '9H-BOO'
                      aircraftCategory: 'Heavy Jet'
                      aircraftType: 'Bombardier Challenger 850'
                      aircraftMaxpax: '15'
                      aircraftHomebase:'LFMN')

Aircraft.create(aircraftTail: 'OE-IMZ'
                      aircraftCategory: 'Heavy Jet'
                      aircraftType: 'Gulsfstream G450'
                      aircraftMaxpax: '16'
                      aircraftHomebase:'LOWW')

Aircraft.create(aircraftTail: 'OY-CLS'
                      aircraftCategory: 'Ultra Long Range Jet'
                      aircraftType: 'Dassault Falcon 7x'
                      aircraftMaxpax: '14'
                      aircraftHomebase:'EKSB')

Aircraft.create(aircraftTail: '9H-VJC'
                      aircraftCategory: 'Ultra Long Range Jet'
                      aircraftType: 'Bombardier Global 6000'
                      aircraftMaxpax: '16'
                      aircraftHomebase:'EDDM')

Airport.create(airportCode: 'LFPB'
                      airportName: 'Paris Le Bourget'
                      aircraftCity: 'Le Bourget'
                      aircraftCountry: 'FRANCE')

Airport.create(airportCode: 'LFMN'
                      airportName: 'Aéroport de Nice-Côte d Azur'
                      aircraftCity: 'Nice'
                      aircraftCountry: 'FRANCE')










# client = Nexmo::Client.new(api_key: '3442d6bd', api_secret: 'aTY7YWJjGGnOgcQo')

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
