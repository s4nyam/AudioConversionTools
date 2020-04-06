for i in *.mp3;
  do name=`echo $i | cut -d'.' -f1`;
  echo $name;
  ffmpeg -i "$i" -ac 2 -codec:a libmp3lame -b:a 48k -ar 16000 "${name}${name}".mp3
done