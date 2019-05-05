# TankerTrackers/docker-horizon

This is the Docker container for Laravel Horizon, used in the production environment for [TankerTrackers.com](https://tankertrackers.com).

## Details

Just like `tankertrackers/docker-websockets`, this container is based on `breki/common`, a container for building PHP web services. Also like the websocket service, it requires a Laravel installation to be mounted on `/var/www` in the container, and assumes that `laravel/horizon` is installed there as well.

This container will then spin up the worker process(es) for Horizon, ensuring that all work is carried our promptly and efficiently. Log files are stored at `/var/log/horizon/`.

## Copyright

Copyright 2019, TankerTrackers.com, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.