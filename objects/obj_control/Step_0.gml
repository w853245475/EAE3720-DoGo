/// @description Control of the game
//Analyze current state of the game
switch(int_state){
    //Beginning of the round
    case 0:	
    switch(int_subState){
        //Take poker chips for this round (We win 20 chips if we win the round), but bet 10 every round
        case 0:
        if (alarm[0] == -1){
			if(int_chips <= 0){
				if (noMoneybox == noone)
				{
					noMoneybox = instance_create_layer(100, 500, "Text", O_TextBox);
					noMoneybox.text = text;
					noMoneybox.creator = self;
					noMoneybox.name = name;
				}
				
				score = int_chips;									
				int_state = 4;
				break;
			}
			
			
            if (int_round != 3){//Keep betting if the game is less than 3 rounds  

                int_round ++;
                int_chips -= 10;//Take poker chips
                int_subState ++;//Move onto next substate
            }else{
				O_GameManager.beforeGamb = false;
				score = int_chips;
                instance_create(room_width / 2, room_height / 2 + 15, obj_Finished);//Create the exclaimation 'You Lose!' in the center
                instance_destroy();//Destroy self
				
				//room_goto(Shop_Room);
				
				O_Transition.state = "CASINO TO SHOP";
            }
        }
        break;
        //Deal out cards
        case 1:
        if (alarm[0] == -1){//Don't create any cards while alarm[0] is bigger than -1 (Which it is by default unless we set it)
            var a = instance_number(obj_card);
            int_depth --;
            switch(a){
                case 0:
                //My card
                with(instance_create(room_width / 2 - 35, room_height - 100, obj_card)){//Create the card
                    int_team = 0;//Whose card is this? The dealers or mine?
                    int_type = global.list_deck[| 0];//This is the type of card
                    depth = other.int_depth;//Make the depth the same as our int_depth variable
                    image_index = int_type;//Make the image index match this value
                    ds_list_delete(global.list_deck, 0);//Make sure to delete the card from the top of the list (we don't want to see this card twice)
                }
                alarm[0] = 20;
                break;
                case 1:
                //Dealer card
                with(instance_create(room_width / 2 - 35, 150, obj_card)){
                    int_team = 1;
                    int_type = global.list_deck[| 0];
                    depth = other.int_depth;
                    image_index = int_type;
                    ds_list_delete(global.list_deck, 0);
                }
                alarm[0] = 20;
                break;
                case 2:
                //Dealer's face down card
                with(instance_create(room_width / 2 - 35 + 80, 150, obj_card)){
                    int_team = 1;//The team I am on. 0 for player and 1 for dealer
                    int_type = global.list_deck[| 0];//This is the value of the card at the top of the list
                    depth = other.int_depth;//Make the depth higher than the card below it
                    image_index = 52;//Make the card look face down
                    image_xscale = -1;//We intentionally flip the image xscale while its face down because when we flip it it will be image_xscale = -1 (Looks correct doing it this way)
                    ds_list_delete(global.list_deck, 0);//Delete this card from the top of the deck
                }
                alarm[0] = 20;
                int_subState = 0;
                int_state = 1;
                break;
            }
        }
        break;
    }
    break;
    //Analyze player input
    case 1:
    switch(int_subState){
        //Create buttons
        case 0:
        var a = 0;
        with(instance_create(room_width, room_height, obj_button)){
            int_type = 0;
        }
        with(instance_create(room_width, room_height, obj_button)){
            int_type = 1;
        }            
        with(obj_card){
            if (int_team == 0){
                var b = int_type mod 13;
                if (b <= 6){
                    a += int_type mod 13 + 2;//Number cards
                }else if (b <= 11){
                    a += 10;//Face cards
                }else{
                    a += 11;//Aces
                }         
            }
        }
        int_playerScore = a;//This is the player's score
        int_subState ++;
        break;
        //Wait for player to select a button
        case 1:
        if (mouse_check_button_released(mb_left)){
            var t = instance_position(mouse_x, mouse_y, obj_button);
            if (t > -4){
                alarm[0] = 60;//Wait a little bit
                int_subState = 0;
                switch(t.int_type){
                    //Player selected the hit button
                    case 0:
                    with(instance_create(room_width / 2, room_height / 2 + 15, obj_exclaim)){//Create the exclaimation 'HIT!' in the center of the screen
                        image_index = 0;
                    }
                    int_state = 2;
                    break;
                    //Player selected the stand button
                    case 1:
                    with(instance_create(room_width / 2, room_height / 2 + 15, obj_exclaim)){//Create the exclaimation 'STAND!' in the center of the screen
                        image_index = 1;
                    }
                    with(obj_button){//Destroy the buttons
                        instance_destroy();
                    }
                    int_state = 3;
                    break;
                }
            }
        }
        break;
    }
    break;
    //The player clicked the hit button
    case 2:
    switch(int_subState){
        //Send out a card to the player
        case 0:
        if (alarm[0] == -1){
            with(instance_create(room_width / 2 - 35 + int_playerXOffset, 150, obj_card)){//Create card to send down to the player
                int_team = 0;
                int_type = global.list_deck[| 0];
                depth = other.int_depth;
                image_index = int_type;
                ds_list_delete(global.list_deck, 0);
                speed = 10;
                direction = 270;
            }
            with(obj_button){//Destroy all the buttons
                instance_destroy();
            }
            alarm[0] = 60;//Wait this long before being able to access the next state
            int_depth --;//Decrease depth so cards appear in front of one another to the player
            int_playerXOffset += 25;//Offset this value so cards fall next to eachother instead of over one another
            int_subState ++;//Go to next sub state
        }
        break;
        //Analyze the player score
        case 1:
        if (alarm[0] == -1){
            var a = 0;
            with(obj_card){
                if (int_team == 0){
                    var b = int_type mod 13;
                    if (b <= 8){
                        a += int_type mod 13 + 2;//Number cards
                    }else if (b <= 11){
                        a += 10;//Face cards
                    }else{
                        a += 11;//Aces
                    }         
                }
            }
            int_playerScore = a;//Save the players score as int_playerScore, we are now going to draw it in the draw event
            if (a <= 21){
                int_subState = 0;
                int_state = 1;//Return to the hit/stand phase
            }else{
                with(instance_create(room_width / 2, room_height / 2 + 15, obj_exclaim)){//Create the exclaimation 'BUSTED!' in the center of the screen
                    image_index = 2;
                }
                alarm[0] = 60;
                int_subState ++;//We busted
            }
        }
        break;
        //Wait for the new round
        case 2:
        if (alarm[0] == -1){
            with(obj_card){//Destroy cards
                instance_destroy();
            }
            alarm[0] = 60;//Go back to the beginning
            int_playerScore = -1;
            int_playerXOffset = 25;
            int_subState = 0;
            int_state = 0;
        }
        break;
    }
    break;
    //Player hit the 'STAND' button    
    case 3:
    switch(int_subState){
        //Flip the dealer overturned card over
        case 0:
        if (alarm[0] == -1){
            with(obj_card){
                if (image_index == 52){
                    b_flip = true;
                }
            }
            alarm[0] = 60;
            int_subState ++;
        }
        break;
        //Analyze dealer score
        case 1:
        if (alarm[0] == -1){
            var a = 0;
            with(obj_card){
                if (int_team == 1){
                    var b = int_type mod 13;
                    if (b <= 8){
                        a += int_type mod 13 + 2;//Number cards
                    }else if (b <= 11){
                        a += 10;//Face cards
                    }else{
                        a += 11;//Aces
                    }         
                }
            }
            alarm[0] = 60;
            int_dealerScore = a;//Obtain the dealers score
            int_dealerXOffset += 25;
            int_subState ++;
        }
        break;
        //Analyze dealers score
        case 2:
        if (alarm[0] == -1){            
            if (int_dealerScore < int_playerScore){//See if my score is less than the players score
                if (int_dealerScore < 20){//If so, check to see if it is less than 17, if so go ahead anc create another card
                    with(instance_create(room_width / 2 - 35 + 80 + int_dealerXOffset, 150, obj_card)){
                        int_team = 1;//The team I am on. 0 for player and 1 for dealer
                        int_type = global.list_deck[| 0];//This is the value of the card at the top of the list
                        depth = other.int_depth;//Make the depth higher than the card below it
                        image_index = 52;//Make the card look face down
                        image_xscale = -1;//We intentionally flip the image xscale while its face down because when we flip it it will be image_xscale = -1 (Looks correct doing it this way)
                        b_flip = true;
                        ds_list_delete(global.list_deck, 0);//Delete this card from the top of the deck
                    }
                    int_depth --;
                    int_subState = 0;
                }else{//My score is higher than 17 but lower than the player's score, so the player wins
                    with(instance_create(room_width / 2, room_height / 2 + 15, obj_exclaim)){//Create the exclaimation 'YOU WIN!' in the center of the screen
                        image_index = 3;
                    }
                    int_chips += 20;//Add 20 chips to our winnings (We bet 10 with every hand)
                }
            }else{
                if (int_dealerScore <= 21){
                    with(instance_create(room_width / 2, room_height / 2 + 15, obj_exclaim)){//Create the exclaimation 'YOU LOSE!' in the center of the screen
                        image_index = 4;
                    }
                }else{
                    with(instance_create(room_width / 2, room_height / 2 + 15, obj_exclaim)){//Create the exclaimation 'YOU WIN!' in the center of the screen
                        image_index = 3;
                    }
                    int_chips += 20;//Add 20 chips to our winnings (We bet 10 with every hand)
                }
            }
            int_subState ++;//Move onto the next state
            alarm[0] = 60;
        }
        break;
        //Wait for the new round
        case 3:
        if (alarm[0] == -1){
            with(obj_card){//Destroy cards
                instance_destroy();
            }
            //Clear the deck
            ds_list_clear(global.list_deck);
            //Add cards to the list (deck)
            for(var a = 0;a <= 51;a ++){
                ds_list_add(global.list_deck, a);;
            }
            //Shuffle the deck
            ds_list_shuffle(global.list_deck);
            alarm[0] = 60;//Go back to the beginning
            int_dealerScore = -1;//Reset all these stats
            int_dealerXOffset = 0;
            int_playerScore = -1;
            int_playerXOffset = 25;
            int_subState = 0;
            int_state = 0;
        }
        break;
    }
    break;
	
	//Switch to the no money state:
	case 4:
	if (alarm[0] == -1){
		if (!instance_exists(noMoneybox))
		{
			O_GameManager.beforeGamb = false;
			O_GameManager.state = "NO MONEY END";	
			
			instance_destroy();
			room_goto(1);
		}
	}
	
}

    

///Global.X and Y

global.X += keyboard_check(vk_right) - keyboard_check(vk_left);
global.Y += keyboard_check(vk_down) - keyboard_check(vk_up);