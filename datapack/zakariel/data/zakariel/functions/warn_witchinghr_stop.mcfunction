execute unless predicate zakariel:witching_hour if data storage zakariel:game_data witchingHourWarned unless data storage zakariel:game_data witchingHourStopped run tellraw @a {"text": "The shadows recede...", "color": "gold", "italic": true}
execute unless predicate zakariel:witching_hour if data storage zakariel:game_data witchingHourWarned run data remove storage zakariel:game_data witchingHourWarned
execute unless predicate zakariel:witching_hour unless data storage zakariel:game_data witchingHourStopped run data modify storage zakariel:game_data witchingHourStopped set value 1b
