execute as @a[scores={atime=1..}] at @s run scoreboard players set @s attacking 1
execute as @a[scores={attacking=1}] at @s run effect give @s minecraft:mining_fatigue 1 128
execute as @a[scores={attacking=2}] at @s run effect clear @s minecraft:mining_fatigue
execute as @a[scores={attacking=1..}] at @s run scoreboard players add @s attacking 1
execute as @a[scores={attacking=9}] at @s run scoreboard players add @s atk 1
execute as @a[scores={atk=5..}] at @s run scoreboard players set @s atk 1
execute as @a[scores={attacking=9..}] at @s run scoreboard players set @s attacking 0
execute as @a[scores={atime=1..}] at @s run scoreboard players set @s atime 0