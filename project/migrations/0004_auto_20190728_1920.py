# Generated by Django 2.2.2 on 2019-07-28 19:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('project', '0003_auto_20190727_1459'),
    ]

    operations = [
        migrations.AlterField(
            model_name='doctor',
            name='doc_mobile',
            field=models.BigIntegerField(),
        ),
    ]
