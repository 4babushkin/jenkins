## Get Droplet Sizes

```bash
export DIGITALOCEAN_TOKEN='*******97ed2cb7557ca0c0242d925f3b7164fd7bb827afaecdc8c96aa97cc'
```
### Get Droplet Sizes
```bash
curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer ${DIGITALOCEAN_TOKEN}" "https://api.digitalocean.com/v2/sizes?page=1" | jq
```

### Get images
```bash
curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer ${DIGITALOCEAN_TOKEN}" "https://api.digitalocean.com/v2/images?page=1" | jq
```


### Locating your SSH Key 
```bash
curl -H "Content-Type: application/json" -H "Authorization: Bearer ${DIGITALOCEAN_TOKEN}" "https://api.digitalocean.com/v2/account/keys" | jq
```

"id": 24621700,
"fingerprint": "95:23:66:57:56:2e:5a:47:85:fb:86:73:ca:b5:90:e7",
  
```
    {
      "id": 26531007,
      "fingerprint": "95:23:66:57:56:2e:5a:47:85:fb:86:73:ca:b5:90:e7",
      "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNm4pL78YE6j9FTD6lGPzGIXl94q2118orskmYoSfr5qzZspXhhLlMu2Y9R20/8KVns1T8j9Q/fb9X33MtjuPRoNmz5LPIqoIYblbujdFqt+5vpz2YbfHPEBC5GrN2XHw4wFzyXCki5DaYC6Ktj2brJGUJomrIc2hwzK+wV2ncGLZv73E1+sDUdGuuLFeU60lvrK6fp03KN3Dyouc61RDPmG81omA5obcf4jBdA6FjoOpVq64XYqR0kzUhM2DXKsnagfkV9oFBfDdz3U+JZRz7ubR4iPtojq5LyQE8Ah3q2CDPxrEBKkJbglRoPBRQ0NGtyNH83HfIPZctkLMx8ja3",
      "name": "REBRAIN.SSH.PUB.KEY"
    },
```
```
curl -H "Content-Type: application/json" -H "Authorization: Bearer ${DIGITALOCEAN_TOKEN}" "https://api.digitalocean.com/v2/account/keys?page=5" | jq

    }
      "id": 25440206,
      "fingerprint": "67:6a:ed:54:8e:2a:54:cb:e4:b4:f2:10:a7:62:30:d8",
      "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDfh2FsOm1XNhcQsM7g6SYiAo95CX8rzvpRrj9qG0+qMqV9caEbp9fwURQR4/bSjJtg5NoHi7BvQ0mj4HtdXCFv7xgjdyFVIbBYt+F+ZXrQfjVgsNd9xgyOID5sFFnGATrR2yFwa6bMj5ctjRwzj25JyhJAx+XbHSleqT45WXSVopmi3SwwuInPtpxfj6WrDZzu0nKmPelYIZaxrJCHA5FHXjHLtrAf9aF2M+Rz/ljnErfS0goY0mXZuNVWWUU+sBPZbQmgK3yEncGi2B4k/IwJ6ErrcIEif3r9hiu/ipfkN4m602UToLKeXR3fYbb5ERhgreJppBOXSmYs3Jn04GYr appuser",
      "name": "appuser"
    },
```
