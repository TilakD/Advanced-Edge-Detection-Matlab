 cface1 = imread('cyclone.jpg'); 
 cface2 = imread('cyclone.jpg'); 
 thresh = [0.1 0.11];
 
 gface1 = rgb2gray(cface1);
 gface2 = rgb2gray(cface2);
 
 L = medfilt2( gface1,[15 15]);
 M = medfilt2( gface2,[17 17]);
 
 subplot(241);
 imshow(gface1); 
 subplot(242);
 imshow(L); 
 edgface1 = edge(L,'canny',thresh);
 subplot(243);
 imshow(edgface1);
 subplot(244);
 imhist(edgface1);

 subplot(245);
 imshow(gface2); 
 subplot(246);
 imshow(M);
 edgface2 = edge(M,'canny',thresh);
 subplot(247);
 imshow(edgface2); 
 subplot(248);
 imhist(edgface2);

 
 
 
 