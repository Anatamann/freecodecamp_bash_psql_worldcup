#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo -e "\n~~ Inserting Data ~~\n"
cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals
do 
  #insert teams data to teams table
  team1=$($PSQL "select name from teams where name='$winner'")
  team2=$($PSQL "select name from teams where name='$opponent'")
  if [[ -z $team1 && $winner != 'winner' ]]
    then
      result=$($PSQL "INSERT INTO teams(name) VALUES('$winner')")
      if [[ $result=='INSERT 0 1' ]]
      then
        echo $winner added to the table.
      fi
  fi
  if [[ -z $team2 && $opponent != 'opponent' ]]
    then
      result=$($PSQL "INSERT INTO teams(name) VALUES('$opponent')")
       if [[ $result=='INSERT 0 1' ]]
      then
        echo $opponent added to the table.
      fi
  fi
done
      
                            #inserting the the game data to games table
      
      echo -e "\n~~ Inserting game data ~~\n"
cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals
do
  if [[ $year != 'year' ]]
    then  
      winner_id=$($PSQL "select team_id from teams WHERE name='$winner'")
      opponent_id=$($PSQL "select team_id from teams WHERE name='$opponent'")
      result=$($PSQL "INSERT INTO games(year,winner_id,opponent_id, winner_goals, opponent_goals, round) 
                VALUES($year, $winner_id, $opponent_id, $winner_goals, $opponent_goals, '$round')"
             )
      if [[ $result=='INSERT 0 1' ]]
      then
        echo added to the table.
      else 
        echo already present in the table.
      fi
  fi
done
