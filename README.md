# docker-kms-cli
Docker container based AWS KMS cli
### What is AWS KMS and how to setup an encryption key
Please follow this link: http://aws.amazon.com/kms/

### Currently supported features
1. Encrypt
2. Decrypt
3. Describe an encryption key
 
### How to use
Make sure you have [docker](https://docs.docker.com/) [installed](https://docs.docker.com/installation/) in your system.

Test if docker is installed. Following command should print `hello world` in your terminal

```
docker run  --rm busybox /bin/echo hello world
```

1. Setup aws credentials for the cli
    - Create a **.kms-env** file in your home folder
    - Add your access key id and secret in it like:
    ```
    AWS_ACCESS_KEY_ID=AKIA.....PA
    AWS_SECRET_ACCESS_KEY=mw/..........XspE
    ```
2. curl -o /usr/local/bin/kms-cli https://raw.githubusercontent.com/ddffx/docker-kms-cli/master/kms-cli.sh && chmod a+x /usr/local/bin/aws

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
### Example
- Encryption command
```
kms-cli encrypt --pt "Hello World" -k d36xxxxx-2xxx-xxxf-bxxx-xxx7a7xxxb6
```
- Decryption command
```
kms-cli decrypt --ct "CiAqkzNibdCgWEcqdc/mXw6uBGELNMAQcBMB4GCWCGSAFlAwQBLjARBAzQu5JbewPSeadnSwqVdApEbzLzrXcAw=="
```
