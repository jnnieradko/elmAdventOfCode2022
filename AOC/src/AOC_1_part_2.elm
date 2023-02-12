module AOC_1_part_2 exposing (..)
import AOC_1 exposing (dataToDisplay)
import Dict exposing (Dict)
import List.Extra


summOfCaloriesForEachElveDescending : List Int
summOfCaloriesForEachElveDescending = List.reverse (List.sort dataToDisplay)

sumOf3ElvesCalories : String
sumOf3ElvesCalories = dataToDisplay
                            |> List.sort
                            |> List.reverse
                            |> List.Extra.splitAt 3
                            |> Tuple.first
                            |> List.sum
                            |> String.fromInt




-- Second task solution with Dictionaries - just for training with Dict

-- Dictionary with key (calory), val (calory)

dictionaryOfAllElvesCalories : List Int -> Dict Int Int
dictionaryOfAllElvesCalories li = Dict.fromList (List.map (\int -> (int , int)) li )

sumOf3ElvesCalories_2 : String
sumOf3ElvesCalories_2 = summOfCaloriesForEachElveDescending
                            |> dictionaryOfAllElvesCalories
                            |> Dict.values
                            |> List.reverse
                            |> List.Extra.splitAt 3
                            |> Tuple.first
                            |> List.sum
                            |> String.fromInt


