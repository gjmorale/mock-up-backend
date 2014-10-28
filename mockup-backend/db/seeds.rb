# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(name: "Pedro", mail: "mail1@mail.com", password_digest: "123456")
User.create(name: "Juan", mail: "mail2@mail.com", password_digest: "123456")
User.create(name: "Pablo", mail: "mail3@mail.com", password_digest: "123456")
User.create(name: "Lucas", mail: "mail4@mail.com", password_digest: "123456")
User.create(name: "Simón", mail: "mail5@mail.com", password_digest: "123456")
User.create(name: "Mateo", mail: "mail6@mail.com", password_digest: "123456")


Mashup.create(name: "mashup1", parameters: "chile norte cobre", user_id: 1)
Mashup.create(name: "mashup2", parameters: "tennis", user_id: 2)
Mashup.create(name: "mashup3", parameters: "handball", user_id: 3)
Mashup.create(name: "mashup4", parameters: "deportes", user_id: 4)
Mashup.create(name: "mashup5", parameters: "arroz", user_id: 5)
Mashup.create(name: "mashup6", parameters: "puré", user_id: 6)
Mashup.create(name: "mashup7", parameters: "futbol alexis sanchez", user_id: 1)
Mashup.create(name: "mashup8", parameters: "futbol 2010", user_id: 2)
Mashup.create(name: "mashup9", parameters: "futbol colo-colo", user_id: 3)
Mashup.create(name: "mashup10", parameters: "tennis nadal", user_id: 4)
Mashup.create(name: "mashup11", parameters: "arroz primavera", user_id: 5)
Mashup.create(name: "mashup12", parameters: "puré cocinar instrucciones", user_id: 6)

Link.create(value: 3, link: "#", title: "una noticia", mashup_id: 1, link_source_id: 1)
Link.create(value: 3, link: "#", title: "otra noticia", mashup_id: 1, link_source_id: 4)
Link.create(value: 3, link: "#", title: "alguna noticia", mashup_id: 1, link_source_id: 2)
Link.create(value: 3, link: "#", title: "un post", mashup_id: 1, link_source_id: 2)
Link.create(value: 3, link: "#", title: "otra cosa", mashup_id: 1, link_source_id: 3)
Link.create(value: 3, link: "#", title: "otra mas", mashup_id: 2, link_source_id: 1)
Link.create(value: 3, link: "#", title: "es pura basura", mashup_id: 2, link_source_id: 2)
Link.create(value: 3, link: "#", title: "alguien dijo algo", mashup_id: 2, link_source_id: 3)
Link.create(value: 3, link: "#", title: "y se lo retwitearon", mashup_id: 3, link_source_id: 1)
Link.create(value: 3, link: "#", title: "nada", mashup_id: 3, link_source_id: 4)

LinkSource.create(picture: "facebook.jpg", name: "Facebook")
LinkSource.create(picture: "twitter.jpg", name: "Twitter")
LinkSource.create(picture: "emol.jpg", name: "Emol")
LinkSource.create(picture: "gobierno.jpg", name: "Gobierno")

Keyword.create( keyword: "ministeria", value: 1, mashup_id: 1)
Keyword.create( keyword: "mineria", value: 4, mashup_id: 1)
Keyword.create( keyword: "extraccion", value: 2, mashup_id: 1)
Keyword.create( keyword: "precio", value: 3, mashup_id: 1)
Keyword.create( keyword: "impuestos", value: 1, mashup_id: 1)
Keyword.create( keyword: "CODELCO", value: 7, mashup_id: 1)
Keyword.create( keyword: "gobierno", value: 3, mashup_id: 1)
Keyword.create( keyword: "mercado", value: 2, mashup_id: 1)
Keyword.create( keyword: "exportador", value: 5, mashup_id: 1)
Keyword.create( keyword: "toneladas", value: 1, mashup_id: 1)
Keyword.create( keyword: "afectan", value: 1, mashup_id: 1)
Keyword.create( keyword: "procesos", value: 7, mashup_id: 1)
Keyword.create( keyword: "33", value: 6, mashup_id: 1)