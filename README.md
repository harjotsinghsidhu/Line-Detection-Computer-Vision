# Line-Detection-Computer-Vision

Use of Computer Vision theory and application to detect lines in selected images through Hough trasnformation. Applicable to real world engineering industries: autonomous automotive vehicle's where line detection is needed for level 2+ of autonomous driving. 

There are five steps that I used for the line detection:

  1. The first is selecting and uploading a RGB image and transforming it to a grayscale image. This helps with identifying edges and corners. 
  2. The second step is using Gaussian filtering. This causes a Gaussian blur that will smoooth out the image with the addition of Gaussian noise. The noise will help        reduce detail and smooth interpolatin between the pixels. The bigger kernel size will equate to more blur of the image.
  3. The third step is the edge detection. The edges are detected based off the drop off or change between teh pixel brightness. I used Canny edge detection and Sobel        edge Detection. There will be a distinguishable graininess. For my selected image, the Sobel edge detection did a better job detecting edges.
  4. The fourth step is the Hough line detection. The Hough transofmration will extract line segments from the image by a voting procedure in the parameter space. The        Hough peaks is a matrix that has the row and column coordinates of the transofrmation bin. I displayed the peaks through a separate figure. 
  5. The fifth step is putting these steps together and display the results. The results showed the lines detected, however the image that I chose was in a plane of view      that was not ideal. 
  
  In conclusion, the Hough transformation was successful in detecting the lines in selected static images. With better images, more lines will be detected, but the application still remains the same. The industry application that is used daily by many is a car's lane detection and blind spot feature. 
