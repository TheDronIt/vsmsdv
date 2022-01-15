# Generated by Django 3.2.10 on 2021-12-19 02:10

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0005_auto_20211219_1209'),
    ]

    operations = [
        migrations.CreateModel(
            name='District',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Name', models.CharField(max_length=50, verbose_name='Район')),
            ],
            options={
                'verbose_name': 'Районы',
                'verbose_name_plural': 'Районы',
            },
        ),
        migrations.AlterField(
            model_name='project',
            name='District',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='web.district', verbose_name='Район'),
        ),
        migrations.DeleteModel(
            name='Districts',
        ),
    ]