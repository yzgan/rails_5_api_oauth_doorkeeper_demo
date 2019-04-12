# README

## Register New User
Http `POST` request to `http://localhost:3000/api/v1/users` with

### example body params
```json
{
  "user": {
    "email": "testing@example.com",
    "password": "testing",
    "username": "testing"
  } 
}
```

## Get User Token
`POST` `http://localhost:3000/oauth/token` with

### example body params
```json
{
  "email": "testing@example.com",
  "password": "testing",
  "grant_type": "password"
}
```

### response
```json
{
    "access_token": "5bd32bb6830f9f0c6e6fc56def139cb20500ca9b83ee342fa898f3143031f0fe",
    "token_type": "Bearer",
    "expires_in": 7200,
    "created_at": 1555058281,
    "status_code": 200,
    "message": "Signed in successfully.",
    "result": {
        "id": 2,
        "email": "testing@example.com",
        "created_at": "2019-04-12T08:23:59.049Z",
        "updated_at": "2019-04-12T08:23:59.049Z"
    }
}
```

then you can access API resources
