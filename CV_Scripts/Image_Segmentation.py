import cv2 as cv

img = cv.imread('images/image4.png')

#img = cv.GaussianBlur(img, (5, 5), cv.BORDER_DEFAULT)
img = cv.Canny(img, 125, 175)
img = cv.dilate(img, (5, 5), iterations=3)
img = cv.erode(img, (5, 5), iterations=1)


cv.imshow("X-RAY", img)
cv.waitKey(0)
