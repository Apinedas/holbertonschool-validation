build:		## Builds a website using gohugo on the dist folder
	hugo

clean:		## Cleans the dist folder
	rm -rf dist

post:		## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
	hugo new posts/${POST_NAME}.md
	sed -i "s/title: .*/title: ${POST_TITLE}/" ./content/posts/${POST_NAME}.md

help:		## Show help mesages
	@echo "build: Builds a website using gohugo on the dist folder"
	@echo "clean: Cleans the dist folder"
	@echo "post: Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME"
	@echo "help: Shows this help"
