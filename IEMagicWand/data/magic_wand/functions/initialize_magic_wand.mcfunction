scoreboard objectives remove UseMagicWand
scoreboard objectives remove MagicBallLifeTime 
scoreboard objectives remove BombDelay

scoreboard objectives add MagicBallLifeTime dummy
scoreboard objectives add MagicID dummy
scoreboard objectives add BombDelay dummy
scoreboard objectives add UseMagicWand minecraft.used:minecraft.carrot_on_a_stick


scoreboard players add CONST_BOMB_DELAY_60 BombDelay 60