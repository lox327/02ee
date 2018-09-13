/*if (random(100) >=25) item = objHealth;
else item = objEnergy;
instance_create_layer(x, y, "Instances", item);*/

item = "";
var rand = random(100);

if (rand > 0 && rand <= 20) item = objHealth;
else if (rand > 20 && rand <= 40) item = objEnergy;
else if (rand > 40 && rand <= 60) item = objArtifact;
if (item != "") instance_create_layer(x, y, "Instances", item);