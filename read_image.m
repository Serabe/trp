function [ img ] = read_image( path )
%READ_IMAGE Reads and "binarize"
%   Since given images are not binary, this reads and applies a binary
%   filter.

    img = imread(path) > 128;
end

