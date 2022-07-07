# Generated by Django 2.2.2 on 2019-07-30 13:30

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('project', '0005_doctor_doc_location'),
    ]

    operations = [
        migrations.CreateModel(
            name='Hospital',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('h_name', models.CharField(max_length=120)),
                ('h_address', models.CharField(max_length=120)),
                ('h_contact', models.BigIntegerField()),
                ('h_speciality', models.CharField(max_length=120)),
                ('h_location', models.CharField(max_length=120)),
                ('h_rating', models.IntegerField()),
                ('h_noofdoctors', models.IntegerField()),
                ('h_time', models.CharField(max_length=120)),
            ],
        ),
        migrations.CreateModel(
            name='Service',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('s_name', models.CharField(max_length=120)),
                ('h_name', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='project.Hospital')),
            ],
        ),
    ]
