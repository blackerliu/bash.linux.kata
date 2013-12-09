usage(){
	echo "Usage: $0"
}

#ARGS=`getopt -a -o I:D:T:e:k:LMSsth -l instence:,database:,table:,excute:,key:,list,master,slave,status,tableview,help -- "$@"`  
ARGS=`getopt -a -o D:T:e:k:LMSsth -l instence:,database:,table:,excute:,key:,master,slave,status,tableview,help -- "$@"`  
[ $? -ne 0 ] && usage  
#set -- "${ARGS}"  
echo ${ARGS}
eval set -- "${ARGS}" 

echo ${ARGS} 

while true  
do  
        case "$1" in 
        -I|--instence)  
                instence="$2" 
                shift  
                ;;  
        -D|--database)  
                database="$2" 
                shift  
                ;;  
        -T|--table)  
                table="$2" 
                shift  
                ;;  
        -e|--excute)  
                excute="yes" 
                shift  
                ;;  
        -k|--key)  
                key="$2" 
                shift  
                ;;  
        -L|--list)  
                LIST="yes" 
                ;;  
        -M|--master)  
                MASTER="yes" 
                ;;  
        -S|--slave)  
                SLAVE="yes" 
                ;;  
        -A|--alldb)  
                ALLDB="yes" 
                ;;  
        -s|--status)  
                STATUS="yes" 
                ;;  
        -t|--tableview)  
                TABLEVIEW="yes" 
                ;;  
        -h|--help)  
               	echo "this is help" 
                ;;  
        --)  
                shift  
                break 
                ;;  
        esac  
shift  
done 

echo $@
