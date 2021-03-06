function cline = trova_info(strdatrovare,nf)

% TROVA_INFO This function is used to find a specified string in the file
%            indicated by nf. This is how the user input, written in .txt
%            files generated by the GUI, is imported to Matlab for further
%            processing
%
% INPUTS     stratrovare: Sting to be found
%            nf:          File identifier of the file in question
%
% OUTPUTS    cline:       String containing the line of file with the
%                         stratrovare sting

nrew    = 0; 
trovato = 0;

while nrew < 2
    while trovato == 0
        
        cline = fgetl(nf);
        if ~ischar(cline)
            trovato = 1;
        end
        
        if not(isempty(strfind(cline,strdatrovare))) && cline(1) == strdatrovare(1)
            trovato = 1; 
            nrew    = 3;
        end
    end
    
    if ~ischar(cline)
        frewind(nf);
        nrew    = nrew + 1;
        trovato = 0;
    end
end
if nrew == 2
    cline = [];
    %error('Sorry, unable to find Your string :-(');
end