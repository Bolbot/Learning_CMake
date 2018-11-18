cmake_minimum_required(VERSION 2.8)
project(foo NONE)

set(l0 a b c)
set(l1 a;b;c)
set(l2 "a b" "c")
set(l3 "a;b;c")
set(l4 a "b;c")
set(l5 "a" "b c")
set(l6 "a" "b;c")


list(LENGTH l0 l0_len)
list(LENGTH l1 l1_len)
list(LENGTH l2 l2_len)
list(LENGTH l3 l3_len)
list(LENGTH l4 l4_len)
list(LENGTH l5 l5_len)
list(LENGTH l6 l6_len)

message("l0 = '${l0}' (len is ${l0_len})")
message("l1 = '${l1}' (len is ${l1_len})")
message("l2 = '${l2}' (len is ${l2_len})")
message("l3 = '${l3}' (len is ${l3_len})")
message("l4 = '${l4}' (len is ${l4_len})")
message("l5 = '${l5}' (len is ${l5_len})")
message("l6 = '${l6}' (len is ${l6_len})")

list(GET l6 2 l6_2)
message("l6[2] = ${l6_2}")

message("Removing first element from l5 list '${l5}' of len ${l5_len}")
list(REMOVE_AT l5 0)
list(LENGTH l5 l5_len_after)
message("After remove len of l5 is ${l5_len_after}: '${l5}'")

message("print by message: " ${l3})
message("print by message: " "a" "b" "c")
