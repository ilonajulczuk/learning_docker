from django.db import models


class SecretMessage(models.Model):
    key = models.CharField(max_length=32, primary_key=True)
    text = models.TextField()
