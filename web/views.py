from django.shortcuts import render, redirect
from .models import *
import random

def index(request):
	news = News.objects.all().order_by('-id')[:3]
	project = Project.objects.all().order_by('-id')[:3]
	data = {
		'News': news,
		'Project': project
	}
	return render(request, 'page/index.html', data)

def news(request):
	news = News.objects.all().order_by('-id')
	for i in news:
		print(i.Date)
	data = {
		'news': news
	}
	return render(request, 'page/news.html', data)

def newspage(request, id):
	news = News.objects.get(id=id)
	data = {
		'News': news
	}
	return render(request, 'page/newspage.html', data)

def doc(request):
	doc = Doc.objects.all().order_by('-id')
	data = {
		'Doc': doc
	}
	return render(request, 'page/doc.html', data)

def district(request):
	district = District.objects.all()
	data = {	
		'District': district
	}
	return render(request, 'page/district.html', data)

def district_projects(request, id):
	district = District.objects.get(id=id)
	project = Project.objects.filter(District=id)
	data = {
		'District': district,
		'Project': project
	}
	return render(request, 'page/districtprojects.html', data)

def project(request, id):
	project = Project.objects.get(id=id)
	data = {
		'Project': project
	}
	return render(request, 'page/project.html', data)

def contacts(request):
	return render(request, 'page/contacts.html')