
site_name=$1

site_port=$2

if [ -z "${site_name}"  ]
then
    printf "Please input the site name!\n"
    exit 0
fi

if [ -z "${site_port}" ]
then
    site_port="443"
fi

openssl s_client -servername ${site_name} -connect ${site_name}:"${site_port}" 2>&1 </dev/null | awk 'BEGIN{flg=0;}{if($0~/BEGIN/){flg=1;}if(flg==1)print $0;if($0~/END/){flg=0;}}' | sed -n -e '/^$/!p' | tee tp_test

openssl x509 -inform PEM -in tp_test -text
