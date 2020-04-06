for i in *.mp3;
  do name=`echo $i | cut -d'.' -f1`;
  echo $name;
  ffmpeg -i "$i" -ss 00:00:05.000 -acodec copy "${name}${name}".mp3
done
