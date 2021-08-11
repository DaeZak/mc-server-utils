execute if predicate zakariel:witching_hour unless data storage zakariel:game_data witchingHourWarned run tellraw @a {"text": "The witching hour approaches...", "color": "dark_purple", "bold": true, "italic": true}
execute if predicate zakariel:witching_hour unless data storage zakariel:game_data witchingHourWarned run data modify storage zakariel:game_data witchingHourWarned set value 1b
execute if predicate zakariel:witching_hour if data storage zakariel:game_data witchingHourStopped run data remove storage zakariel:game_data witchingHourStopped
