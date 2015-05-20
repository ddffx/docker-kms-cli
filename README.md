# docker-kms-cli
Docker container based AWS KMS cli
### What is AWS KMS and how to setup an encryption key
Please follow this link: http://aws.amazon.com/kms/

### Currently supported features
1. Encrypt
2. Decrypt
3. Describe an encryption key
 
### How to use
1. Setup aws credentials for the cli
    - Create a **.kms-env** file in your home folder
    - Add your access key id and secret in it like:
    ```
    AWS_ACCESS_KEY_ID=AKIA.....PA
    AWS_SECRET_ACCESS_KEY=mw/..........XspE
    ```
2. Clone this repo

   ```
   git clone git@github.com:ddffx/docker-kms-cli.git
   ```
2. Inside the repo run ./kms-cli.sh you should see the default help listed

   ```
   cd docker-cmd-cli && ./kms-cli.sh
   ```
3. Create an alias for ./kms-cli.sh `alias kms-cli=./kms-cli.sh`, creating a permanent alias is recommended 
```
$ kms-cli
AWS KMS client

  Usage
    kms-cli <input command> [arguments]
   Or if you are using this as docker conatiner and didn't create alias kms-cli
    ./kms-cli.sh <input command> [arguments]

  Example
    Encrypt:
    kms-cli encrypt --pt "my secret" -k my_kms_encryption_key_id
    Decrypt:
    kms-cli decrypt --ct "my encrypted secret"
    Describe Key:
    kms-cli describe -k my_kms_encryption_key_id
```

