#reloadファンクションを10分おきに実行
#resetファンクションreload後に実行(初回を除く)

schedule function pvpsigen_exit:reload 18000t replace
schedule function pvpsigen_exit:tpam_e_reset 18010t replace
schedule function pvpsigen_exit:tpam_e_disposal 18010t replace