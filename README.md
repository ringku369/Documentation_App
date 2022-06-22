# Welcome to the Project Documentation

- [Installation](#installation)
- [Usage](#usage)
- [File Upload Documentation](#file-upload-documentation)


## Installation

```sh
git clone this-url
```

```sh
cd project-root
```

##### Install [composer](https://getcomposer.org/) dependencies of this project by running

```sh
composer install
```

##### Copy `.env-example` to `.env` and configure your database and other connection.

##### Run this two command also

```shell
php artisan key:generate
php artisan storage:link 
```

##### Run this command for migration and seeder

```shell
php artisan migrate:fresh --seed
```


##### Run this command to clear all type of cache

```shell
php artisan cache:clear
```

```shell
php artisan optimize:clear
```


##### Run this command to start application

```shell
php artisan serve
```

## Usage

Go to the link `/user/login` like `http://127.0.0.1:8000/admin/login` for login and enter the system admin credentials below.

##### Demo super admin credentials

```shell
email: admin@gmail.com
password: password
```

## File Upload Documentation

If file or image is not displayed after uploading, please run this bellow command

```shell
php artisan storage:link 
```
