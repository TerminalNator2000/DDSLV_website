# Variables
HTML_FILE = Dynamic_Data_Solutions_LV.html
CSS_FILE = style.css
WEB_DIR = ./web

# Targets
.PHONY: all clean build run

# Default target
all: build

# Build target - organizes HTML and CSS into the web directory
build:
	mkdir -p $(WEB_DIR)
	cp $(HTML_FILE) $(WEB_DIR)/
	cp $(CSS_FILE) $(WEB_DIR)/

# Run target - opens the HTML file in the default browser
run: build
	@echo "Opening the website..."
	open $(WEB_DIR)/$(HTML_FILE)

# Clean target - removes the build directory
clean:
	@echo "Cleaning up..."
	rm -rf $(WEB_DIR)
