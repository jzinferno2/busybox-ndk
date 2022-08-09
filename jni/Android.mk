LOCAL_PATH := $(call my-dir)/../busybox
VERSION = 1
PATCHLEVEL = 35
SUBLEVEL = 0
EXTRAVERSION = -jzinferno
BB_VER = $(VERSION).$(PATCHLEVEL).$(SUBLEVEL)$(EXTRAVERSION)

include $(CLEAR_VARS)
LOCAL_MODULE := busybox
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_DISABLE_FORMAT_STRING_CHECKS := true
LOCAL_LDFLAGS := -static -Wl,--wrap=realpath
LOCAL_CFLAGS := \
-w -include include/autoconf.h -D__USE_BSD -D__USE_GNU \
-DBB_VER=\"$(BB_VER)\" -DBB_BT=AUTOCONF_TIMESTAMP

LOCAL_SRC_FILES := \
applets/applets.c \
archival/ar.c \
archival/bbunzip.c \
archival/bzip2.c \
archival/chksum_and_xwrite_tar_header.c \
archival/cpio.c \
archival/gzip.c \
archival/libarchive/common.c \
archival/libarchive/data_align.c \
archival/libarchive/data_extract_all.c \
archival/libarchive/data_extract_to_command.c \
archival/libarchive/data_extract_to_stdout.c \
archival/libarchive/data_skip.c \
archival/libarchive/decompress_bunzip2.c \
archival/libarchive/decompress_gunzip.c \
archival/libarchive/decompress_uncompress.c \
archival/libarchive/decompress_unlzma.c \
archival/libarchive/decompress_unxz.c \
archival/libarchive/filter_accept_all.c \
archival/libarchive/filter_accept_list.c \
archival/libarchive/filter_accept_reject_list.c \
archival/libarchive/find_list_entry.c \
archival/libarchive/get_header_ar.c \
archival/libarchive/get_header_cpio.c \
archival/libarchive/get_header_tar.c \
archival/libarchive/header_list.c \
archival/libarchive/header_skip.c \
archival/libarchive/header_verbose_list.c \
archival/libarchive/init_handle.c \
archival/libarchive/lzo1x_1.c \
archival/libarchive/lzo1x_1o.c \
archival/libarchive/lzo1x_9x.c \
archival/libarchive/lzo1x_d.c \
archival/libarchive/open_transformer.c \
archival/libarchive/seek_by_jump.c \
archival/libarchive/seek_by_read.c \
archival/libarchive/unpack_ar_archive.c \
archival/libarchive/unsafe_prefix.c \
archival/libarchive/unsafe_symlink_target.c \
archival/lzop.c \
archival/tar.c \
archival/unzip.c \
console-tools/chvt.c \
console-tools/clear.c \
console-tools/deallocvt.c \
console-tools/dumpkmap.c \
console-tools/fgconsole.c \
console-tools/kbd_mode.c \
console-tools/loadfont.c \
console-tools/loadkmap.c \
console-tools/openvt.c \
console-tools/reset.c \
console-tools/resize.c \
console-tools/setconsole.c \
console-tools/setkeycodes.c \
console-tools/setlogcons.c \
console-tools/showkey.c \
coreutils/basename.c \
coreutils/cat.c \
coreutils/chgrp.c \
coreutils/chmod.c \
coreutils/chown.c \
coreutils/chroot.c \
coreutils/cksum.c \
coreutils/comm.c \
coreutils/cp.c \
coreutils/cut.c \
coreutils/date.c \
coreutils/dd.c \
coreutils/df.c \
coreutils/dirname.c \
coreutils/dos2unix.c \
coreutils/du.c \
coreutils/echo.c \
coreutils/env.c \
coreutils/expand.c \
coreutils/expr.c \
coreutils/factor.c \
coreutils/false.c \
coreutils/fold.c \
coreutils/head.c \
coreutils/id.c \
coreutils/install.c \
coreutils/libcoreutils/cp_mv_stat.c \
coreutils/libcoreutils/getopt_mk_fifo_nod.c \
coreutils/link.c \
coreutils/ln.c \
coreutils/ls.c \
coreutils/md5_sha1_sum.c \
coreutils/mkdir.c \
coreutils/mkfifo.c \
coreutils/mknod.c \
coreutils/mktemp.c \
coreutils/mv.c \
coreutils/nice.c \
coreutils/nl.c \
coreutils/nohup.c \
coreutils/od.c \
coreutils/paste.c \
coreutils/printenv.c \
coreutils/printf.c \
coreutils/pwd.c \
coreutils/readlink.c \
coreutils/realpath.c \
coreutils/rm.c \
coreutils/rmdir.c \
coreutils/seq.c \
coreutils/shred.c \
coreutils/shuf.c \
coreutils/sleep.c \
coreutils/sort.c \
coreutils/split.c \
coreutils/stat.c \
coreutils/stty.c \
coreutils/sum.c \
coreutils/sync.c \
coreutils/tac.c \
coreutils/tail.c \
coreutils/tee.c \
coreutils/test.c \
coreutils/test_ptr_hack.c \
coreutils/timeout.c \
coreutils/touch.c \
coreutils/tr.c \
coreutils/true.c \
coreutils/truncate.c \
coreutils/tty.c \
coreutils/uname.c \
coreutils/uniq.c \
coreutils/unlink.c \
coreutils/usleep.c \
coreutils/uudecode.c \
coreutils/uuencode.c \
coreutils/wc.c \
coreutils/whoami.c \
coreutils/yes.c \
debianutils/pipe_progress.c \
debianutils/run_parts.c \
debianutils/start_stop_daemon.c \
debianutils/which.c \
e2fsprogs/chattr.c \
e2fsprogs/e2fs_lib.c \
e2fsprogs/fsck.c \
e2fsprogs/lsattr.c \
e2fsprogs/tune2fs.c \
editors/awk.c \
editors/cmp.c \
editors/diff.c \
editors/ed.c \
editors/patch.c \
editors/sed.c \
editors/vi.c \
findutils/find.c \
findutils/grep.c \
findutils/xargs.c \
init/halt.c \
klibc-utils/nuke.c \
klibc-utils/resume.c \
libbb/appletlib.c \
libbb/ask_confirmation.c \
libbb/auto_string.c \
libbb/bb_askpass.c \
libbb/bb_bswap_64.c \
libbb/bb_cat.c \
libbb/bb_do_delay.c \
libbb/bb_getgroups.c \
libbb/bb_getsockname.c \
libbb/bb_pwd.c \
libbb/bb_qsort.c \
libbb/bb_strtonum.c \
libbb/capability.c \
libbb/change_identity.c \
libbb/chomp.c \
libbb/common_bufsiz.c \
libbb/compare_string_array.c \
libbb/concat_path_file.c \
libbb/concat_subpath_file.c \
libbb/const_hack.c \
libbb/copy_file.c \
libbb/copyfd.c \
libbb/correct_password.c \
libbb/crc32.c \
libbb/default_error_retval.c \
libbb/device_open.c \
libbb/dump.c \
libbb/duration.c \
libbb/endofname.c \
libbb/executable.c \
libbb/fclose_nonstdin.c \
libbb/fflush_stdout_and_exit.c \
libbb/fgets_str.c \
libbb/find_mount_point.c \
libbb/find_pid_by_name.c \
libbb/find_root_device.c \
libbb/full_write.c \
libbb/get_console.c \
libbb/get_cpu_count.c \
libbb/get_last_path_component.c \
libbb/get_line_from_file.c \
libbb/get_shell_name.c \
libbb/get_volsize.c \
libbb/getopt32.c \
libbb/getopt_allopts.c \
libbb/getpty.c \
libbb/hash_md5_sha.c \
libbb/herror_msg.c \
libbb/human_readable.c \
libbb/in_ether.c \
libbb/inet_cksum.c \
libbb/inet_common.c \
libbb/inode_hash.c \
libbb/isdirectory.c \
libbb/isqrt.c \
libbb/iterate_on_dir.c \
libbb/kernel_version.c \
libbb/last_char_is.c \
libbb/lineedit.c \
libbb/lineedit_ptr_hack.c \
libbb/llist.c \
libbb/logenv.c \
libbb/login.c \
libbb/loop.c \
libbb/make_directory.c \
libbb/makedev.c \
libbb/match_fstype.c \
libbb/messages.c \
libbb/missing_syscalls.c \
libbb/mode_string.c \
libbb/nuke_str.c \
libbb/parse_config.c \
libbb/parse_mode.c \
libbb/percent_decode.c \
libbb/perror_msg.c \
libbb/perror_nomsg.c \
libbb/perror_nomsg_and_die.c \
libbb/pidfile.c \
libbb/platform.c \
libbb/print_flags.c \
libbb/print_numbered_lines.c \
libbb/printable.c \
libbb/printable_string.c \
libbb/process_escape_sequence.c \
libbb/procps.c \
libbb/progress.c \
libbb/ptr_to_globals.c \
libbb/pw_encrypt.c \
libbb/read.c \
libbb/read_key.c \
libbb/read_printf.c \
libbb/recursive_action.c \
libbb/remove_file.c \
libbb/replace.c \
libbb/rtc.c \
libbb/run_shell.c \
libbb/safe_gethostname.c \
libbb/safe_poll.c \
libbb/safe_strncpy.c \
libbb/safe_write.c \
libbb/securetty.c \
libbb/semctl.c \
libbb/setup_environment.c \
libbb/signals.c \
libbb/simplify_path.c \
libbb/single_argv.c \
libbb/skip_whitespace.c \
libbb/speed_table.c \
libbb/str_tolower.c \
libbb/strrstr.c \
libbb/sysconf.c \
libbb/time.c \
libbb/trim.c \
libbb/u_signal_names.c \
libbb/ubi.c \
libbb/udp_io.c \
libbb/unicode.c \
libbb/uuencode.c \
libbb/verror_msg.c \
libbb/vfork_daemon_rexec.c \
libbb/warn_ignoring_args.c \
libbb/wfopen.c \
libbb/wfopen_input.c \
libbb/write.c \
libbb/xatonum.c \
libbb/xconnect.c \
libbb/xfunc_die.c \
libbb/xfuncs.c \
libbb/xfuncs_printf.c \
libbb/xgetcwd.c \
libbb/xgethostbyname.c \
libbb/xreadlink.c \
libbb/xrealloc_vector.c \
libbb/xrealpath.c \
libbb/xregcomp.c \
libpwdgrp/uidgid_get.c \
libbb/dn_expand.c \
libbb/dnscruft.c \
libbb/dnscruft2.c \
libbb/dnscruft3.c \
libbb/freeaddrinfo.c \
libbb/gai_strerror.c \
libbb/getaddrinfo.c \
libbb/gethostbyname2_r.c \
libbb/h_errno.c \
libbb/res_init.c \
libbb/res_mkquery.c \
libbb/res_query.c \
mailutils/mail.c \
mailutils/makemime.c \
mailutils/popmaildir.c \
mailutils/reformime.c \
mailutils/sendmail.c \
miscutils/adjtimex.c \
miscutils/ascii.c \
miscutils/bbconfig.c \
miscutils/bc.c \
miscutils/beep.c \
miscutils/chat.c \
miscutils/conspy.c \
miscutils/crond.c \
miscutils/crontab.c \
miscutils/devmem.c \
miscutils/fbsplash.c \
miscutils/flash_eraseall.c \
miscutils/flash_lock_unlock.c \
miscutils/hdparm.c \
miscutils/hexedit.c \
miscutils/inotifyd.c \
miscutils/less.c \
miscutils/lsscsi.c \
miscutils/makedevs.c \
miscutils/man.c \
miscutils/microcom.c \
miscutils/nandwrite.c \
miscutils/partprobe.c \
miscutils/raidautorun.c \
miscutils/rfkill.c \
miscutils/rx.c \
miscutils/setfattr.c \
miscutils/setserial.c \
miscutils/strings.c \
miscutils/time.c \
miscutils/ts.c \
miscutils/ttysize.c \
miscutils/ubi_tools.c \
miscutils/ubirename.c \
miscutils/volname.c \
miscutils/watchdog.c \
modutils/depmod.c \
modutils/insmod.c \
modutils/lsmod.c \
modutils/modinfo.c \
modutils/modprobe.c \
modutils/modutils.c \
modutils/rmmod.c \
networking/arp.c \
networking/arping.c \
networking/brctl.c \
networking/dnsd.c \
networking/ether-wake.c \
networking/ether_aton_r.c \
networking/ether_ntoa_r.c \
networking/ftpd.c \
networking/ftpgetput.c \
networking/hostname.c \
networking/httpd.c \
networking/ifconfig.c \
networking/ifenslave.c \
networking/ifplugd.c \
networking/ifupdown.c \
networking/inetd.c \
networking/interface.c \
networking/ip.c \
networking/ipcalc.c \
networking/isrv.c \
networking/isrv_identd.c \
networking/libiproute/ip_parse_common_args.c \
networking/libiproute/ipaddress.c \
networking/libiproute/iplink.c \
networking/libiproute/ipneigh.c \
networking/libiproute/iproute.c \
networking/libiproute/iprule.c \
networking/libiproute/iptunnel.c \
networking/libiproute/libnetlink.c \
networking/libiproute/ll_addr.c \
networking/libiproute/ll_map.c \
networking/libiproute/ll_proto.c \
networking/libiproute/ll_types.c \
networking/libiproute/rt_names.c \
networking/libiproute/rtm_map.c \
networking/libiproute/utils.c \
networking/nameif.c \
networking/nbd-client.c \
networking/nc.c \
networking/netstat.c \
networking/nslookup.c \
networking/parse_pasv_epsv.c \
networking/ping.c \
networking/pscan.c \
networking/route.c \
networking/slattach.c \
networking/ssl_client.c \
networking/tc.c \
networking/tcpudp.c \
networking/tcpudp_perhost.c \
networking/telnet.c \
networking/telnetd.c \
networking/tftp.c \
networking/tls.c \
networking/tls_aes.c \
networking/tls_aesgcm.c \
networking/tls_fe.c \
networking/tls_pstm.c \
networking/tls_pstm_montgomery_reduce.c \
networking/tls_pstm_mul_comba.c \
networking/tls_pstm_sqr_comba.c \
networking/tls_rsa.c \
networking/tls_sp_c32.c \
networking/traceroute.c \
networking/tunctl.c \
networking/udhcp/arpping.c \
networking/udhcp/common.c \
networking/udhcp/d6_dhcpc.c \
networking/udhcp/d6_packet.c \
networking/udhcp/d6_socket.c \
networking/udhcp/dhcpc.c \
networking/udhcp/dhcpd.c \
networking/udhcp/dhcprelay.c \
networking/udhcp/domain_codec.c \
networking/udhcp/dumpleases.c \
networking/udhcp/ifaddrs.c \
networking/udhcp/packet.c \
networking/udhcp/signalpipe.c \
networking/udhcp/socket.c \
networking/vconfig.c \
networking/wget.c \
networking/whois.c \
networking/zcip.c \
procps/free.c \
procps/fuser.c \
procps/iostat.c \
procps/kill.c \
procps/lsof.c \
procps/mpstat.c \
procps/nmeter.c \
procps/pgrep.c \
procps/pidof.c \
procps/pmap.c \
procps/powertop.c \
procps/ps.c \
procps/pstree.c \
procps/pwdx.c \
procps/smemcap.c \
procps/sysctl.c \
procps/top.c \
procps/uptime.c \
procps/watch.c \
runit/chpst.c \
runit/sv.c \
selinux/getenforce.c \
selinux/selinuxenabled.c \
selinux/setenforce.c \
shell/ash.c \
shell/ash_ptr_hack.c \
shell/cttyhack.c \
shell/glob.c \
shell/hush.c \
shell/match.c \
shell/math.c \
shell/random.c \
shell/shell_common.c \
sysklogd/klogd.c \
sysklogd/logread.c \
sysklogd/syslogd_and_logger.c \
util-linux/acpid.c \
util-linux/blkdiscard.c \
util-linux/blkid.c \
util-linux/blockdev.c \
util-linux/cal.c \
util-linux/chrt.c \
util-linux/dmesg.c \
util-linux/eject.c \
util-linux/fatattr.c \
util-linux/fbset.c \
util-linux/fdformat.c \
util-linux/fdisk.c \
util-linux/findfs.c \
util-linux/flock.c \
util-linux/freeramdisk.c \
util-linux/fsck_minix.c \
util-linux/fsfreeze.c \
util-linux/fstrim.c \
util-linux/getopt.c \
util-linux/hexdump.c \
util-linux/hexdump_xxd.c \
util-linux/hwclock.c \
util-linux/ionice.c \
util-linux/ipcrm.c \
util-linux/ipcs.c \
util-linux/losetup.c \
util-linux/lspci.c \
util-linux/lsusb.c \
util-linux/mesg.c \
util-linux/mkfs_ext2.c \
util-linux/mkfs_minix.c \
util-linux/mkfs_reiser.c \
util-linux/mkfs_vfat.c \
util-linux/mkswap.c \
util-linux/mntent_r.c \
util-linux/more.c \
util-linux/mount.c \
util-linux/mountpoint.c \
util-linux/nsenter.c \
util-linux/pivot_root.c \
util-linux/rdate.c \
util-linux/rdev.c \
util-linux/readprofile.c \
util-linux/renice.c \
util-linux/rev.c \
util-linux/rtcwake.c \
util-linux/script.c \
util-linux/scriptreplay.c \
util-linux/setpriv.c \
util-linux/setsid.c \
util-linux/swaponoff.c \
util-linux/switch_root.c \
util-linux/uevent.c \
util-linux/umount.c \
util-linux/unshare.c \
util-linux/volume_id/bcache.c \
util-linux/volume_id/btrfs.c \
util-linux/volume_id/cramfs.c \
util-linux/volume_id/erofs.c \
util-linux/volume_id/exfat.c \
util-linux/volume_id/ext.c \
util-linux/volume_id/f2fs.c \
util-linux/volume_id/fat.c \
util-linux/volume_id/get_devname.c \
util-linux/volume_id/hfs.c \
util-linux/volume_id/iso9660.c \
util-linux/volume_id/jfs.c \
util-linux/volume_id/lfs.c \
util-linux/volume_id/linux_raid.c \
util-linux/volume_id/linux_swap.c \
util-linux/volume_id/luks.c \
util-linux/volume_id/minix.c \
util-linux/volume_id/nilfs.c \
util-linux/volume_id/ntfs.c \
util-linux/volume_id/ocfs2.c \
util-linux/volume_id/reiserfs.c \
util-linux/volume_id/romfs.c \
util-linux/volume_id/squashfs.c \
util-linux/volume_id/sysv.c \
util-linux/volume_id/ubifs.c \
util-linux/volume_id/udf.c \
util-linux/volume_id/util.c \
util-linux/volume_id/volume_id.c \
util-linux/volume_id/xfs.c \

include $(BUILD_EXECUTABLE)
