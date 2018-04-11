workon py3tifl

cd ~

wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.1.0.zip

unzip opencv.zip

wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.1.0.zip

unzip opencv_contrib.zip

cd ~/opencv-3.1.0/

mkdir build

cd build

cmake -D BUILD_TIFF=ON \
-D BUILD_opencv_java=OFF \
-D WITH_CUDA=OFF \
-D ENABLE_AVX=ON \
-D WITH_OPENGL=ON \
-D WITH_OPENCL=ON \
-D WITH_IPP=OFF \
-D WITH_TBB=ON \
-D WITH_FFMPEG=1 \
-D WITH_EIGEN=ON \
-D WITH_V4L=ON \
-D WITH_VTK=OFF \
-D BUILD_TESTS=OFF \
-D BUILD_PERF_TESTS=OFF \
-D CMAKE_BUILD_TYPE=RELEASE \
-D OPENCV_EXTRA_MODULES_PATH=/home/zquangu112z/opencv_contrib-3.1.0/modules \
-D CMAKE_INSTALL_PREFIX=$(python -c "import sys; print(sys.prefix)") \
-D PYTHON3_EXECUTABLE=$(which python) \
-D PYTHON3_INCLUDE_DIR=$(python -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())") \
-D PYTHON_DEFAULT_EXECUTABLE=$(which python3) \
-D PYTHON3_PACKAGES_PATH=$(python -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())") ..

make -j4

make clean

make

sudo make install

sudo ldconfig
