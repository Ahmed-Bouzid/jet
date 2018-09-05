require 'nexmo'

Aircraft.create(Tail: 'OE-FCB'
                      Category: 'Very Light Jet',
                      Type: 'Cessna Citation Mustang',
                      Maxpax: '4'
                      Homebase:'LFPB')

Aircraft.create(Tail: 'F-HBOD'
                      Category: 'Very Light Jet'
                      Type: 'Embraer Phenom 100E'
                      Maxpax: '5'
                      Homebase:'LFBD')


Aircraft.create(Tail: 'D-CJET'
                      Category: 'Light Jet'
                      Type: 'Cessna Citation CJ3'
                      Maxpax: '7'
                      Homebase:'LIML')

Aircraft.create(Tail: 'F-HAJV'
                      Category: 'Light Jet'
                      Type: 'Cessna Citation II'
                      Maxpax: '8'
                      Homebase:'LFPB')

Aircraft.create(Tail: 'SP-KCS'
                      Category: 'Super Light Jet'
                      Type: 'Cessna Citation XLS'
                      Maxpax: '8'
                      Homebase:'EPWA')

Aircraft.create(Tail: '9H-BCP'
                      Category: 'Super Light Jet'
                      Type: 'Bombardier Learjet 45'
                      Maxpax: '8'
                      Homebase:'LFPB')

Aircraft.create(Tail: 'OE-GLF'
                      Category: 'Midsize Jet'
                      Type: 'Gulfstream G150'
                      Maxpax: '7'
                      Homebase:'UKKK')

Aircraft.create(Tail: 'CS-DGR'
                      Category: 'Midsize Jet'
                      Type: 'Cessna Citation VII'
                      Maxpax: '9'
                      Homebase:'LPCS')

Aircraft.create(Tail: 'F-HADH'
                      Category: 'Super Midsize Jet'
                      Type: 'Dassault Falcon 50'
                      Maxpax: '10'
                      Homebase:'LFPB')

Aircraft.create(Tail: 'G-KLAS'
                      Category: 'Super Midsize Jet'
                      Type: 'BOMBARDIER Challenger 300'
                      Maxpax: '9'
                      Homebase:'EGGW')

Aircraft.create(Tail: '9H-BOO'
                      Category: 'Heavy Jet'
                      Type: 'Bombardier Challenger 850'
                      Maxpax: '15'
                      Homebase:'LFMN')

Aircraft.create(Tail: 'OE-IMZ'
                      Category: 'Heavy Jet'
                      Type: 'Gulsfstream G450'
                      Maxpax: '16'
                      Homebase:'LOWW')

Aircraft.create(Tail: 'OY-CLS'
                      Category: 'Ultra Long Range Jet'
                      Type: 'Dassault Falcon 7x'
                      Maxpax: '14'
                      Homebase:'EKSB')

Aircraft.create(Tail: '9H-VJC'
                      Category: 'Ultra Long Range Jet'
                      Type: 'Bombardier Global 6000'
                      Maxpax: '16'
                      Homebase:'EDDM')

Airport.create(Code: 'LFPB'
                      Name: 'Paris Le Bourget'
                      City: 'Le Bourget'
                      Country: 'FRANCE')

Airport.create(Code: 'LFMN'
                      Name: 'Aéroport de Nice-Côte d Azur'
                      City: 'Nice'
                      Country: 'FRANCE')










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
