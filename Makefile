publish:
	python gen.py
	cp CNAME google1c4a19302d3916a2.html dist/
	cd dist && git init && git config user.name 'chihweihsu' && git config user.email 'switchxu@gmail.com' && git add . && git commit -m 'Auto publisher' && git push --force --quiet "git@github.com:HsuChihwei/Hsu-Home.git" master:gh-pages > /dev/null 2>&1
	rm -rf dist
