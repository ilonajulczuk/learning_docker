from rest_framework import serializers
from messages.models import SecretMessage


class SecretMessageSerializer(serializers.ModelSerializer):
    key = serializers.SlugField(write_only=True)
    
    class Meta:
        model = SecretMessage
        fields = ('key', 'text',)