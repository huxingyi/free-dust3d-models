convert \
    -page +0+0 models/anteater/anteater-render.png \
    -page +100+0 models/ant/ant-render.png \
    -page +200+0 models/panda/panda-render.png \
    -page +300+0 models/bottle/bottle-render.png \
    -page +400+0 models/elephant/elephant-render.png \
    -page +500+0 models/toad/toad-render.png \
    -page +600+0 models/hotdog/hotdog-render.png \
    -page +700+0 models/guitar/guitar-render.png \
    -page +800+0 models/webcam/webcam-render.png \
    -page +900+0 models/plant/plant-render.png \
    -page +1000+0 models/wires/wires-render.png \
    -page +1100+0 models/head/head-render.png \
    -page +1200+0 models/female/female-render.png \
-background transparent -layers mosaic +repage free-dust3d-models.png

convert free-dust3d-models.png \
     \( +clone  -alpha extract \
        -draw 'fill black polygon 0,0 0,9 9,0 fill white circle 9,9 9,0' \
        \( +clone -flip \) -compose Multiply -composite \
        \( +clone -flop \) -compose Multiply -composite \
     \) -alpha off -compose CopyOpacity -composite  free-dust3d-models.png
