function [legend_text] = text_array(text,array)
%TEXT_ARRAY creates a list of similar strings with different numbers
               legend_text = split(sprintf(join([text,'&']),array),'&');
               legend_text = legend_text(1:end-1);
end

