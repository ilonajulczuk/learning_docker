from rest_framework import generics
from rest_framework import mixins, generics, views

from rest_framework.response import Response
from rest_framework import status

from .models import SecretMessage
from .serializers import SecretMessageSerializer


class MessagesList(mixins.CreateModelMixin, generics.GenericAPIView):
    model = SecretMessage
    serializer_class = SecretMessageSerializer
    
    def post(self, request, *args, **kwargs):
        """Create new Secret Message"""
        return self.create(request, *args, **kwargs)


class MessagesDetail(mixins.RetrieveModelMixin, generics.GenericAPIView):
    model = SecretMessage
    serializer_class = SecretMessageSerializer
    queryset = SecretMessage.objects.all()
    
    def get(self, request, *args, **kwargs):
        """Get details of SecretMessage"""
        return self.retrieve(request, *args, **kwargs)
