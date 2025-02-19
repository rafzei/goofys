# goofys

[Goofys](https://github.com/kahing/goofys) S3 Filesystem Docker Implementation.  
Fork of [Cloudposse](https://github.com/cloudposse/goofys)

This image is available [here](https://hub.docker.com/r/rafzei/goofys)

## Env variables and default values

``` bash
MOUNT_DIR /mnt/s3
REGION us-east-1
BUCKET teleport-bucket
STAT_CACHE_TTL 1m0s
TYPE_CACHE_TTL 1m0s
DIR_MODE 0700
FILE_MODE 0600
UID 1000
GID 1000
MOUNT_ACCESS nonempty
CREATE_USER False
NEW_GROUP group
NEW_USER user
```

If CREATE_USER = True, new group NEW_GROUP(default:group) and new user NEW_USER (default:user) will be created

## Examples

```sh
export AWS_ACCESS_KEY_ID=`grep aws_access_key_id ~/.aws/credentials | awk '{print $3}'`
export AWS_SECRET_ACCESS_KEY=`grep aws_secret_access_key ~/.aws/credentials | awk '{print $3}'`

docker run -it --rm --privileged -e BUCKET="bucket" -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY rafzei/goofys
```

By default S3 bucket will be mounted under `/mnt/s3`, but you could customize the mount point by setting `MOUNT_DIR` environment variable.


## Help

**Got a question?**

File a GitHub [issue](https://github.com/cloudposse/goofys/issues), send us an [email](mailto:hello@cloudposse.com) or reach out to us on [Gitter](https://gitter.im/cloudposse/).


## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/cloudposse/goofys/issues) to report any bugs or file feature requests.

### Developing

If you are interested in being a contributor and want to get involved in developing `goofys`, we would love to hear from you!
Shoot us an [email](mailto:hello@cloudposse.com).

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull request** so that we can review your changes

**NOTE:** Be sure to merge the latest from "upstream" before making a pull request!


## License

[APACHE 2.0](LICENSE) © 2018 [Cloud Posse, LLC](https://cloudposse.com)

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.


## About

The `goofys` Docker implementation is maintained and funded by [Cloud Posse, LLC][website].

![Cloud Posse](https://cloudposse.com/logo-300x69.png)


Like it? Please let us know at <hello@cloudposse.com>

We love [Open Source Software](https://github.com/cloudposse/)!

See [our other projects][community]
or [hire us][hire] to help build your next cloud platform.

  [website]: https://cloudposse.com/
  [community]: https://github.com/cloudposse/
  [hire]: https://cloudposse.com/contact/


### Contributors

| [![Erik Osterman][erik_img]][erik_web]<br/>[Erik Osterman][erik_web] | [![Andriy Knysh][andriy_img]][andriy_web]<br/>[Andriy Knysh][andriy_web] |
|-------------------------------------------------------|------------------------------------------------------------------|

  [erik_img]: http://s.gravatar.com/avatar/88c480d4f73b813904e00a5695a454cb?s=144
  [erik_web]: https://github.com/osterman/
  [andriy_img]: https://avatars0.githubusercontent.com/u/7356997?v=4&u=ed9ce1c9151d552d985bdf5546772e14ef7ab617&s=144
  [andriy_web]: https://github.com/aknysh/
