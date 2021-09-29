@echo off
chcp 936
copy disqus.html "D:\Python37\Lib\site-packages\material\partials\integrations\disqus.html" /Y
mkdocs build --clean