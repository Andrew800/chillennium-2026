function create_dialog(_messages){
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialog);
    _inst.messages = _messages;
    _inst.current_message = 0;
}

char_colors = {
    "Congrats": c_yellow,
    "Seb" : c_yellow,
    "Singh" : c_aqua
}

welcome_dialog = [
{
    name: "Seb",
    msg: "Whaddup bros."
},

{
    name: "Singh",
    msg: "Sup"
},

{
    name: "Seb",
    msg: "Welcome to my gooncave! I've been here for 3 decades now!"
},

{
    name: "Singh",
    msg: "(What a fucking loser....)"
},

{
    name: "Seb",
    msg: "Oh yeah, my girlfriend is missing in this cave. Could you find her for me? Thanks"
},
]