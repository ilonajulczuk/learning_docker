from rest_framework import serializers
from .models import SecretMessage


class SecretMessageSerializer(serializers.ModelSerializer):
    key = serializers.SlugField(write_only=True)

    class Meta:
        model = SecretMessage
        fields = ('key', 'text',)
    
    def validate_key(self, value):
        """
        Check that the key is unique.
        """
        if SecretMessage.objects.filter(key=value).exists():
            raise serializers.ValidationError("Message with such key already exists.")
        return value