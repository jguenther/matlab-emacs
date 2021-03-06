function emacsdocomplete(substring)
% Ask for completions of SUBSTRING from MATLAB.
% This is used by Emacs TAB in matlab-shell to provide possible
% completions.  This hides the differences between versions
% for the calls needed to do completions.

    v = ver('MATLAB');

    
    if str2double(v.Version) < 8.4
        
        % Pre R2014b: partial_string
        
    else        
        
        % Post R2014b: partial_string, caret, num
        extracmd = [ ', ' num2str(length(substring)) ',0' ];

        % DEV NOTE: If you find a test failure, contact Eric Ludlam
        % to also update matlab-emacs SF repository.
        
    end

    command = [ 'matlabMCRprocess_emacs = com.mathworks.jmi.MatlabMCR;' ...
                'emacs_completions_output = matlabMCRprocess_emacs.mtFindAllTabCompletions(''' ...
                substring '''' extracmd '),' ...
                'clear(''matlabMCRprocess_emacs'',''emacs_completions_output'');' ];

    % Completion engine needs to run in the base workspace to know
    % what the variables you have to work with are.
    evalin('base',command);
    
end