from django.shortcuts import render

from django.views.generic import ListView
from .models import Photo


class HomePageView(ListView):
    model = Photo
    template_name = 'home.html'
