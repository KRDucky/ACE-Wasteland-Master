_pos = getpos player;
_dir = getdir player;
player switchMove "RepairingKneel";
hint "Building (20 Seconds)";
player removeaction EngiMenu;
player allowdamage false;
sleep 20;
player allowdamage true;
EngiMenu = player addaction [("<t color=""#0101DF"">" + ("Engineer Menu") +"</t>"),"EF\EngiMenu.sqf", "", 1, false, false, "", "_target == _this"];
hint "";
player switchMove "";
detach MGNestSpot;
deletevehicle MGNestSpot;
sleep 0.1;
_object = "WarfareBMGNest_M240_US_EP1" createvehicle (_pos);
_object setdir (getdir player);
_object setpos (player modelToWorld [0,3, ((position player) select 2)]);
hint "MG Nest created.";
sleep 2;
hint "";
player removemagazine "ACE_DogTag";