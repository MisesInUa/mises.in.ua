THEME=hugo-geo
BUILD_DIR=~/lep_build

build: clean
	hugo -d $(BUILD_DIR) --theme=$(THEME) --buildDrafts

server:
	hugo server --theme=$(THEME) --buildDrafts

clean:
	rm -rf $(BUILD_DIR)/*
