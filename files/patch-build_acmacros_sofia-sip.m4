--- build/acmacros/sofia-sip.m4.orig	2018-04-21 16:21:36 UTC
+++ build/acmacros/sofia-sip.m4
@@ -20,6 +20,8 @@ AC_DEFUN([UNIMRCP_CHECK_SOFIA],
     found_sofia="no"
 
     if test -n "$PKG_CONFIG"; then
+	
+	
         dnl Check for installed Sofia-SIP
         for dir in $sofia_path ; do
             sofia_config_path=$dir/lib/pkgconfig/sofia-sip-ua.pc
@@ -28,6 +30,11 @@ AC_DEFUN([UNIMRCP_CHECK_SOFIA],
                 break
             fi
         done
+	
+	sofia_config_path=$($PKG_CONFIG --path sofia-sip-ua)
+	if test "$found_sofia" != "yes" && test -f "$sofia_config_path" && $PKG_CONFIG $sofia_config_path > /dev/null 2>&1; then
+		found_sofia="yes"
+	fi
 
         dnl Check for full path to Sofia-SIP pkg-config file
         if test "$found_sofia" != "yes" && test -f "$sofia_path" && $PKG_CONFIG $sofia_path > /dev/null 2>&1 ; then
