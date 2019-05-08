Traffic Monitoring and Analysis System - TMAS

Created by:  Alexander Tkaczyk-Harrison
Created for: Goldsmtihs University of London

Structure of this document: File name, followed by a description of what it does

Files:

TMAS_monitoring.ipynb - 
~This is the monitoring part of TMAS. 
~Designed to detect vehicles, and log them into a data base when they are inside a central part
of the screen. 
~If the program crashes, run the last cell, and restart the kernal.

TakePhoto.ipynb - 
~This program uses OpenCV to take a photo every 5 seconds, through a webcam, and then saves it to a directory.
~Please note: if using this program, change the count variable to what ever number your last photo was, otherwise it will overwrite itself. 
~Also please note: after interrupting the program, execute the capture.release() and cv2.destroyAllWindows() cell, otherwise you will have to restart the kernal. 
