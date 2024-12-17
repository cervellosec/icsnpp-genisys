# @TEST-DOC: Test Genisys analyzer with small trace on a non-default port.
#
# @TEST-EXEC: zeek -C -r ${TRACES}/genisys_otherport.pcap $PACKAGE %INPUT
# @TEST-EXEC: zeek-cut id.orig_h id.orig_p id.resp_h id.resp_p proto service < conn.log > conn.tmp && mv conn.tmp conn.log
# @TEST-EXEC: btest-diff conn.log
# @TEST-EXEC: btest-diff genisys.log

redef GENISYS::genisys_ports_tcp={ 10002/tcp };
