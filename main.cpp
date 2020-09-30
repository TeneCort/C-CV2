#include <stdio.h>
#include <opencv2/opencv.hpp>
#include <filesystem>
#include <iostream>
#include <string.h>
#include <regex>

namespace fs = std::filesystem;

using namespace cv;
using namespace std;
using recursive_directory_iterator = std::filesystem::recursive_directory_iterator;

void createDirectories();
void processImage(String readPath, String savePath);
//64x64

int main()
{

    createDirectories();

    for (const auto& dirEntry : recursive_directory_iterator("./raw"))
    {   

        std::string path = dirEntry.path().string();
        std::string name = dirEntry.path().filename().string();

        //std::cout << path << std::endl;

        std::smatch m;
        std::regex c ("\\b(CMFD/)([^ ]*)");   // matches words beginning by "CMFD"
        std::regex i ("\\b(IMFD)([^ ]*)");   // matches words beginning by "IMFD"
        std::regex f ("\\b(IMFD)([^ ]*)");   // matches words beginning by "IMFD"

        if(std::regex_search (path,m,c)){

            std::cout << path << std::endl;
            processImage(path, "./processed/grayscale/CMFD/" + name);

        }

        /*if(std::regex_search (path,m,i)){

            std::cout << path << std::endl;

            
        }*/
    }

    /*for (const auto & entry : fs::directory_iterator(path))
    {
        std::cout << entry.path().filename() << std::endl;

        Mat image;

        image = imread(entry.path()); 

        cv::Size sz = image.size();

        int imageWidth = sz.width;
        int imageHeight = sz.height;

        cv::cvtColor(image, image, COLOR_BGR2GRAY);

        Size size(imageWidth / 10, imageHeight / 10);

        resize(image, image, size);

        imwrite("./test/" + (string)entry.path().filename(), image);
    }*/

    waitKey(0);

    return 0;
}

void processImage(String readPath, String savePath){

    Mat image;
    std::string imagePath = samples::findFile(readPath);
    std::cout << imagePath << std::endl;
    std::cout << savePath << std::endl;
    image = imread(imagePath); 
    
    cv::Size sz = image.size();

    int imageWidth = sz.width;
    int imageHeight = sz.height;

    cv::cvtColor(image, image, COLOR_BGR2GRAY);

    Size size(imageWidth / 10, imageHeight / 10);

    resize(image, image, size);

    imwrite(savePath, image);
}

void createDirectories(){
    fs::create_directory("./processed");
    fs::create_directory("./processed/resize");
    fs::create_directory("./processed/resize/CMFD");
    fs::create_directory("./processed/resize/CMFD/1");
    fs::create_directory("./processed/resize/CMFD/2");
    fs::create_directory("./processed/resize/IMFD");
    fs::create_directory("./processed/resize/IMFD/1");
    fs::create_directory("./processed/resize/IMFD/2");
    fs::create_directory("./processed/grayscale");
    fs::create_directory("./processed/grayscale/CMFD");
    fs::create_directory("./processed/grayscale/CMFD/1");
    fs::create_directory("./processed/grayscale/CMFD/2");
    fs::create_directory("./processed/grayscale/IMFD");
    fs::create_directory("./processed/grayscale/IMFD/1");
    fs::create_directory("./processed/grayscale/IMFD/2");
}