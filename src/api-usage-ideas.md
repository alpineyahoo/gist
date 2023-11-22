# API Usage Ideas

### [numbersapi.com](http://numbersapi.com)

```sh
$ curl http://numbersapi.com/2023 # same as curl http://numbersapi.com/2023/trivia
$ curl http://numbersapi.com/13/math
$ curl http://numbersapi.com/9/11/date
$ curl http://numbersapi.com/53/math?write # document.write("53 is ...");
```

- [stdout1](http://numbersapi.com/2023)
- [stdout2](http://numbersapi.com/13/math)
- [stdout3](http://numbersapi.com/9/11/date)
- [stdout4](http://numbersapi.com/53/math?write)

### [loripsum.net](https://loripsum.net)

```sh
$ curl https://loripsum.net/api/5/medium/plaintext
```

- [stdout](https://loripsum.net/api/5/medium/plaintext)

### [api-ninjas.com](https://api-ninjas.com)

```sh
$ curl https://api.api-ninjas.com/v1/loremipsum?paragraphs=5
```

- [stdout](https://api.api-ninjas.com/v1/loremipsum?paragraphs=5)

### [OpenGraph.io](https://www.opengraph.io)
### [Lorem Picsum](https://picsum.photos)

```sh
$ curl https://picsum.photos/600/400
$ curl https://picsum.photos/id/11/900/600
$ curl https://picsum.photos/300/200?grayscale
$ curl https://piscum.photos/400/?blur
$ curl https://piscum.photos/600/400/?blur=5
```

- [stdout1](https://picsum.photos/600/400)
- [stdout2](https://picsum.photos/id/11/900/600)
- [stdout3](https://picsum.photos/300/200?grayscale)
- [stdout4](https://picsum.photos/400/?blur)
- [stdout5](https://picsum.photos/600/400/?blur=5)

### [Pexels API](https://www.pexels.com/api/)
