from django.contrib import admin
from .models import *
from django import forms
from ckeditor_uploader.widgets import CKEditorUploadingWidget

class NewsAdminForm(forms.ModelForm):
    Text = forms.CharField(widget=CKEditorUploadingWidget())
    class Meta:
        model = News
        fields = '__all__'

class NewsAdmin(admin.ModelAdmin):
    form = NewsAdminForm 


class ProjectAdminForm(forms.ModelForm):
    Text = forms.CharField(widget=CKEditorUploadingWidget())
    class Meta:
        model = Project
        fields = '__all__'

class ProjectAdmin(admin.ModelAdmin):
    form = ProjectAdminForm 

admin.site.register(News, NewsAdmin)
admin.site.register(Doc)
admin.site.register(District)
admin.site.register(Project, ProjectAdmin)