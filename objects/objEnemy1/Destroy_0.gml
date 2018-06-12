if (random(100) >=50) item = objHealth;
else item = objItem;
instance_create_layer(x, y, "Instances", item);