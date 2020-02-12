# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{email: "admin@admin.com", password: "123456", admin: true}, {email: "user@mail.com", password: "123456"}, {email: "anotheruser@mail.com", password: "123456"}])
movies = Movie.create([ {
        "title": "Mr.Nobody",
        "cast": "Jared Leto, Dian Kruger",
        "producer": "Philippe Godeau",
        "country": "USA",
        "status": "released",
        "image": "https://img.fireden.net/co/image/1514/93/1514936947607.jpg",
        "genre": "science fiction",
        "summary": "Nemo Nobody leads an ordinary existence with his wife and 3 children; one day, he wakes up as a mortal centenarian in the year 2092."
    },
    {
         "title": "Shutter Island",
        "cast": "Leonardo Di Caprio",
        "producer": "Martin Scorcese",
        "country": "United States",
        "status": "released",
        "image": "http://image.tmdb.org/t/p/w500/zumLrxQmbpqhGcjpYcmZ1YXCCvI.jpg",
        "genre": "thriller",
        "summary": "World War II soldier-turned-U.S. Marshal Teddy Daniels investigates the disappearance of a patient from a hospital for the criminally insane, but his efforts are compromised by his troubling visions and also by a mysterious doctor."
    },
    {
        "title": "Dua Garis Biru",
        "cast": "Adisti Zara, Angga Yunanda, Lulu Tobing",
        "producer": "Gina S. Nur",
        "country": "Indonesia",
        "status": "released",
        "image": "http://image.tmdb.org/t/p/w500/rqHzHops7SudBKvxjbB15ZnUABp.jpg",
        "genre": "romance",
        "summary": "Bima and Dara are lovers who are still in high school. At the age of 17, they were determined to copulate outside of marriage. Dara was pregnant. Both are then confronted with a life that is unimaginable for children of their age, life as parents."
    },
    {
        "title": "Call Me By Your Name",
        "cast": "Timothée Chalamet, Armie Hammer",
        "producer": "Luca Guadagnino",
        "country": "Italy",
        "status": "Released",
        "image": "http://image.tmdb.org/t/p/w500/tcNniniS4rfqrLH0oORikJfnIwY.jpg",
        "genre": "Romance",
        "summary": "In 1980s Italy, a relationship begins between seventeen-year-old teenage Elio and the older adult man hired as his father's research assistant."
    }])