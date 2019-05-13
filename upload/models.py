from django.db import models

# Create your models here.

class Photo(models.Model):
    preview_blob = models.BinaryField()
    full_blob = models.BinaryField()
    uploader_id = models.IntegerField()
    upload_date = models.DateField()
