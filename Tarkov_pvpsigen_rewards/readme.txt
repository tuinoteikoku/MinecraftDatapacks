PVP資源ワールド用報酬チェスト

◆導入方法
ゲーム内で /function pvpsigen_reward:load を実行してください。

◆開始方法
ゲーム内で /function pvpsigen_reward:start を実行してください。
実行時点から初期状態では1時間周期で処理が実行されます。

◆停止方法
ゲーム内で /function pvpsigen_reward:stop を実行してください。
実行時点で処理が停止されます。




◆報酬チェスト内容の書き換え
pvpsigen_rewards\data\pvpsigen_rewards\loot_tables\reward_chest.json
の内容を書き換えてください。

◆周期の書き換え
/scoreboard players set #pvpsigen_reward pvpsigen_reward.now_sec <X>
ゲーム内で上記コマンドの<X>の部分を任意の秒数に書き換えて実行してください。

◆設置範囲の書き換え
pvpsigen_rewards\data\pvpsigen_rewards\functions\reward_init_set.mcfunction
の
spreadplayers 0 0 1 1000 true @s
上記行の1000を任意のブロック数に書き換えてください