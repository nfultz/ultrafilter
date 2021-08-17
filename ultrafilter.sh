#1/bin/bash
google-chrome --headless --user-data-dir=/home/nfultz/.config/google-chrome/ --profile-directory="Profile 1" --dump-dom "https://forums.somethingawful.com/showthread.php?threadid=3938867&goto=lastpost" > ultrafilter.html

xmlstarlet fo -H ultrafilter.html 2>/dev/null | xmlstarlet tr /home/nfultz/projects/ultrafilter/rss.xsl >test.rss

aws s3 cp test.rss s3://www.neal.news/ultrafilter4.rss

rm ultrafilter.html test.rss
