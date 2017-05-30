rman target / LOG=/bkp/LOG_ARCH_$DATA.log <<EOF
run
{
allocate channel c1 type disk format '$DIR/Arch_%d_%Y%M%D_%s_%p';
sql 'alter system archive log current';
backup archivelog all delete all input;
}

EOF