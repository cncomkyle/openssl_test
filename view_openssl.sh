pem_file="$1"

if [  -z "${pem_file}"  ]
then
    printf "Please input the openssl file name!\n"
    exit 0
fi
openssl x509 -in "${pem_file}"  -noout -text
