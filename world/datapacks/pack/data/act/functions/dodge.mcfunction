execute as @a[scores={shift=1..}] at @s unless entity @e[name=dodge,distance=..1] run summon minecraft:armor_stand ^ ^ ^-0.2 {CustomName:"\"dodge\"",NoGravity:0b,Invisible:1b}
scoreboard players set @e[name=dodge] my 200
execute as @a at @s store result score @s rot run data get entity @s Rotation[0] 1
execute as @a[scores={shift=1..}] at @s store result score @s mx run data get entity @e[name=dodge,limit=1,sort=nearest] Pos[0] 2000
execute as @a[scores={shift=1..}] at @s store result score @s mz run data get entity @e[name=dodge,limit=1,sort=nearest] Pos[2] 2000
execute as @a[scores={shift=1..}] at @s store result score @s x1 run data get entity @s Pos[0] 2000
execute as @a[scores={shift=1..}] at @s store result score @s z1 run data get entity @s Pos[2] 2000
execute as @a[scores={shift=1..}] at @s run scoreboard players operation @s mx -= @s x1
execute as @a[scores={shift=1..}] at @s run scoreboard players operation @s mz -= @s z1
execute as @a[scores={shift=1..},limit=1] at @s store result entity @e[name=dodge,limit=1,sort=nearest] Motion[0] double 0.001 run scoreboard players get @s mx
execute as @e[name=dodge,scores={life=..1}] at @s store result entity @s Motion[1] double 0.001 run scoreboard players get @s my
execute as @a[scores={shift=1..},limit=1] at @s store result entity @e[name=dodge,limit=1,sort=nearest] Motion[2] double 0.001 run scoreboard players get @s mz
execute as @e[name=dodge] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @p rot
scoreboard players set @a[scores={shift=1..}] shift 0
kill @e[name=dodge,scores={life=14..}]
scoreboard players add @e[name=dodge] life 1
execute as @e[name=dodge] at @s run tp @a[limit=1,sort=nearest] ~ ~ ~ ~ 0