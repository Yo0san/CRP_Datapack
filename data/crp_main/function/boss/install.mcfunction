bossbar add thief_bossbar [{"text":"\uE101"},{"text": "\uF822"},{"translate":"Time: "},{"score": {"name":"$time","objective":"time" }},{"translate": "sec"},{"text": "\uF824"},{"text": "\uE102"},{"text": "\uF822"},{"translate": "Thief: "},{"score": {"name": "$thief","objective": "player"}}] 
bossbar set thief_bossbar value 100
bossbar set thief_bossbar players @a[team=thief]
bossbar set thief_bossbar color red
bossbar add guard_bossbar [{"text":"\uE101"},{"text": "\uF822"},{"translate": "Time: "},{"score": {"name": "$time","objective": "time"}},{"translate": "sec"}]
bossbar set guard_bossbar value 100
bossbar set guard_bossbar players @a[team=guard]
bossbar set guard_bossbar color blue