AssertOpenGL

screens=Screen('screens'); %repère les écrans
screenNumber=max(screens); %cherche écran secondaire
Screen('Preference', 'SkipSyncTests', 1); 

%Pour s'adapter à tous les écrans
[width_in_mm, height_in_mm]=Screen('DisplaySize', screenNumber);
resolution= Screen('Resolution', screenNumber);
pixel_in_mm = width_in_mm/resolution.width;
hz=Screen('FrameRate', screenNumber);

% ouvre l'écran. Mettre la couleur en Red Green Blue [RGB]
couleur_ecran=[49 140 231];%Ecran bleu 
[windowPtr, rect]=Screen('OpenWindow',screenNumber, couleur_ecran); 
%Determiner dimension et position du rectangle
fromH=resolution.width/4;
fromV=resolution.height/4;
toH=fromH*3;
toV=fromV*3;
%Dessiner un rectangle coin haut gauche
Screen('FillRect', windowPtr, [0 255 0], [fromH, fromV, toH, toV]);
%fonction sur écran secondaire mais pas principal même en changeant l.4 
%avec screenNumber=min(screens);
quote{1}='"Vous allez devoir répondre à plusieurs épreuves de calcul mental en 10 secondes maximum"'
[newX, newY, textHeight]=Screen('DrawText', windowPtr, quote{1}, fromH+10,fromV+10, [0 0 0]);
Screen('Flip', windowPtr);

%%laisser à la fin

WaitSecs(4);
sca;