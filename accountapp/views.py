from django.http import HttpResponse
from django.shortcuts import render


def hello_world(requset):
    return render(requset, 'accountapp/hello.html')
