%code de VILLATTE, Berangere et BIGRAS, Charlotte


AssertOpenGL %version compatible de psychtoolbox avec GL

screens=Screen('screens'); %repere les ecrans
screenNumber=max(screens); %cherche ecran secondaire
Screen('Preference', 'SkipSyncTests', 1); 

%Pour s'adapter a� tous les ecrans
rect = Screen(screenNumber,'Rect');
hz=Screen('FrameRate', screens); %creer une frequence d'image

% Display instructions
couleur_ecran=[49 140 231];%Ecran bleu 
[w, rect]=Screen('OpenWindow',screenNumber, couleur_ecran); %ouvre l'ecran

% Dessiner un rectangle blanc au centre
% Determiner dimension et position du rectangle
x1=rect(3)/4;
y1=rect(4)/4;
x2=x1*3;
y2=y1*3;
% Dessiner le rectangle blanc au centre
Screen('FillRect', w, [255 255 255], [x1, y1, x2, y2]);

%Afficher un welcome text
welcometext = ['Vous aller devoir effectuer une t�che arythm�tique :', char(10),...
    char(10),'Prenez le chiffre 1022 et soustrayez 13, puis soustrayez encore 13, et ainsi de suite.', char(10), char(10),'A chaque fois, vous n''aurez que 7.5 secondes pour repondre.',char(10),'Il est donc important que vous soyez rapide et pr�cis, puisque s''il y a une erreur, vous devrez recommencer � 1022.'],char(10),char(10),char(10),char(10),'Appuyez sur une touche pour continuer';
DrawFormattedText(w, welcometext,'center','center',[0 0 0]);

% 
% WaitSecs(1);
% secs(1)=GetSecs;
% [secs(2), keyCode, deltaSecs]=KbWait([],secs(1)+10);%on a 10 secondes apres start pour appuyer sur une touche
% delay=secs(2)-secs(1)


% %Definir le centre
% xCenter = round(rect(3)/2);
% yCenter = round(rect(4)/2);
% % [normBoundsRect, offsetBoundsRect]= Screen('TextBounds', w, welcometext, xCenter, yCenter);
% % offsetX = (offsetBoundsRect(3)-offsetBoundsRect(1))/2;
% % offsetY = (offsetBoundsRect(4)-offsetBoundsRect(2))/2;
% % Screen('DrawText', w, welcometext, xCenter-offsetX, yCenter-offsetY);

Screen('Flip', w);
WaitSecs(4);
% clear Screen screens
sca
% % Open or close a window or texture, suite
% textureIndex=Screen('MakeTexture', WindowIndex, imageMatrix [, optimizeForDrawAngle=0] [, specialFlags=0] [, floatprecision=0] [, textureOrientation=0] [, textureShader=0]);
 
% Instruction_1= 'Vous aller devoir effectuer une t�che arythm�tique : \nPrenez le chiffre 1022 et soustrayez 13, puis soustrayez encore 13, et ainsi de suite. A chaque fois, vous n''aurez que 7.5 secondes pour repondre. Il est donc important que vous soyez rapide et pr�cis, puisque s?il y a une erreur, vous devrez recommencer � 1022.'
% Instruction_2=