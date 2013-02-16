MEGA Todo 0.1
-------------

A reimplementation of [megtodo](https://github.com/enocom/megtodo), this time using ActiveRecord.

This marks the completion of our MVP. 

Now, the fun begins...


Installation
------------

Run ```bundle``` first! Then, migrate the database with:

```
rake db:migrate
```

Finally, soft link the app. From the top level directory of the application repo, the command is:

```
ln -s ./todo /usr/local/bin/todo
```

Usage
-----

After adding a soft link, run ```todo help``` for available commands.

Testing
-------

For manual testing using ```sqlite3```, make sure to populate the database.

```
rake db:populate
```

and VOILA!! A populated, working database to test on!


Colophon
--------

MEGA is [Matthew](https://github.com/matthewhaguemh), [Eno](https://github.com/enocom), [George](https://github.com/6e0r9e), and [Alyssa](https://github.com/alyraz).

Mega ToDo was written one afternoon at [DevBootcamp](http://www.devbootcamp.com).

Screenshot
----------

Now with bash colors!!!!

![Screenshot](https://raw.github.com/enocom/mega_todo/master/screen_shot.png)