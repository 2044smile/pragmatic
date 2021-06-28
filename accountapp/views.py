from django.http import HttpResponse
from django.shortcuts import render


def hello_world(requset):

    if requset.method == "POST":
        return render(requset, 'accountapp/hello.html', context={'text': 'POST METHOD!!!'})
    else:
        return render(requset, 'accountapp/hello.html', context={'text': 'GET METHOD!!!'})
