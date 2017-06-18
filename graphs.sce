// Graphics PSNR en fonction sigma
e = 0:0.5:9.5;
psnr = [20.1581 25.2937 30.1074 31.6011 31.7330 31.3823 30.8891 30.3771 29.8840 29.4225 28.9968 28.5981 28.2306 27.8866 27.5665 27.2661 26.9824 26.7137 26.4582 26.2142];
plot(e, psnr, 'r');
xlabel("Sigma", "fontsize", 3);
ylabel("PSNR", "fontsize", 3);

//Graphics comparaison PSNR filtre linéaire/non linéaire en fonction 
// de la taille du masque.
//sigma = 0.5
n = 1:3;
psnr = 19.520354;
linearpsnr = [18.183536 18.192674 18.192683];
//Sigma = 1
n = 1:7;
psnr = 25.026930;
linearpsnr = [23.186575 24.882743 25.022424 25.026046 25.026099 25.026099 25.026099];
//Sigma = 5
n = 1:30;
psnr = 28.572885;
linearpsnr = [23.640159 27.285835 28.798730 29.331619 29.397159 29.287183 29.135084 28.981196 28.856313 28.760747 28.693638 28.644576 28.615201 28.596345 28.585334 28.579411 28.575769 28.574203 28.573425 28.573207 28.572998 28.572915 28.572896 28.572881 28.572885 28.572885 28.572885 28.572885 28.572885 28.572885];
//Sigma = 10
n = 1:60;
psnr = 25.858365;
linearpsnr = [23.637924 27.272972 28.744630 29.203680 29.163769 28.922756 28.610114 28.280212 27.968577 27.686822 27.423843 27.196004 26.990207 26.812470 26.656503 26.522309 26.405871 26.307996 26.224267 26.154529 26.095343 26.046591 26.006437 25.974032 25.948416 25.927165 25.911028 25.898224 25.888574 25.880964 25.874961 25.870863 25.867274 25.864816 25.863074 25.861667 25.860518 25.859793 25.859285 25.858925 25.858747 25.858606 25.858491 25.858445 25.858388 25.858371 25.858371 25.858370 25.858368 25.858364 25.858364 25.858364 25.858365 25.858365 25.858365 25.858365 25.858365 25.858365 25.858365 25.858365];

plot(n, abs(psnr-linearpsnr), 'r');
xlabel("Taille du masque", "fontsize", 3);
ylabel("Différence des PSNR", "fontsize", 3);

//Graphics comparaisonb temps de calcule.
x = 0.2:0.2:5.8;
gauss = [0.037500 0.035900 0.035900 0.036000 0.035900 0.035900 0.034400 0.037500 0.034400 0.037500 0.034400 0.035900 0.036000 0.037500 0.035900 0.035900 0.036000 0.034400 0.035900 0.035900 0.036000 0.035900 0.036000 0.035900 0.035900 0.036000 0.035900 0.037500 0.036000];
separable = [0.001500 0.004700 0.007800 0.006300 0.009400 0.010900 0.012500 0.014100 0.015600 0.017200 0.018700 0.021900 0.023400 0.021900 0.026600 0.028100 0.028100 0.031300 0.032800 0.035900 0.034400 0.037500 0.042200 0.043800 0.045300 0.045300 0.046900 0.048400 0.053100];
linear = [0.001500 0.007800 0.017200 0.017200 0.034400 0.056200 0.054700 0.082900 0.117200 0.115600 0.153100 0.196900 0.245300 0.242200 0.303200 0.356300 0.356200 0.421900 0.490700 0.561000 0.559400 0.646900 0.748500 0.748500 0.815600 0.917300 0.926600 1.021900 1.129800];

plot(x, gauss, 'r');
legends("Gaussien", 5, opt=5);
plot(x, separable, 'b');
legends("Separable", 2, opt=5);
plot(x, linear, 'g');
legends("Linéaire", 3, opt=5);
xlabel("Sigma", "fontsize", 3);
ylabel("Temps d exécution", "fontsize", 3);