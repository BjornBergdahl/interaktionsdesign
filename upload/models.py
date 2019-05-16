from django.db import models

# Create your models here.

class Photo(models.Model):
    title = models.TextField()
    cover = models.ImageField(upload_to = 'images/')
    preview_blob = models.BinaryField() # unneccessary?
    full_blob = models.BinaryField()    # unneccessary? 
    uploader_id = models.IntegerField()
    upload_date = models.DateField()

    def __str__(self):
        return self.title
