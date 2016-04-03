
1. Plan gem, imagine interface
2. Start with project structure- bundler gem creation and google CLI gems
3. Start with the entry point- the run file
4. Force that to build the CLI interface
5. stub out the interface
6. start making things real
7. discover objects
8. program

-A CLI for top rated new tv episodes on that night

user types whats-on

Shows top result

1. The Americans: Season 4 - Rating 100% - With its fourth season, The Americans continues to deliver top-tier spy drama while sending its characters in directions that threaten to destroy their freedoms - and their lives.

What would you like to do next?
1- See all shows
2- exit

List - Shows all new shows on tonight
Top - Shows top rated new show

What is a show?
Show has a name
- a rating
-a url
-a description
   # show_1 = self.new
    # show_1.name = "SLEEPY HOLLOW: SEASON 3"
    # show_1.rating = "Rating 83%"
    # show_1.description = "In Season 3 of this modern retelling of Irving's classic, Ichabod Crane is left emotionally reeling after the death of his wife and a new visitor called Pandora arrives."
    # show_1.url = "http://www.rottentomatoes.com/browse/tv-list-1/"

    # show_2 = self.new
    # show_2.name = "THE VAMPIRE DIARIES: SEASON 7"
    # show_2.rating = "Rating 80%"
    # show_2.description = "It's Elena's first day back at Mystic Falls High School since the tragic death of her parents. Along with her Aunt Jenna, Elena tries her best to look after her troubled younger brother, Jeremy, and salvage what family they have left. The first day is already shaping up to be a struggle for Elena until she meets the mysterious new kid at school, Stefan. Elena is touched that he can relate to what she's going through. What Elena doesn't know is that Stefan is a vampire, constantly resisting the urge to taste her blood. As their undeniable connection grows deeper, Stefan's dangerous older brother, Damon, shows up to wreak havoc on the town..."
    # show_2.url = "http://www.rottentomatoes.com/browse/tv-list-1/"