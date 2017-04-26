# WebInspectorImages

To setup:

~~~
virtualenv py_modules
source py_modules/bin/activate
pip install scour==0.30
npm install tanty/svgo
PATH="$PWD/node_modules/.bin:$PATH"
~~~

To build images:

~~~
make -j8
~~~
