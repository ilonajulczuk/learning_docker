from django.conf.urls import patterns, url

from messages import views


urlpatterns = patterns(
    '',
    url(r'^$', views.MessagesList.as_view(), name='messages_list'),
    url(r'^(?P<pk>[0-9a-z_]+)/$', views.MessagesDetail.as_view(),
        name='messages_detail'),
)
