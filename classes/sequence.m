classdef sequence
    % a class for finite, real-valued sequences over the natural numbers
    properties
        elements  % elements of the sequence (sparse N-by-1 array)
    end
    methods (Access=public)
        function obj=sequence(varargin) % constructor
            switch(nargin)
                case 0
                    obj.elements=sparse(0,1);
                case 1
                    obj.elements=sparse(varargin{1})
            end
        end
    end
end
