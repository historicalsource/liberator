$  FN := 'P1'
$ OPEN/WRITE RT ASMTMP.COM
$ SET NOON
$ WRITE RT "$ RT"
$ WRITE RT "R FORMAC"
$ WRITE RT "VX5:LBTMP.MAC=VX5:''FN'.MAC"
$ WRITE RT "R MAC65"
$ WRITE RT "VX5:''FN',VX5:''FN'.LST=VX5:LBTMP/C"
$ WRITE RT "$ EXIT $STATUS"
$ CLOSE RT
$ @ASMTMP
$ IF $STATUS THEN GOTO OK
$ WRITE SYS$OUTPUT "ASSEMBLY FINISHED WITH ERRORS...."
$ OK:
$ DEL LBTMP.MAC;
$ DEL ASMTMP.COM;
$ EXIT
                                                                                                                  