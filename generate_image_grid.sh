convert \
    -page +0+0 models/anteater/anteater-render.png \
    -page +100+0 models/ant/ant-render.png \
    -page +200+0 models/panda/panda-render.png \
-background transparent -layers mosaic +repage free-dust3d-models.png

convert free-dust3d-models.png \
     \( +clone  -alpha extract \
        -draw 'fill black polygon 0,0 0,9 9,0 fill white circle 9,9 9,0' \
        \( +clone -flip \) -compose Multiply -composite \
        \( +clone -flop \) -compose Multiply -composite \
     \) -alpha off -compose CopyOpacity -composite  free-dust3d-models.png
