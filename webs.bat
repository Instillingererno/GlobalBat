@ECHO off

SET INPUT=%*

START chrome https://google.com/search?q="%INPUT%"
