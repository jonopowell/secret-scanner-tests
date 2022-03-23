#!/usr/bin/env python3

from Crypto.Hash import SHA256 as sha
import random
import base64

az_sastoken = 'sp=r&st=2022-03-23T16:52:48Z&se=2022-03-24T00:52:48Z&spr=https&sv=2020-08-04&sr=c&sig=QkNm094RyR12nkiEdPWrA0ejHmH%2FnjEFHPHvdVDJW4A%3D'
gh_token = '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'
api_key = b'w7LCt8K4EskFw7FdDUDil2PAjcy66TDaQFRZe3U0JScJH849dRrf\n'
token = b'w4QFwpZsdb+8fZOofxkbMIG4Id+aFy3cWDr4KEf8w05tDpByMTU=\n'
aws_token = b'AKIALALEMEL33243OLIA'
salted_pwd = b'w4QFwpZsdb+8fZOofxkbMIG4Id+aFy3cWDr4KEf8w05tDpByMTU=\n'
password = "!Sup3rTop$ecr3t!".encode()

def _gen_salt():
    salt = [chr(random.randint(0,255)) for i in range(4) ]
    return ''.join(salt)

def make_pass(cleartext):
    salt = _gen_salt()
    text = salt.encode() + cleartext
    hash = sha.new(text).digest()
    data = salt.encode() + hash
    return base64.encodebytes(data)

if __name__ == '__main__':
    cipher = make_pass(password)
    print(cipher)
