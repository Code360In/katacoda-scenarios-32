

127.0.0.1:6379> sadd players player:100 player:102 player:103
(integer) 3
127.0.0.1:6379> smembers players
1) "player:100"
2) "player:103"
3) "player:102"
127.0.0.1:6379> SET player_name_index Peter player:100
(error) ERR syntax error
127.0.0.1:6379> SET player_name_index:Peter player:100
OK
127.0.0.1:6379> SET player_name_index:Alice player:101
OK
127.0.0.1:6379> SET player_name_index:Bob player:102
OK
127.0.0.1:6379> SET play_name_index Peter player:100 Alice player:101 Bob player:102
(error) ERR syntax error
127.0.0.1:6379> HSET play_name_index Peter player:100 Alice player:101 Bob player:102
(integer) 3
127.0.0.1:6379> HGETALL player_name_index
(empty array)
127.0.0.1:6379> HSET player_name_index Peter player:100 Alice player:101 Bob player:102
(integer) 3
127.0.0.1:6379> HGETALL player_name_index
1) "Peter"
2) "player:100"
3) "Alice"
4) "player:101"
5) "Bob"
6) "player:102"