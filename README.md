Traffic Monitoring and Analysis System - TMAS


Created by:  Alexander Tkaczyk-Harrison

Created for: Goldsmtihs, University of London

Structure of this document: File name, followed by a description of what it does

The output of this program can be found at: https://drive.google.com/open?id=1SvbkBgZbQovGNifdobwNT7C9BAvff11t

Files:

TMAS_analysis.pde (written in Processing) -
~This is the visualisation part of TMAS.
~Alot of repetative code, mostly loading the data, simplifying it, and then passing it between functions. 
~The last section is what draws the ellipses.

TMAS_monitoring.ipynb (written in Python) - 
~This is the monitoring part of TMAS. 
~Designed to detect vehicles, and log them into a data base when they are inside a central part
of the screen. 
~If the program crashes, run the last cell, and restart the kernal.

TakePhoto.ipynb - 
~This program uses OpenCV to take a photo every 5 seconds, through a webcam, and then saves it to a directory.
~Please note: if using this program, change the count variable to what ever number your last photo was, otherwise it will overwrite itself. 
~Also please note: after interrupting the program, execute the capture.release() and cv2.destroyAllWindows() cell, otherwise you will have to restart the kernal. 

tiny-yolo.cfg & tiny-yolo-4c.cfg ;
~Custom confuguration files for the YOLO Object Detector 
