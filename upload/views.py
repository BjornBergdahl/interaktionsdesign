from django.shortcuts import render

from django.views.generic import ListView, CreateView
from django.urls import reverse_lazy

from .forms import PhotoUploadForm
from .models import Photo


class HomePageView(ListView):
    model = Photo
    template_name = 'home.html'


class CreatePostView(CreateView):
    model = Photo
    form_class = PhotoUploadForm
    template_name = 'upload.html'
    success_url = reverse_lazy('home')
