from django.urls import include, path
from django.views.generic.base import TemplateView
from . import views

urlpatterns = [
    path('', views.index, name='home'),
    path('news', views.news),
    path('news/<int:id>', views.newspage),
    path('doc', views.doc),
    path('district', views.district),
    path('district/<int:id>', views.district_projects),
    path('project/<int:id>', views.project),
    path('contacts', views.contacts),
    path('robots.txt', TemplateView.as_view(template_name="robots.txt", content_type="text/plain"))
    ]