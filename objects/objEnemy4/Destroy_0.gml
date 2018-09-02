if (random(100) >=25) item = objHealth;
else item = objEnergy;
instance_create_layer(x, y, "Instances", item);