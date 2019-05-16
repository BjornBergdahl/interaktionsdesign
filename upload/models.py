from django.db import models

# Create your models here.

class Photo(models.Model):
    title = models.TextField()
    cover = models.ImageField(upload_to = 'images/')
    uploader_id = models.IntegerField(blank=True, null=True)
    upload_date = models.DateField(blank=True, null=True)

    def __str__(self):
        return self.title
