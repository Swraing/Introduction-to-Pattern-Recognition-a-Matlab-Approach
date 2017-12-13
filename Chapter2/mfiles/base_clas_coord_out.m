function [y_est]=base_clas_coord_out(X,y,pos,thres,sleft)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCTION
%   [y_est]=base_clas_coord_out(X,y,pos,sleft,thres)
% Computes the output of a "stump" weak classifier generated by the 
% "base_class_coord" function, when the latter is applied on a given data set.
%
% INPUT ARGUMENTS:
%   X:      lxN matrix, each column of which is a feature vector.
%   y:      N-dimensional vector, whose i-th coordinate is the class
%           label (+1 or -1) of the class where the i-th data vector belongs
%   pos:    integer, indicating the dimension along which the
%           classification of the current weak classifier takes place
%   thres:  value of threshold on the chosen dimension for
%           the current weak classfier
%   sleft:  a variable taking the values 1 (-1) according to whether
%           the range left to the threshold is assigned to class -1 (1),
%           for the current weak classifier
%
% OUTPUT ARGUMENTS:
%   y_est:  N-dimensional vector, whose i-th coordinate is the class
%           label (1 or -1) of the class where the i-th data vector has 
%           been assigned by the classifier.
%
% (c) 2010 S. Theodoridis, A. Pikrakis, K. Koutroumbas, D. Cavouras
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

   y_est=2*((X(pos,:)-thres)*sleft>0)-1;
   