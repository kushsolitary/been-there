backgroundLayer = new BackgroundLayer
	backgroundColor: '#f2f2f2'

Framer.Defaults.Animation = {
	curve: "spring(200,25,0)"
}

# Framer.Device.contentScale = 0.853;

Framer.Device.deviceType = "iphone-6-spacegray"

# This imports all the layers for "Configuration" into configurationLayers2
s = Framer.Importer.load "imported/Kush"

scroll = new Layer()
scroll.x = 0
scroll.y = s.timeline.y - 160
scroll.width = 375*2
scroll.height = 1090
scroll.backgroundColor = 'transparent'

s.timeline.superLayer = scroll
scroll.scroll = true
scroll.scrollVertical = true
scroll.scrollHorizontal = false

s.timeline.y = 130;
s.title.y = 134

scroll.on Events.Scroll, (event, layer) ->

	s.title.y = Utils.modulate(layer.scrollY, [0, 135], [134, 66], true);
	s.title.scale = Utils.modulate(layer.scrollY, [0, 135], [1, 0.7083], true);
