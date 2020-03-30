Python Driver for UNI-T UTD2202CE Oscilloscope
===========================================================

Fork from [dnet/ut2025b](https://github.com/dnet/ut2025b). [Original website](http://hsbp.org/ut2025b)

Support
-------
This driver works on UTD2202CE DSO.

[Original code](https://github.com/graup/ut2000-read) tested with

- UT2025B
- UT2102C

Probably compatible with other UT2000 series devices as well.

Setup
-----

- Install PyUSB 1.0 (https://github.com/walac/pyusb)
- Install PIL

Usage
-----

* Connect the scope via USB
* `python getshot.py > foo.bin`

You should do this as root / Administrator as it manipulates USB directly.
In case of an "Image transfer error, try again" message, just keep trying,
after a few attempts it starts to work and continues to do so, as long as the
scope is connected to the PC.

If the exit value is 0, and no output is printed on stderr, the binary
screenshot is ready in the `foo.bin` file. It can be converted to PNG by
issuing the following command.

* `python pd2png.py foo.bin foo.png`

Check `python pd2png.py -h` for optional parameters. You can specify a colormap which transforms
the 4-bit image to RGB values. The default is a simple color map with light background,
but the format is straightforward enought for everyone to create new and better ones. A colormap
file must contain at least 16 lines, each containing three numbers (red, green,
and blue values 0-255) separated by comma. You can optionally also magnify the resulting image.

You can do everything in one step:

* `python getshot.py | python pd2png.py - foo.png`

License
-------

The whole project is licensed under MIT license.

Dependencies
------------

 - Python 2.x (tested with 2.7)
 - PyUSB 1.0 (http://sourceforge.net/projects/pyusb/)
