Config = {
    Shop = {
        position = {
            {x = 233.4147 , y = -898.7830, z = 30.6999 },
            {x = -1222.84 , y = -907.0730, z = 12.32 },
            {x = -1487.64 , y = -379.14, z = 40.16 },
            {x = -707.41 , y = -914.1264, z = 19.21 },
            {x = 1163.41 , y = -323.82, z = 69.20 },
            {x = 374.07 , y = 326.73, z = 103.56 },
            {x = 2557.458, y = 382.282, z = 108.319},
            {x = -3038.939, y = 585.954, z = 7.908},
            {x = -3241.927, y = 1001.462, z = 12.830},
            {x = 547.431, y = 2671.710, z = 42.156},
            {x = 1961.464, y = 3740.672, z = 32.343},
            {x = 2678.916, y = 3280.671, z = 55.241},
            {x = 1729.216, y = 6414.131, z = 35.037},
            {x = 1135.808, y = -982.281, z = 46.415},
            {x = -2968.243, y = 390.910, z = 15.043},
            {x = 1166.024, y = 2708.930, z = 38.157},
            {x = 1392.562, y = 3604.648, z = 34.980},
            {x = -48.519, y = -1757.514, z = 29.421},
            {x = -1820.523, y = 792.518, z = 138.118},
            {x = 1698.388, y = 4924.404, z = 42.063}
        },

        food = {
            {Label = "Pain", Name = "bread", Price = 12},
            {Label = "Pasta Box", Name = "pastabox", Price = 20},
        },

        drink ={
            {Label = "Eau", Name = "water", Price = 10},
            {Label = "Fruit Shoot", Name = "fruitshoot", Price = 13},
            {Label = "Capri Sun", Name = "caprisun", Price = 15},
        },

        num ={
            {Label = "Téléphone", Name = "phone", Price = 300},
            {Label = "Carte Sim", Name = "sim", Price = 100},
        }
    },

    BlipName = 'Superette', -- Nom du blip
    BlipId = 52, -- Id du blip voir: https://wiki.gtanet.work/index.php?title=Blips
    BlipTaille = 0.6, -- Taille du blip
    BlipCouleur = 2, -- Couleur du blip voir: https://wiki.gtanet.work/index.php?title=Blips
    BlipRange = true, -- Garder le blip sur la map (true = désactiver, false = activé)


    MarkerType = 2, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/ (-1 est une valeur négative donc pas de marker car utilisation du ped)
    MarkerSizeLargeur = 0.3, -- Largeur du marker
    MarkerSizeEpaisseur = 0.3, -- Épaisseur du marker
    MarkerSizeHauteur = 0.3, -- Hauteur du marker
    MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
    MarkerColorR = 0, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerColorG = 255, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerColorB = 0, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerOpacite = 180, -- Opacité du marker (min: 0, max: 255)
    MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
    MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)

    Text = "Appuyer sur ~g~[E] ~s~pour ouvrir le ~g~magasin ~s~!" -- Texte liée au marker
}