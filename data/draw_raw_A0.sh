#while true
#do
    sqlite3 data.db "select * from A0 where timestamp > (strftime('%s','now') - (60*60*4))" > A0.txt
    gnuplot < draw_raw_A0.gnuplot
    sleep 2
#done