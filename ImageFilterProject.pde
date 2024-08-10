
color color1 = color(random(255),   random(255),   random(255));
color color2 = color(  random(255),   random(255),   random(255));
        color color3 = color(  random(255),   random(255),   random(255));
        color color4 = color(  random(255),   random(255),   random(255));
        color color5 = color(  random(255),   random(255),   random(255));


        int AvgRGB;

        int rows = 5;
        int cols = 5;
        PImage[][] images = new PImage [rows][cols];

        void setup(){
        size(680, 680);

        noLoop();

        for (int i = 0; i < images[0].length; i++){
        for (int j = 0; j < images[0].length; j++) {
        images[i][j] = loadImage("Llama.jpg");

        images[i][j].resize(136, 136);
        }
        }

        for (int i = 0; i < images[0].length; i++){
        for (int j = 0; j < images[0].length; j++) {

        images[i][j].loadPixels();

        for (int z = 0; z < images[i][j].pixels.length; z++) {

        AvgRGB = (int) ( (red(images[i][j].pixels[z]) + green(images[i][j].pixels[z]) + blue(images[i][j].pixels[z])) / 3 );

        if (AvgRGB >= 0 && AvgRGB <= 49){
        images[i][j].pixels[z] = color1;
        } else if(AvgRGB >= 50 && AvgRGB <= 99){
        images[i][j].pixels[z] = color2;
        } else if(AvgRGB >= 100 && AvgRGB <= 149){
        images[i][j].pixels[z] = color3;
        } else if(AvgRGB >= 150 && AvgRGB <= 199){
        images[i][j].pixels[z] = color4;
        } else {
        images[i][j].pixels[z] = color5;
        }

        }
        images[i][j].updatePixels();

        color1 = color( random(255), random(255), random(255) );
        color2 = color( random(255),  random(255),  random(255) );
        color3 = color( random(255),  random(255),  random(255) );
        color4 = color( random(255),  random(255),  random(255) );
        color5 = color( random(255), random(255),  random(255) );
        }
        }
        images[0][0] = loadImage("Llama.jpg");
        images[0][0].resize(136, 136);
        }

        int xpos = 0;
        int ypos = 0;

        void draw(){

        background(255);
        for (int i = 0; i < images[0].length; i++){
        for (int j = 0; j < images[0].length; j++) {
        image(images[i][j], xpos, ypos);
        xpos += 136;
        }
        xpos = 0;
        ypos += 136;
        }
        }
