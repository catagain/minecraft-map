scoreboard players set @a[scores={dtime=1..,attacking=0}] drecord 6
scoreboard players remove @a[scores={drecord=1..}] drecord 1
execute as @a[scores={drecord=1..}] at @s run scoreboard players add @s dfc 1
execute as @a[scores={drecord=0,dfc=4..}] at @s run scoreboard players set @s dfc 3
execute as @a[scores={drecord=0,dfc=1..3}] at @s run scoreboard players remove @s dfc 1
execute as @a[scores={dfc=0,attacking=0}] at @s run replaceitem entity @p container.0 minecraft:iron_sword{display:{Name:"{\"text\":\"長劍\",\"color\":\"aqua\"}"},Damage:0,Unbreakable:1b} 1
execute as @a[scores={dfc=1}] at @s run replaceitem entity @p container.0 minecraft:iron_sword{display:{Name:"{\"text\":\"長劍\",\"color\":\"aqua\"}"},Damage:1,Unbreakable:1b} 1
execute as @a[scores={dfc=2}] at @s run replaceitem entity @p container.0 minecraft:iron_sword{display:{Name:"{\"text\":\"長劍\",\"color\":\"aqua\"}"},Damage:2,Unbreakable:1b} 1
execute as @a[scores={dfc=3}] at @s run replaceitem entity @p container.0 minecraft:iron_sword{display:{Name:"{\"text\":\"長劍\",\"color\":\"aqua\"}"},Damage:3,Unbreakable:1b} 1
scoreboard players set @a[scores={dtime=1..}] dtime 0