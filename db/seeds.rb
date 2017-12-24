Recipe.create!([
{
 name: "Estrogonofe de Carne",
 stuff: "1 kg de carne, pimenta do reino, 2 lata de creme de leite, 3 cebolas",
 calories: 110,
 kind: "Carnes",
 prepare_mode: "Em uma panela, adicione o óleo, a carne e a cebola, os tomates, o caldo de carne e deixe cozinhar por 30 minutos",
 portion: "5",
 duration: "2017-12-21 00:40:00",
 cost: 50.00,
 poster: "estrogonofe_de_carne.jpg"
},
{
 name: "Filé de Frango a Milanesa",
 stuff: "1/2 kg de filé de frnago, 2 ovos batidos com uma pitada de sal, 2 xicaras de farinha de rosca, alho e mussarela",
 calories: 160,
 kind: "Aves",
 prepare_mode: "Tempere os files com o alho, suco de limão e ervas finas, sal a gosto. Passe nos ovos batidos e na farinha de rosca e coloque na frigideira, depois de frito coloque a mussarela por cima",
 portion: "8",
 duration: "2017-12-21 00:35:00",
 cost: 40.00,
 poster: "file_de_frango.jpg"
},
{
 name: "Salmão ao Forno",
 stuff: "2 files de salmão com pele, azeite extra virgem, pimenta moida, sal",
 calories: 100,
 kind: "Peixe",
 prepare_mode: "Retire as espenhas do filé, passe o sal e a pimenta, regue com azeite e deixe temperando, depois leve ao forno",
 portion: "2",
 duration: "2017-12-21 00:30:00",
 cost: 50.00,
 poster: "salmao_forno.jpg"
},
{
 name: "Salada Light",
 stuff: "Alface, tomate, agrião e peito de peru",
 calories: 90,
 kind: "Saladas",
 prepare_mode: "Misture todos os ingredientes em uma vazilha e tempere a seu gosto",
 portion: "10",
 duration: "2017-12-21 00:10:00",
 cost: 50.00,
 poster: "salada_peito_peru.jpg"
},
{
 name: "Brigadeiro de Panela",
 stuff: "2 latas de leite condensado, 1 colher (sopa) de manteiga e 3 colheres de achocolatado em pó",
 calories: 450,
 kind: "Doces",
 prepare_mode: "Coloque em uma panela todos os ingredientes e misture sem parar por aproximadamente 10 minutos",
 portion: "4",
 duration: "2017-12-21 00:15:00",
 cost: 50.00,
 poster: "brigadeiro.jpg"
},
])

receita = Recipe.find_by(name: 'Estrogonofe de Carne')
receita.comments.create!(name: "Paulo Xavier", rating: 5, comment: "Delicioso!")
receita.comments.create!(name: "Roseli Secolin", rating: 4, comment: "Muito bom!")
receita.comments.create!(name: "Maria Eduarda", rating: 4, comment: "Gostoso!")

receita = Recipe.find_by(name: 'Brigadeiro')
receita.comments.create!(name: "Mauro Silva", rating: 3, comment: "O melhor que ja comi!")
