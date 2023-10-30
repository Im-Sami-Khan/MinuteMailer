# MinuteMailer

This is simple application where you can create messages and register subscribers. After every one minute, every subscriber will receive a unique message on email. Once a subscriber has received all messages, they will not receive any more.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Installing

* Ruby version
 3.0.2

 ```
 rvm install 3.0.2
 ```
* Database
postgresql

```
brew install postgres
```

cd one-crew
```

* Install Gems
```
bundle install
```

* Database creation

```
  rails db:create
  rails db:migrate
```

* Populate Database with initial data
```
rails db:seed

### Using API

* Run app on port 3000
```
bundle exec rails s
```
* Register subscriber
- URL
````
http://localhost:3000/api/v1/subscriber
````
- Request method
```
Post
```
- sample Payload
```
{
  "email": "client@example.com",
  "name": "client"
}
```

* Update subscriber status
- URL
````
http://localhost:3000/api/v1/subscriber/1
````
- Request method
```
PATCH
```

* Destroy subscriber
- URL
````
http://localhost:3000/api/v1/subscriber/1
````
- Request method
```
Destroy
```

* Register message
- URL
````
http://localhost:3000/api/v1/message
````
- Request method
```
Post
```
- sample Payload
```
{
  "text": "sample text"
}
```

* Update message
- URL
````
http://localhost:3000/api/v1/message/1
````
- Request method
```
PATCH
```
- sample Payload
```
{
  "text": "updated sample text"
}
```

* Destroy message
- URL
````
http://localhost:3000/api/v1/message/1
````
- Request method
```
Destroy
```

### Additional functionalities

* There is a functionality called letter opener, all the messages received to subscriber are viewable on it.

* By implementing active model seriallizers we can test the APIs thorugh postman.

