//um pouco antes do inimigo surgir, essa variável será verdadeira para sinalizar seu spawn
if (alarm[0] <= 120) { global.inimigo_spawn = true }
//quando spawnar, o aviso pode sumir
if (alarm[0] <= 0) { global.inimigo_spawn = false }

show_debug_message(alarm[0]);
show_debug_message(global.inimigo_spawn);