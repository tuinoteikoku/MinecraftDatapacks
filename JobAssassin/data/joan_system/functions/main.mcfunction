## 試合中でなく参加人数を満たしているか(Tag&Score:joan_join)


## 参加者希望者の参加猶予のカウント中か(Tag:joan_wait)
execute in JA-world as @e[tag=joan_timer,tag=joan_wait] run function joan_system:joining

## ジョブ選択が終わったか(Tag:joan_select)
execute in JA-world as @e[tag=joan_timer,tag=joan_select] run function joan_system:select

## 試合が始まっているか(Tag:joan_playing)
execute in JA-world as @e[tag=joan_timer,tag=joan_playing] run function joan_system:play