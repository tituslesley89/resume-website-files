set -e                                                                                                                                                                                                                                  

hugo
rm -rf ../resume-website/*
cp -r ./public/* ../resume-website/
