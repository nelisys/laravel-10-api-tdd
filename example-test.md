# รันไฟล์เทสตัวอย่าง - ExampleTest

ดีฟอลต์จากการติดตั้ง Laravel 10 ใหม่เลย จะมีไฟล์ test ถูกติดตั้งมาด้วย

โดยถ้าเราใช้คำสั่ง `laravel` ระบุออปชัน `--pest` ไฟล์ test จะถูกสร้างขึ้นมาสองไฟล์

คือไฟล์ `tests/Unit/ExampleTest.php`

```php
<?php

test('that true is true', function () {
    expect(true)->toBeTrue();
});
```

และไฟล์ `tests/Feature/ExampleTest.php`

```php
<?php

it('returns a successful response', function () {
    $response = $this->get('/');

    $response->assertStatus(200);
});
```

เราสามารถรันคำสั่ง `php artisan test` เพื่อรัน test ได้


```sh
$ php artisan test

   PASS  Tests\Unit\ExampleTest
  ✓ that true is true                                                    0.01s

   PASS  Tests\Feature\ExampleTest
  ✓ it returns a successful response                                     0.10s

  Tests:    2 passed (2 assertions)
  Duration: 0.18s
```
