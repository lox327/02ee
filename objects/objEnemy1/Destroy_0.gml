if (random(100) >=50) item = objHealth;
else item = objEnergy;
instance_create_layer(x, y, "Instances", item);