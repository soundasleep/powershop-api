**NOTE** This API is still being developed.

powershop-api
=============

See the list of supported [endpoints](endpoints).

# Sample Applications

* [Sample Rails application](https://github.com/hughdavenport/rails-hmac-api)
* More coming soon...

# Authentication with HMAC

You need a key and secret which you can get by logging into your Powershop account and going to the Settings > API Keys tab.

Each API key consists of a key and secret (the secret will only be displayed once) which need to be hashed and sent as part of your API request.

In your request, you will need to set the following headers:

* `X-API-Key: [api_key]`
* `X-API-Sign: [signed hmac]`

And also send the following POST data (`$post_data`):

* `nonce=[nonce]`

And POST this data to an endpoint, e.g. http://localhost:3000/customers/12345/api/v1/balance.json (`$endpoint_path` is `/customers/12345/api/v1/balance`)

The signed hash can be computed with:

```php
base64_encode(hash_hmac('sha512', $endpoint_path . "\0" . $post_data, base64_decode($secret), true)),
```

You will receive if successful:

```json
{
  "success": true,
  "result": { /* object */ }
}
```

Or failure:

```json
{
  "success": false,
  "message": "An error message"
}
```
