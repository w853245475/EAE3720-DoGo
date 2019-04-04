//Used for dev so random numbers are really random
randomize();
//This sets up our reward map, which maps the Y1 value to the winning sprite
rewardMap = ds_map_create();  
//The mapping is equal to the beginning pixel for each sprite on the sprite slot sheet
ds_map_add(rewardMap, 0, icon1);
ds_map_add(rewardMap, 64, icon2);
ds_map_add(rewardMap, 128, icon3);
//Setting that we are NOT currently showing a reward
showingReward = false;