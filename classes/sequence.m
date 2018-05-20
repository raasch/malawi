classdef sequence
    % a class for finite, real-valued sequences over the natural numbers
    properties (Access=public)
        elements  % elements of the sequence (sparse N-by-1 array)
    end
    
    methods (Access=public)
        function obj=sequence(varargin) % constructor
            switch(nargin)
                case 0 % constructor without arguments
                    obj.elements=sparse(0,1);
                case 1 % constructor with 1 (vector) argument
                    obj.elements=clip_sparse_vector(sparse(varargin{1}));
            end
        end
        function res=plus(obj1,obj2) % overloads "+" operator
            n1=size(obj1.elements,1);
            n2=size(obj2.elements,1);
            v=sparse([obj1.elements; sparse(max(n1,n2)-n1,1)]);
            v(1:n2,1)=v(1:n2,1)+obj2.elements;
            res=sequence(clip_sparse_vector(v));
        end
        function res=minus(obj1,obj2) % overloads "-" operator
            n1=size(obj1.elements,1);
            n2=size(obj2.elements,1);
            v=sparse([obj1.elements; sparse(max(n1,n2)-n1,1)]);
            v(1:n2,1)=v(1:n2,1)-obj2.elements;
            res=sequence(clip_sparse_vector(v));
        end
    end
end
