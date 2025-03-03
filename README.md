

**To get the patch for VMware Workstation 17.6.2 access this link: https://github.com/RamonLean/vmware-host-modules/tree/workstation-17.6.2**

This repository tracks patches needed to build VMware (Player and
Workstation) host modules against recent kernels. As it focuses on recent
kernels (older ones do not need patching), only vmmon and vmnet modules are
currently handled as the rest has been upstreamed for some time.

Main branch master handles only "infrastructure" files which do not belong
to VMware module sources. Two other branches, "player" and "workstation"
track upstream module sources distributed with Player and Workstation,
respectively. Tags of the form "p${version}" (e.g.  "p12.5.5") and
"w${version}" correspond to clean unpacked sources of modules from
a particular version of Player or Workstation.

From these tags, branches "workstation-${version}" is forked. This branch
tracks changes needed to build the modules against recent kernel versions.
In general, one should always use current branch head for the build. For
versions before 17.0, there are also branches "player-${version}" but as
the module sources have been identical between Workstation and Player for
quite long, there seems to be no need to duplicate the work. Therefore the
"workstation-*" branches should be also used for Player >= 17.0 (and can be
in fact used for older as well). If the situation changes in the future,
Player related branches can be introduced again.

In the past, tags in the form "w${ver}-k${ver}" and "p${ver}-k${kver}" were
also provided to mark the snapshots deemed sufficient to build modules for
Workstation/Player version $ver at the moment of kernel $kver release. This
practice turned to be a bad idea; more often an issue affecting older
kernel versions was discovered later than a fix for newer kernel did not
work with older ones. Unfortunately, misinterpreting these tags often
resulted in building modules from old branch snapshots and reporting issues
that have been addressed long ago. Therefore, starting with kernel 6.0,
these per kernel tags are no longer going to be provided.

At the moment, changes are tested to build against all (vanilla) kernel
releases starting with 4.9.

This repository is provided "as is" with no guarantees. Use the contents on
your own risk.
