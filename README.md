# enigma-machine


## How to run

 - run command 
 ```
rspec ./spec/enigma_spec.rb
 ```

 there are two basic commands

 ```
 enigma.add_message(message,key,date)
 ```

 which takes a new message, adds the key and the date and returns an ecrypter object which can be encrypted and returns the new key word

 the second is
 ```
enigma.add_cipher(ciphertext,key,date)
 ```
 
this takes the cipher as well as the key and date and returns a decyrpter objec that can decode the message. 

These objects are sotres in the ```engima.messages``` and ```enigma.ciphers``` arrays

## Encrypter and Decrypter

The encrypters and decrypters have an encrypt and a decrypt method that will return the following:
 - encpryter.encrypt
```ruby
{
  :encryption => response,
  :key => key,
  :date => date
}
```

 - decrypter.decrypt
```ruby
{
  :decryption => response,
  :key => key,
  :date => date
}
```