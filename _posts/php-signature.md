# openssl 签名和验签

[openssl php implementation](http://cn.php.net/manual/zh/ref.openssl.php)


### 公钥和私钥生成
* 使用RSA算法：
  * 生成私钥：openssl genrsa -out privatekey.key 1024
  * 对应公钥：openssl rsa -in privatekey.key -pubout -out pubkey.key

* 使用DSA算法：
  * 生成DSA参数：openssl dsaparam -out dsa_param.pem 1024
  * 生成私钥：openssl gendsa -out dsa_private_key.pem dsa_param.pem
  * 对应公钥：openssl dsa -in dsa_private_key.pem -pubout -out dsa_public_key.pem

### php 实现
    $private_key = file_get_contents('private.key');
    $privateKeyId = openssl_pkey_get_private($private_key);
    $data = "hello,world";
    openssl_sign($data,$sign,$privateKeyId,OPENSSL_ALGO_SHA256);
    var_dump($sign);

    $public_key = file_get_contents('public.key');
    $publicKeyId = openssl_pkey_get_public($public_key);
    openssl_verify($data,$sign,$publicKeyId,OPENSSL_ALGO_SHA256);
    var_dump($data);
