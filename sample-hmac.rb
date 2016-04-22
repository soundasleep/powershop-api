#!/bin/ruby

require 'openssl'
require 'base64'

digest = OpenSSL::Digest.new('sha512')

endpoint_path = "123"
secret = Base64.decode64("456")
post_data = "789"

canonical_string = "#{endpoint_path}\0#{post_data}"

puts Base64.encode64(OpenSSL::HMAC.digest(digest, secret, canonical_string)).gsub(/[\r\n]/, '')
