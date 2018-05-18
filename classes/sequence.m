classdef sequence
    % a class for finite, real-valued sequences over the natural numbers
    properties
        elements  % elements of the sequence (sparse N-by-1 array)
    end
    methods (Access=public)
        function obj=sequence(varargin) % constructor
            if nargin==0
                obj.elements=sparse(0,0);
            end
        end
    end
end
