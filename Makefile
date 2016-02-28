THEME=hugo-geo
BUILD_DIR=~/lep_build

build:
	hugo -d $(BUILD_DIR) --theme=$(THEME) --buildDrafts

server:
	hugo server --theme=$(THEME) --buildDrafts
