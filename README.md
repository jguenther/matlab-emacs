matlab-emacs
============

MATLAB and Emacs integration

* git-cvsimport of matlab-emacs CVS at
matlab-emacs.cvs.sourceforge.net:/cvsroot/matlab-emacs

* Import from CVS was performed using the method described at http://stackoverflow.com/questions/584522/how-to-export-revision-history-from-mercurial-or-git-to-cvs/586225#586225

* INSTALL

  Add the following to your .emacs file:

  ;; Replace path below to be where your matlab.el file is.
  (add-to-list 'load-path "~/path/to/matlab-emacs")
  (load-library "matlab-load")

  ;; Enable CEDET feature support for MATLAB code. (Optional)
  ;; (matlab-cedet-setup)


* Finding Updates

** Releases

   The most recent version of matlab.el is always in CVS.

   Category:
   http://www.mathworks.com/matlabcentral/fileexchange/loadCategory.do?objectId=19&objectType=Category
   This File
   http://www.mathworks.com/matlabcentral/fileexchange/loadFile.do?objectId=104&objectType=file

   Older versions of matlab.el can be found as matlab.el.1.10.1
   for emacsen that do not have the latest additional utilities such
   as tempo and derived.

   matlab.el and mlint.el has shipped on MATLAB CDs starting with 6.5
   (R13).  Updates after a release of MATLAB will be made to MATLAB
   Central and announced on the mailing list.

   matlab.el and mlint.el will no longer ship on MATLAB CDs starting
   with MATLAB release R2008b.  If you are using a version of MATLAB
   from before R2008a, you will want to use the version of mlint from
   that CD.

** CVS

   matlab-emacs is available via CVS from SourceForge.

   Homepage:
   http://matlab-emacs.sf.net

   Project Page:
   http://sourceforge.net/projects/matlab-emacs

   CVS Repository:
   http://sourceforge.net/cvs/?group_id=154105

   If you do not have a CVS client on your machine, you can use the
   MATLAB script dl_emacs_support.m to download a fresh copy of the
   matlab.el sources.

** Dependancies

   MATLAB-Emacs can use the CEDET suite for the following items:
	- Modifying the build system (Makefiles, etc)
	- mlint (uses EIEIO object system)
	- parsing/completion (uses semantic parsing system)
        - some template insertion features

   As of Emacs 23.2, CEDET is included in Emacs, and nothing extra
   is needed to satisfy that dependency.

   For older versions of Emacs:

   See http://cedet.sf.net for downloading CEDET.

   If you only want to use matlab.el for editing code or running the
   MATLAB shell, you DO NOT need to install CEDET.

   If you do want to use CEDET, add the following to your .emacs file:

   (matlab-cedet-setup)

* Mailing List:

** New Mailing List

   A new matlab-emacs-discuss mailing lisit has been created at
   SourceForge.  Use this list to get updates on new releases and
   discuss topics relivant to the matlab-emacs project.

   http://lists.sourceforge.net/mailman/listinfo/matlab-emacs-discuss

** Old Mailing List

   The original mailing list where beta versions of matlab.el were
   posted, and where comments, questions, bug reports, and answers to
   questions could be sent.  If you were subscribed to this list,
   please unsubscribe, and subscribe to the new list above.

   to unsubscribe, send email with the body of: "unsubscribe matlab-emacs"
