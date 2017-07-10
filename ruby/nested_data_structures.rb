tolkien_movies={
the_hobbit: {
    title: {movies:["An Unexpected Journey",
                    "The Battle of the Five Armies"],
            books:"The Hobbit"},
   protagonist: {
                thorin_and_company: [
                  "Bilbo Baggins",
                  "Gandalf the Gray",
                 "Thorin Oakenshield",
                 "Balin",
                 "Bifur",
                 "Bofur",
                 "Bombur",
                 "Dori",
                 "Dwalin",
                 "Fili",
                 "Kili",
                 "Nori",
                 "Ori",
                 "Oin",
                 "Gloin"
                 ],
               mirkwood: ["Radagast the Brown",
               "Thrandull",
               "Legolas",
               "Tauriel"]
                },
  antagonist: [
              "Smaug",
              "Trolls",
              "Spiders of Mirkwood",
              "Azog the Defiler"
              ]
  },
the_lord_of_the_rings: {
  title: {
        movies:["The Fellowship of the Ring",
                "The Two Towers",
                "The Return of the King"],
        books:["The Fellowship of the Ring",
                "The Two Towers",
                "The Return of the King"]
        },
  protagonist: {
    the_fellowship: ["Frodo",
              "Sam",
              "Merry",
              "Pippin",
              "Gimli",
              "Aragorn",
              "Legolas",
              "Gandalf"]
                },
  antagonist: ["Sauron","Nazgul","Saruman","Gollum","Shelob","The Balrog"]
   }
}

p tolkien_movies[:the_hobbit][:title][:movies]
p tolkien_movies[:the_hobbit][:protagonist][:thorin_and_company][5]
p tolkien_movies[:the_hobbit][:antagonist]
p tolkien_movies[:the_lord_of_the_rings][:title][:books]
p tolkien_movies[:the_lord_of_the_rings][:protagonist][:the_fellowship][6]
