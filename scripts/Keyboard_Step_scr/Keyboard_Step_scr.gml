function Keyboard_Step_scr() {
    var key_left  = global.windows_key_data[? "key_left"];
    var key_down  = global.windows_key_data[? "key_down"];
    var key_up    = global.windows_key_data[? "key_up"];
    var key_right = global.windows_key_data[? "key_right"];

    var held_left  = keyboard_check(key_left)  || keyboard_check(ord("A"));
    var held_down  = keyboard_check(key_down)  || keyboard_check(ord("S"));
    var held_up    = keyboard_check(key_up)    || keyboard_check(ord("W"));
    var held_right = keyboard_check(key_right) || keyboard_check(ord("D"));

    global.windows_key_data[? "left"]  = held_left;
    global.windows_key_data[? "down"]  = held_down;
    global.windows_key_data[? "up"]    = held_up;
    global.windows_key_data[? "right"] = held_right;

    global.windows_key_data[? "left_pressed"]   = keyboard_check_pressed(key_left)  || keyboard_check_pressed(ord("A"));
    global.windows_key_data[? "down_pressed"]   = keyboard_check_pressed(key_down)  || keyboard_check_pressed(ord("S"));
    global.windows_key_data[? "up_pressed"]     = keyboard_check_pressed(key_up)    || keyboard_check_pressed(ord("W"));
    global.windows_key_data[? "right_pressed"]  = keyboard_check_pressed(key_right) || keyboard_check_pressed(ord("D"));

    global.windows_key_data[? "left_released"]  = keyboard_check_released(key_left)  || keyboard_check_released(ord("A"));
    global.windows_key_data[? "down_released"]  = keyboard_check_released(key_down)  || keyboard_check_released(ord("S"));
    global.windows_key_data[? "up_released"]    = keyboard_check_released(key_up)    || keyboard_check_released(ord("W"));
    global.windows_key_data[? "right_released"] = keyboard_check_released(key_right) || keyboard_check_released(ord("D"));
}