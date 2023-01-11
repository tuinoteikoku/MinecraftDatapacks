#処理をアナウンス
#function:reloadのスケジュールを消去、拠点を消去する処理を実行
tellraw @a {"text":"資源タルコフ脱出拠点Datapack: データパックを緊急停止しました。処理を再開する場合はリロードするか「/function pvpsigen_exit: restart」を実行してください。"}

schedule function pvpsigen_exit:reload 0t replace
function pvpsigen_exit:tpam_e_reset
function pvpsigen_exit:tpam_e_disposal