# maps and leaflet package for colored map



preload("maps")
preload("leaflet")

# Load state geo information
mapStates = map("state", fill = TRUE, plot = FALSE)

# create US states map
leaflet(data = mapStates) %>% addTiles() %>% 
  addPolygons(fillColor = topo.colors(10, alpha = NULL), stroke = FALSE)