backgroundLayer = new BackgroundLayer
	backgroundColor: '#f2f2f2'

Framer.Defaults.Animation = {
	curve: "spring(200,25,0)"
}

Framer.Device.contentScale = 0.5

Framer.Device.deviceType = "fullscreen"

# This imports all the layers for "Configuration" into configurationLayers2
s = Framer.Importer.load "imported/vivek"

s.arrow.opacity = 0;
s.arrow.y -= 50
s.arrow.animate
	properties: {opacity: 1, y: s.arrow.y + 50}

s.nav.opacity = 0;
s.nav.y = s.nav.y - 100;

s.nav.animate
	properties: {opacity: 1, y: s.nav.y + 100}

s.title.opacity = 0;
s.title.y += 50

s.cta.opacity = 0;
s.cta.y += 50

s.title.animate
	properties: {opacity: 1, y: s.title.y - 50}

s.cta.animate
	properties: {opacity: 1, y: s.cta.y - 50}
	delay: 0.2
