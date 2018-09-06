Aircraft.create(Tail: 'OE-FCB',
                      Category: 'Very Light Jet',
                      Type: 'Cessna Citation Mustang',
                      Maxpax: '4',
                      Actual_position:'Nice'
                      #,Price: '3700'
                      )

Aircraft.create(Tail: 'F-HBOD',
                      Category: 'Very Light Jet',
                      Type: 'Embraer Phenom 100E',
                      Maxpax: '5',
                      Actual_position:'Paris'
                      #,Price:'3850'
                      )


Aircraft.create(Tail: 'D-CJET',
                      Category: 'Light Jet',
                      Type: 'Cessna Citation CJ3',
                      Maxpax: '7',
                      Actual_position:'Nice'
                      #,Price:'6230'
                      )

Aircraft.create(Tail: 'F-HAJV',
                      Category: 'Light Jet',
                      Type: 'Cessna Citation II',
                      Maxpax: '8',
                      Actual_position:'Paris'
                      #,Price:'6345'
                      )

Aircraft.create(Tail: 'SP-KCS',
                      Category: 'Super Light Jet',
                      Type: 'Cessna Citation XLS',
                      Maxpax: '8',
                      Actual_position:'Nice'
                      #,Price:'8970'
                      )

Aircraft.create(Tail: '9H-BCP',
                      Category: 'Super Light Jet',
                      Type: 'Bombardier Learjet 45',
                      Maxpax: '8',
                      Actual_position:'Paris'
                      #,Price:'9340'
                      )

Aircraft.create(Tail: 'OE-GLF',
                      Category: 'Midsize Jet',
                      Type: 'Gulfstream G150',
                      Maxpax: '7',
                      Actual_position:'Nice'
                      #,Price:'11,300'
                      )

Aircraft.create(Tail: 'CS-DGR',
                      Category: 'Midsize Jet',
                      Type: 'Cessna Citation VII',
                      Maxpax: '9',
                      Actual_position:'Paris'
                      #,Price:'12,600'
                      )

Aircraft.create(Tail: 'F-HADH',
                      Category: 'Super Midsize Jet',
                      Type: 'Dassault Falcon 50',
                      Maxpax: '10',
                      Actual_position:'Nice'
                      #,Price:'18,300'
                      )

Aircraft.create(Tail: 'G-KLAS',
                      Category: 'Super Midsize Jet',
                      Type: 'BOMBARDIER Challenger 300',
                      Maxpax: '9',
                      Actual_position:'Paris'
                      #,Price:'19,100'
                      )

Aircraft.create(Tail: '9H-BOO',
                      Category: 'Heavy Jet',
                      Type: 'Bombardier Challenger 850',
                      Maxpax: '15',
                      Actual_position:'Nice'
                      #,Price:'20,900'
                      )

Aircraft.create(Tail: 'OE-IMZ',
                      Category: 'Heavy Jet',
                      Type: 'Gulsfstream G450',
                      Maxpax: '16',
                      Actual_position:'Paris'
                      #,Price:'22,300'
                      )

Aircraft.create(Tail: 'OY-CLS',
                      Category: 'Ultra Long Range Jet',
                      Type: 'Dassault Falcon 7x',
                      Maxpax: '14',
                      Actual_position:'Nice'
                      #,Price:'23,600'
                      )

Aircraft.create(Tail: '9H-VJC',
                      Category: 'Ultra Long Range Jet',
                      Type: 'Bombardier Global 6000',
                      Maxpax: '16',
                      Actual_position:'Paris'
                      #,Price:'25,780'
                      )

Airport.create(Code: 'LFPB',
                      Name: 'Paris Le Bourget',
                      City: 'Le Bourget',










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
