!
! THIS COM FILE WILL ASSEMBLE ALL MODULES OF
! LIBERATOR AND CREATE *.OBJ FILES FOR EACH
!
! USE @LIBLNK TO LINK ALL PIECES TOGETHER
!
$ SET NOON
$ ASS [] VX5:
$ @ASMBLE LBMAIN
$ @ASMBLE LBSND
$ @ASMBLE LBCOIN
$ @ASMBLE LBPIX
$ @ASMBLE LBDSP
$ @ASMBLE LBEAR
$ @ASMBLE LBIRQ
$ EXIT
                                                                                                                                                                                                                     