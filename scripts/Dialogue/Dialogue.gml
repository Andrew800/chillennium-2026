function create_dialog(_messages) {
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialog);
    _inst.messages = _messages;
    _inst.current_message = 0;
}

char_colors = {
    "Congrats": c_yellow,
    "Seb" : c_yellow,
    "John" : c_aqua
}

tutorial_end = [
{
    name: "Seb",
    msg: "Aye! It's me again! Miss me? Of course you do!\nAnyways, teleporting you to the main game now! Bye!"
}
]

welcome_dialog = [
{
    name: "Seb",
    msg: "Whaddup bros."
},

{
    name: "John",
    msg: "You again?"
},

{
    name: "Seb",
    msg: "Welcome to my dungeon! I've been here for 3 decades now!"
},

{
    name: "John",
    msg: "(What a loser....)"
},

{
    name: "Seb",
    msg: "Oh yeah, my girlfriend is missing in this cave. Could you find her for me? Thanks"
},
]

tutorial_dialog = [
{
    name: "Seb",
    msg: "Welcome to the Game! My name is Chillenium Sebastian! Seb for short."
},

{
    name: "Seb",
    msg: "Oh yeah! You probably have the walking down but I'll just tell ya anyways! Use the Arrow Keys to move around the map. Haha, I know. I'm so useful."
},

{
    name: "Seb",
    msg: "Two more things, use the Spacebar to attack enemies and [2] for a speed boost. That should basically be it. Anyways, goodbye!"
},
]