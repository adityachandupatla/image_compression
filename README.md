# Image Compression using K-Means

While there are a multitude of machine learning applications which make use of supervised learning, ranging from real-estate house price prediction and all the way up to image classification, unsupervised learning, is still trying hard to find novel applications. In the contemporary world, the widely used unsupervised learning applications are recommendation systems, social network analysis, market segmentation, etc. This project is geared towards the usage of <a href="https://en.wikipedia.org/wiki/K-means_clustering">K-means algorithm</a>, which is an unsupervised learning algorithm, for performing image compression. Essentially, given an input image, which probably consists of a plenitude of colors in the form pixels, we cluster the colors which are related to each other and effectively compress the image by rebuilding the image with the cluster centroids themselves. This project is implemented as part of the <a href="https://github.com/adityachandupatla/ML_Coursera">machine learning course</a> from Coursera, while I was learning the unsupervised machine learning chapter.<br/>

<b>Edit (Jan 2019)</b>: Added python implementation as a jupyter notebook (see: <a href="https://github.com/adityachandupatla/image_compression/blob/master/k-means-image-comp.ipynb">k-means-image-comp.ipynb</a>).

<h2>Running the Project</h2>
<ul>
  <li>Make sure you have Octave/MATLAB installed</li>
  <li>Clone the project to your local machine and open it in one of your favorite IDE's which supports Octave/MATLAB code</li>
  <li>Run compress.m</li>
  <li>Select the appropriate option from the menu (High compression, Low compression or custom mode)</li>
  <li><b>Note</b>: If you were to select the custom mode, then you have to specify <i>'K'</i>, which is the number of colors which you wish to see in the compressed image</li>
  <li>Input the filename which contains the image which you desire to compress</li>
  <li>K-means is now ran, and the compressed image is output. Depending upon the value of <i>'K'</i> which you choose, you might have to wait for a longer period of time. The usual time for compression is around 5-10 mins</li>
</ul>
If you find any problem deploying the project in your machine, please do let me know.

<h2>Technical Skills</h2>
This project is developed to showcase my following programming abilities:
<ul>
  <li><h3>Programming in Octave/MATLAB: </h3><p>Although R/Python is the default programming language choice for building any machine learning application, GNU Octave or MATLAB will be easier to develop new mathematical models quickly. Moreover, it is good to have new programming languages in your arsenal!</p></li>
  <li><h3>Unsupervised ML (K-means): </h3><p>While there are several state-of-the-art image compression tools available online, which arguable do a better job at compressing images, my purpose in doing this project is to explore unsupervised learning. More specifically, I craved to implement the K-means algorithm. K-means clustering is a type of unsupervised learning, which is used when you have unlabeled data (i.e., data without defined categories or groups). The goal of this algorithm is to find groups in the data, with the number of groups represented by the variable <i>'K'</i>. The algorithm works iteratively to assign each data point to one of <i>'K'</i> groups based on the features that are provided.</p></li>
</ul>

<h2>Development</h2>
<ul>
  <li>Sublimt Text has been used to program the application. No IDE has been used.</li>
  <li>Command line has been used to interact with the application.</li>
  <li>The project has been tested on Octave version: 3.8.0.</li>
</ul>

<h2>Working of K-means</h2>
<p>The K-means algorithm is a method to automatically cluster similar data examples together. Concretely, you are given a training set {x(1),...,x(m)} (where x(i) is an <i>N</i> dimensional vector), and want to group the data into a few cohesive “clusters”. The intuition behind K-means is an iterative procedure that starts by guessing the initial centroids, and then refines this guess by repeatedly assigning examples to their closest centroids and then recomputing the centroids based on the assignments.</p><br/>
<p>In each iteration of K-means, we carry out 2 steps: Assigning each training example x(i) to its closest centroid, and Recomputing the mean of each centroid using the points assigned to it. The K-means algorithm will always converge to some final set of means for the centroids. Note that the converged solution may not always be ideal and depends on the initial setting of the centroids. The solution therefore, is to run the K-means algorithm multiple times with different random initializations.</p><br/>
<p>In the “cluster assignment” phase of the K-means algorithm, the algorithm assigns every training example x(i) to its closest centroid (initially, all these centroids are randomly chosen). The assignment is done by calculating the distance between the points in <i>'N'</i> dimensional space. Given assignments of every point to a centroid, the second phase of the algorithm recomputes, for each centroid, the mean of the points that were assigned to it.</p><br/>

<h2>Applying K-means to image compression</h2>
<p>In a straightforward 24-bit color representation of an image, each pixel is represented as three 8-bit unsigned integers (ranging from 0 to 255) that specify the red, green and blue intensity values. This encoding is often refered to as the RGB encoding. To compress the image, we treat the colors in the input image as example data-points to our K-means algorithm and then, we choose <i>'K'</i>, which is the number of clusters for K-means algorithm and also which corresponds to the number of colors which we will reduce it to.</p><br/>

<h2>Results of running image compression</h2>
<p>Below, you can see 3 images of cat, the original image, an image with low compression and the image with high compression, respectively.</p><br/>
<p float="left">
  <img src="https://github.com/adityachandupatla/image_compression/blob/master/sample_images/cat.jpg" height="400" width="250" />
  <img src="https://github.com/adityachandupatla/image_compression/blob/master/sample_images/low_comp/cat.png" height="400" width="250" />
  <img src="https://github.com/adityachandupatla/image_compression/blob/master/sample_images/high_comp/cat.png" height="400" width="250" />
</p><br/>
<p>Below, you can see 3 images of dog, the original image, an image with low compression and the image with high compression, respectively.</p><br/>
<p float="left">
  <img src="https://github.com/adityachandupatla/image_compression/blob/master/sample_images/dog.jpg" height="400" width="550" />
  <img src="https://github.com/adityachandupatla/image_compression/blob/master/sample_images/low_comp/dog.png" height="400" width="550" />
  <img src="https://github.com/adityachandupatla/image_compression/blob/master/sample_images/high_comp/dog.png" height="400" width="550" />
</p><br/>

<h2>TO DO</h2>
<ul>
  <li>UI support. It would be better if the image can be dragged and dropped in a window rather than manually entering the filename.</li>
  <li>If you think that something more can be added to this project, feel free to let me know!</li>
</ul>
<br/><br/>
Use this, report bugs, raise issues and Have fun. Do whatever you want! I would love to hear your feedback :)

~ Happy Coding
