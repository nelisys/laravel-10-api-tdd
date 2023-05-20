# การติดตั้ง Laravel 10 - Installation

การติดตั้ง Laravel 10 สามารถทำได้หลายวิธี แต่วิธีที่แนะนำคือการใช้ Laravel Installer ช่วยในการติดตั้ง

## ติดตั้ง Laravel Installer

ใช้คำสั่ง composer ระบุออปชัน global เพื่อติดตั้ง Laravel Installer

```sh
$ composer global require laravel/installer
```

หลังการติดตั้ง จะสามารถรันคำสั่ง `laravel` ได้

ตัวอย่างการรันคำสั่ง `laravel`

```sh
$ laravel
Laravel Installer 4.5.0

Usage:
  command [options] [arguments]

Options:
  -h, --help            Display help for the given command. ...
  -q, --quiet           Do not output any message
  -V, --version         Display this application version
      --ansi|--no-ansi  Force (or disable --no-ansi) ANSI output
  -n, --no-interaction  Do not ask any interactive question
  -v|vv|vvv, --verbose  Increase the verbosity of messages: ...

Available commands:
  completion  Dump the shell completion script
  help        Display help for a command
  list        List commands
  new         Create a new Laravel application
```

แต่ละคำสั่ง (command) จะมีออปชันเพิ่มเติม ซึ่งสามารถดูได้จากการระบุออปชัน `--help` ต่อท้ายคำสั่ง

เช่น ต้องการดูออปชันของคำสั่ง `new`

```sh
$ laravel new --help
Description:
  Create a new Laravel application

Usage:
  new [options] [--] <name>

Arguments:
  name

Options:
    --dev       Installs the latest "development" release
    --git       Initialize a Git repository
    ...
    --pest      Installs the Pest testing framework
    ...
```

## ติดตั้ง Laravel 10

รันคำสั่ง `laravel` ระบุคำสั่ง `new` เพื่อสร้างแอปใหม่

ระบุออปชัน `--pest` เพื่อเลือกใช้ `pest` ในการเขียน test

```sh
$ laravel new --pest my-api-tdd
```

ผลลัพธ์ จะมีโฟลเดอร์ `my-api-tdd` ถูกสร้างขึ้นมา

```sh
$ cd my-api-tdd/

$ ls -l
total 680
-rw-r--r--   1 supasin  staff    4158 May 13 01:39 README.md
drwxr-xr-x   7 supasin  staff     224 May 13 01:39 app
-rwxr-xr-x   1 supasin  staff    1686 May 13 01:39 artisan
drwxr-xr-x   4 supasin  staff     128 May 13 01:39 bootstrap
-rw-r--r--   1 supasin  staff    1896 May 20 19:32 composer.json
-rw-r--r--   1 supasin  staff  319453 May 20 19:32 composer.lock
drwxr-xr-x  17 supasin  staff     544 May 13 01:39 config
drwxr-xr-x   6 supasin  staff     192 May 13 01:39 database
-rw-r--r--   1 supasin  staff     248 May 13 01:39 package.json
-rw-r--r--   1 supasin  staff    1142 May 13 01:39 phpunit.xml
drwxr-xr-x   6 supasin  staff     192 May 13 01:39 public
drwxr-xr-x   5 supasin  staff     160 May 13 01:39 resources
drwxr-xr-x   6 supasin  staff     192 May 13 01:39 routes
drwxr-xr-x   5 supasin  staff     160 May 13 01:39 storage
drwxr-xr-x   7 supasin  staff     224 May 20 19:32 tests
drwxr-xr-x  48 supasin  staff    1536 May 20 19:32 vendor
-rw-r--r--   1 supasin  staff     263 May 13 01:39 vite.config.js
```

## git init

รันคำสั่ง `git` เพื่อสร้าง repository สำหรับเก็บการเปลี่ยนแปลง

```sh
$ git init
Initialized empty Git repository in /Users/supasin/Sites/my-api-tdd/.git/

$ git add .

$ git commit -m 'init with Laravel 10'

$ git status
On branch main
nothing to commit, working tree clean
```

\pagebreak
