!
! THIS COM FILE WILL ASSEMBLE ALL SOURCE FILES
! THEN LINK TOGETHER ALL OBJ FILES
!
! IT WILL PRODUCE FILE: LIBER.LDA
! THIS IS THE FINAL PROGRAM LOAD FILE
!
$ SET NOON
$ @ASMLIB
$ @LIBLNK
$ EXIT
                                                                                                                                                                                                                                                                                                               