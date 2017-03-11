#!/bin/sh

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

LUCKYBLOCKCOIND=${LUCKYBLOCKCOIND:-$SRCDIR/luckyblockcoind}
LUCKYBLOCKCOINCLI=${LUCKYBLOCKCOINCLI:-$SRCDIR/luckyblockcoin-cli}
LUCKYBLOCKCOINTX=${LUCKYBLOCKCOINTX:-$SRCDIR/luckyblockcoin-tx}
LUCKYBLOCKCOINQT=${LUCKYBLOCKCOINQT:-$SRCDIR/qt/luckyblockcoin-qt}

[ ! -x $LUCKYBLOCKCOIND ] && echo "$LUCKYBLOCKCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
LUBVER=($($LUCKYBLOCKCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for luckyblockcoind if --version-string is not set,
# but has different outcomes for luckyblockcoin-qt and luckyblockcoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$LUCKYBLOCKCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $LUCKYBLOCKCOIND $LUCKYBLOCKCOINCLI $LUCKYBLOCKCOINTX $LUCKYBLOCKCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${LUBVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${LUBVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
