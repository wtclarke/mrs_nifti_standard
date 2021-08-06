What's in the header extension?
===============================

Required metadata
-----------------
Two pieces of information are required to make a legal NIfTI-MRS file:

#. The spectrometer frequency - stored in MHz
#. The resonant nucleus - stored as a code (1H, 31P etc.)

Both appear as JSON arrays as MRS experiments can have more than one associated nuclei.

One other piece of the puzzle is needed, the dwell time. However this is stored in the element of the  NIfTI file header field :code:`pixdim` corresponding to the time domain dimension. This is the 5th element :code:`pixdim[4]` as the 1st is used for an alternative use. 

Dimension metadata
------------------
This metadata is required to identify the purpose of one of the higher encoding dimensions (the 5th-7th dimensions). More information can be found on the page on...

Standard defined metadata
-------------------------

User defined metadata
---------------------