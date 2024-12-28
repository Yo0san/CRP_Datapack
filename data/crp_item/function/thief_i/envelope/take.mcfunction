data merge storage crp:envelope {enve_money:1b} 
execute store result storage crp:envelope enve_money int 3 run random roll 0..2
function crp_item:thief_i/envelope/get with storage crp_item enve_money