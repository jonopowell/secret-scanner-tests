#!/usr/bin/env python3

from Crypto.Hash import SHA256 as sha
import random
import base64

token = b'w4QFwpZsdb+8fZOofxkbMIG4Id+aFy3cWDr4KEf8w05tDpByMTU=\n'
token = b'w4QFwpZsdb+8fZOofxkbMIG4Id+aFy3cWDr4KEf8w05tDpByMTU=\n'
password = "Sup3rTop$ecr3t".encode()

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
