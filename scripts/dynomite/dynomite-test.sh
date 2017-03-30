#!/bin/sh

port=8101

debug="-v -d"
debug="-d"

timeout="-t 1"
timeout=""

# keys

printf '   $2014$ 1 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$4\r\nfoo1\r\n$4\r\nbar1\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 2 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$4\r\nfoo2\r\n$4\r\nbar2\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $201  $2014$ 4 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$4\r\nfoo4\r\n$4\r\nbar4\r\n   $2014$ 5 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$4\r\nfoo5\r\n$4\r\nbar5\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$   $2014$ 7 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$4\r\nfoo7\r\n$4\r\nbar7\r\n   $2014$ 8 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$4\r\nfoo8\r\n$4\r\nbar8\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 9  $2014$ 10 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo10\r\n$5\r\nbar10\r\n   $2014$ 11 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo11\r\n$5\r\nbar11\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 12 3  $2014$ 13 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo13\r\n$5\r\nbar13\r\n   $2014$ 11 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo14\r\n$5\r\nbar14\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 15 3 0  $2014$ 16 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo16\r\n$5\r\nbar16\r\n   $2014$ 17 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo17\r\n$5\r\nbar17\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 18 3 0 1 $2014$ 19 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo19\r\n$5\r\nbar19\r\n   $2014$ 20 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo20\r\n$5\r\nbar20\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 21 3 0 1 1 * $2014$ 22 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo22\r\n$5\r\nbar22\r\n   $2014$ 23 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo23\r\n$5\r\nbar23\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 24 3 0 1 1 *1    $2014$ 25 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo25\r\n$5\r\nbar25\r\n   $2014$ 26 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo26\r\n$5\r\nbar26\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 27 3 0 1 1 *1 d   $2014$ 28 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo28\r\n$5\r\nbar28\r\n   $2014$ 29 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo29\r\n$5\r\nbar29\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 30 3 0 1 1 *1 d *   $2014$ 31 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo31\r\n$5\r\nbar31\r\n   $2014$ 32 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo32\r\n$5\r\nbar32\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 33 3 0 1 1 *1 d *0  $2014$ 34 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo34\r\n$5\r\nbar34\r\n   $2014$ 35 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo35\r\n$5\r\nbar35\r\n' | socat ${debug} ${timeout} - TCP:127.0.0.1:${port},shut-none

printf '   $2014$ 36 3 0 1 1 *1 d *0\r  $2014$ 37 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo37\r\n$5\r\nbar37\r\n   $2014$ 38 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo38\r\n$5\r\nbar38\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 39 3 0 1 1 *1 d *0\r\n$3  $2014$ 40 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo40\r\n$5\r\nbar40\r\n   $2014$ 41 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo41\r\n$5\r\nbar41\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 42 3 0 1 1 *1 d *0\r\n*3\r  $2014$ 43 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo43\r\n$5\r\nbar43\r\n   $2014$ 44 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo44\r\n$5\r\nbar44\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 45 3 0 1 1 *1 d *0\r\n*3\r\n  $2014$ 46 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo46\r\n$5\r\nbar46\r\n   $2014$ 47 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo47\r\n$5\r\nbar47\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 48 3 0 1 1 *1 d *0\r\n*3\r\n$  $2014$ 49 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo49\r\n$5\r\nbar49\r\n   $2014$ 50 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo50\r\n$5\r\nbar50\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 51 3 0 1 1 *1 d *0\r\n*3\r\n$3\r  $2014$ 52 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo52\r\n$5\r\nbar52\r\n   $2014$ 53 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo53\r\n$5\r\nbar53\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 54 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\n  $2014$ 55 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo55\r\n$5\r\nbar55\r\n   $2014$ 56 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo56\r\n$5\r\nbar56\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 57 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nse  $2014$ 58 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo58\r\n$5\r\nbar58\r\n   $2014$ 59 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo59\r\n$5\r\nbar59\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 60 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r  $2014$ 61 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo61\r\n$5\r\nbar61\r\n   $2014$ 62 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo62\r\n$5\r\nbar62\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 63 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n  $2014$ 64 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo64\r\n$5\r\nbar64\r\n   $2014$ 65 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo65\r\n$5\r\nbar65\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 66 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$  $2014$ 67 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo67\r\n$5\r\nbar67\r\n   $2014$ 68 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo68\r\n$5\r\nbar68\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 69 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5  $2014$ 70 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo70\r\n$5\r\nbar70\r\n   $2014$ 71 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo71\r\n$5\r\nbar71\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 72 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r  $2014$ 73 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo73\r\n$5\r\nbar73\r\n   $2014$ 74 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo74\r\n$5\r\nbar74\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 75 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\n  $2014$ 76 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo76\r\n$5\r\nbar76\r\n   $2014$ 77 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo77\r\n$5\r\nbar77\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 78 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\n\foo  $2014$ 79 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo79\r\n$5\r\nbar79\r\n   $2014$ 80 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo80\r\n$5\r\nbar80\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none

printf '   $2014$ 81 3 0 1 1 *1 d *0\r\n$3\r\n*3\r\nset\r\n$5\r\nfoo81\r  $2014$ 82 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo82\r\n$5\r\nbar82\r\n   $2014$ 83 3 0 1 1 *1 d *0\r\n*3\r\n$3\r\nset\r\n$5\r\nfoo83\r\n$5\r\nbar83\r\n' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-none



printf '  ' | socat ${debug} ${timeout} - TCP:localhost:${port},shut-close
