_pos = getpos player;
_dir = getdir player;
player switchMove "RepairingKneel";
hint "Building (20 Seconds)";
player removeaction EngiMenu;
player allowdamage false;
sleep 1;
player allowdamage true;
EngiMenu = player addaction [("<t color=""#0101DF"">" + ("Engineer Menu") +"</t>"),"EF\EngiMenu.sqf", "", 1, false, false, "", "_target == _this"];
hint "";
player switchMove "";
detach BarracksSpot;
deletevehicle BarracksSpot;
sleep 0.1;
_object = "Land_Barrack2_EP1" createvehicle (_pos);
_object setdir (getdir player);
_object setpos (player modelToWorld [0,6, ((position player) select 2)]);
hint "Barrackss created.";
sleep 2;
hint "";
player removemagazine "ACE_DogTag";