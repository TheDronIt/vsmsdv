from django.db import models

class News(models.Model):
	class Meta:
		verbose_name = 'Новости'
		verbose_name_plural = 'Новости'
		
	Title = models.CharField(max_length=120, verbose_name='Заголовок')
	Image = models.ImageField(upload_to='news/', verbose_name='Изображение')
	Text = models.TextField(verbose_name='Содержание')
	Date = models.DateField(verbose_name='Дата')

	def __str__(self):
		return str(self.id)+" | "+str(self.Title)


class Doc(models.Model):
	class Meta:
		verbose_name = 'Документы'
		verbose_name_plural = 'Документы'

	Title = models.CharField(max_length=120, verbose_name='Название')
	Description = models.TextField(verbose_name='Описание', blank=True)
	File = models.FileField(verbose_name='Файл', upload_to ='file/')

	def __str__(self):
		return str(self.Title)


class District(models.Model):
	class Meta:
		verbose_name = 'Районы'
		verbose_name_plural = 'Районы'
	Name = models.CharField(verbose_name="Район", max_length=50)

	def __str__(self):
		return str(self.id)+" | "+str(self.Name)


class Project(models.Model):
	class Meta:
		verbose_name = 'Проекты'
		verbose_name_plural = 'Проекты'

	Title = models.CharField(max_length=120, verbose_name='Заголовок')
	Image = models.ImageField(upload_to='prject/', verbose_name='Изображение')
	District = models.ForeignKey(District, on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Район")
	Text = models.TextField(verbose_name='Содержание')
	Date = models.DateField(verbose_name='Дата')

	def __str__(self):
		return str(self.id)+" | "+str(self.Title)
