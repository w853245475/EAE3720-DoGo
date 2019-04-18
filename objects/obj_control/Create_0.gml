/// @description Settings

//Debug / development
global.X = 0;
global.Y = 0;

//Randomize seed (so that we get TRUE randomness)
randomize();

//Set all draw colour
draw_set_colour(c_white);

//Set font
//draw_set_font(fnt_lucida);

//This is the deck of cards
global.list_deck = ds_list_create();

//Add cards to the list (deck)
for(var a = 0;a <= 51;a ++){
    ds_list_add(global.list_deck, a);;
}

//Shuffle the deck
ds_list_shuffle(global.list_deck);

//What is our current state?
int_state = 0;

//What is the number of chips? If we get to 100 chips we win! If we fall to 0 we lose!
int_chips = score;

//What round is this?
int_round = 0;

//We use the subState inside of the actual state. Helps us break things down
int_subState = 0;

//This variable is used to move slightly over the x position when I give the player more cards when he hits
int_playerXOffset = 25;

//This variable is used to move slightly over the x position when I give the dealer more cards when he hits
int_dealerXOffset = 0;

//We use this when we give each card a lower depth (otherwise they will all fall behind other cards - which isn't normal)
int_depth = -1;

//If this number is greater than -1 we will draw it
int_playerScore = -1;

//If thi number is greater than -1 we will draw it
int_dealerScore = -1;

my_AceCard = 0;

dealer_AceCard = 0;

//Text box setting
noMoneybox = noone;
name = "Dog Dealer";
text[0] = "Oh, Looks Like You've Ran Out Of Your Money.";
text[1] = "Maybe You Can Come Back When You Got Some Money";


