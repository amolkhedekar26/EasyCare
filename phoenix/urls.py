"""phoenix URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.conf.urls import url
from django.urls import path,include
from django.conf import settings
from django.conf.urls.static import static
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.next_page,name="index"),
    url(r'^index/$', views.next_page,name="index"),
    #path('index/', views.next_page),
    url(r'^email/$', views.email_page, name="email"),
    path('subs/',views.subs_page,name="subs"),
    url(r'^hospital_page/$',views.hospital_page,name="hospital"),
    url(r'^doctor/$',views.doctor_page,name="doctor"),
    url(r'^enquiry/$',views.enquiry_page,name="enquiry"),
    url(r'^medicine/$',views.medicine_page,name="medicine"),
    url(r'^medicinelist/$',views.medicinelist,name="medicinelist"),
    url(r'^doctorlist/$',views.doctorlist,name="doctorlist"),
    url(r'^hospitallist/$',views.hospitallist,name="hospitallist"),
    #path('hospitallist/<location>',views.hospitallisttt,name="hospitallist"),
    url(r'^detail/$',views.detail,name="detail"),
    url(r'^amol/(?P<h_name>.*)/$',views.amol,name="amol"),
    url(r'^med/(?P<m_dis>.*)/$',views.med,name="med"),
    path('login_view/',views.login_view,name="login_view"),
    url(r'^signup/$',views.signup,name="signup"), 
    path('logout_view/', views.logout_view,name='logout_view'),
    path('view_profile/', views.view_profile, name='view_profile'),
    path('edit_profile/', views.edit_profile, name='edit_profile'),
    path('change_password/', views.change_password, name='change_password'),
    path('password/', views.change_password, name='password'),
    path('enq/', views.enq, name='enq'),
    path('submit_query/', views.submit_query, name='submit_query'),
    url(r'^blog/(?P<tag>.*)/$', views.blog, name="blog"),
    #url(r'^blog/(?P<user_name>.*)/(?P<tag>.*)$', views.blog, name="tagblog"),
    path('answer/', views.answer, name='answer'),
    url(r'^subscr/$',views.subscr,name="subscr"),
    path('feedback/',views.feedback,name="feedback"),
    path('feedbacksave/',views.feedbacksave,name="feedbacksave"),
    path('asch/',views.asch,name="asch"),
    path('accounts/', include('django.contrib.auth.urls'))
    

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL,
                          document_root=settings.STATIC_ROOT)
