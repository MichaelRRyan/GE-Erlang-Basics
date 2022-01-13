-module(records).
-record(gamer, { gamer_tag, points, achievements=[] }).
-export([run/0,create_record/3,update_record/3]).

run()->
    DrGiggles = create_record("DrGiggles", 135, [ "Quest 1", "Quest 2" ]),
    DukeNuke = create_record("DukeNuke", 145, [ "Quest 1", "Quest 3" ]),

    output_record(DrGiggles),
    output_record(DukeNuke),

    NewGiggles = update_record(DrGiggles, 10, ["Joined Game"]),
    NewDuke = update_record(DukeNuke, 10, ["Joined Game"]),

    io:fwrite("\nUpdated the records, new records:\n\n"),

    output_record(NewGiggles),
    output_record(NewDuke),

    Deleted = remove_achievements(NewGiggles, ["Quest 1"]),

    io:fwrite("\nDeleting an achievement, new record:\n\n"),

    output_record(Deleted).

create_record(GamerTag, Points, Achievements)->
    #gamer{ gamer_tag = GamerTag, points = Points, achievements = Achievements }.

update_record(Gamer, NewPoints, NewAchievements)->
    Gamer#gamer{ points = Gamer#gamer.points + NewPoints, achievements = lists:append(Gamer#gamer.achievements, NewAchievements) }.

remove_achievements(Gamer, Achievements)->
    Gamer#gamer{ points = Gamer#gamer.points, achievements = Gamer#gamer.achievements -- Achievements }.

output_record(Gamer)->
    io:fwrite("~p", [Gamer#gamer.gamer_tag]),
    io:fwrite(", ~p", [Gamer#gamer.points]),
    io:fwrite(", ~p~n", [Gamer#gamer.achievements]).