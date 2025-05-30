from django.contrib import admin
from .models import membre, tontines,pret, cotisation,epargne,versementsol,versementcotis,sanction,aide,remboursement,don
# Register your models here.
from django.contrib.admin.models import LogEntry
from django.utils.html import format_html



admin.site.register(membre)
admin.site.register(tontines)
admin.site.register(pret)
admin.site.register(don)
admin.site.register(sanction)
admin.site.register(versementsol)
admin.site.register(versementcotis)
admin.site.register(aide)
admin.site.register(epargne)
admin.site.register(remboursement)
admin.site.register(cotisation)


