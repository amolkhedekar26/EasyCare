from django.shortcuts import render, reverse, HttpResponseRedirect, redirect,HttpResponse
from project.models import Medicine, Doctor, Hospital, Service, Question, Profile,Feedback
from django.contrib.auth import (
    authenticate,
    get_user_model,
    login,
    logout
)
from django.contrib.auth.models import User
from .forms import *
from django.contrib.auth.forms import UserChangeForm, PasswordChangeForm, PasswordResetForm

from django.contrib.auth.decorators import login_required


def signup(request):
    forms = {}
    if request.method == 'POST':
        form = SignUpForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)
            user.is_active = True
            user.save()
        
            return redirect('/login_view')
        else:
            form=SignUpForm(request.POST)

    else:
        form = SignUpForm()
    #if form.errors:
       # for key in form.errors:
           # forms[key] = (form.errors[key])[0]
    return render(request, 'mysignup.html', {'forms': form})



def login_view(request):
    next = request.GET.get('next')
    form = LoginForm(request.POST or None)
    if form.is_valid():
        username = form.cleaned_data.get('username')

        password = form.cleaned_data.get('password')

        user = authenticate(username=username, password=password)

        login(request, user)
        if next:
            return redirect(next)
        return redirect('/')

    context = {
        'form': form,
    }
    return render(request, "registration/login.html", context)


def home_page(request):
    return render(request, 'base.html')


def next_page(request):
    return render(request, 'index.html')


def email_page(request):
    import smtplib
    server = smtplib.SMTP('smtp.gmail.com', 587)
    server.ehlo()
    server.starttls()
    server.login("amlu9421@gmail.com", "bluestar771999")
    msg = "Hello!" 
    server.sendmail("amlu9421@gmail.com", "khedekaramol003@gmail.com", msg)
    return render(request, 'index.html')


def subs_page(request):
    return render(request, 'subs.html')


@login_required(login_url='/login_view/')
def enquiry_page(request):
    return render(request, 'enquiry_form.html')


def hospital_page(request):
    return render(request, 'hospital.html')


def doctor_page(request):
    return render(request, 'newdoctor.html')


def medicine_page(request):
    return render(request, 'medicine.html')


def medicinelist(request):
    if 'cold' in request.POST:
        med = Medicine.objects.filter(med_disaese='cold')
    if 'fever' in request.POST:
        med = Medicine.objects.filter(med_disaese='fever')
    if 'cough' in request.POST:
        med = Medicine.objects.filter(med_disaese='cough')
    if 'headache' in request.POST:
        med = Medicine.objects.filter(med_disaese='headache')

    return render(request, 'medicinelist.html', {'medis': med})


def doctorlist(request):
    if 'location' in request.POST:
        data = request.POST['location']
        doc = Doctor.objects.filter(doc_location=data)
    if 'speciality' in request.POST:
        record = request.POST['speciality']
        doc = Doctor.objects.filter(doc_speciality=record)
    if 'experience' in request.POST:
        exp = request.POST['experience']
        doc = Doctor.objects.filter(doc_experience=exp)

    return render(request, 'doctorlist.html', {'doctors': doc})


def hospitallist(request):
    if 'location' in request.POST:
        data = request.POST['location']
        hosp = Hospital.objects.filter(h_location=data)
    if 'speciality' in request.POST:
        record = request.POST['speciality']
        hosp = Hospital.objects.filter(h_speciality=record)
    if 'rating' in request.POST:
        exp = request.POST['rating']
        hosp = Hospital.objects.filter(h_rating=exp)

    return render(request, 'hospitallist.html', {'hospitals': hosp})
def hospitallisttt(request,location):
    
    hosp = Hospital.objects.filter(h_location=location)
    print(hosp)
    return render(request, 'hospitallist.html', {'hospitals': hosp})
    
def detail(request):

    if 'Parkar Hospital' in request.POST:
        data = Hospital.objects.filter(h_name='Parkar Hospital')

    return render(request, 'detail.html', {'hospit': data})


def amol(request, h_name):
    h_n = h_name
    da = Hospital.objects.get(h_name=h_name)
    se = Service.objects.filter(h_name=da.id)
    return render(request, 'amol.html', {'ho': da, 'service': se})


def med(request, m_dis):
    print(m_dis)
    med = Medicine.objects.filter(med_disaese=m_dis)
    return render(request, 'med.html', {'meds': med})


def logout_view(request):
    logout(request)
    return redirect('/')


@login_required
def view_profile(request):
    return render(request, 'view_profile.html', {'user': request.user})


def edit_profile(request):
    if request.method == "POST":
        form = EditProfileForm(request.POST, instance=request.user)

        if form.is_valid():
            form.save()
            return redirect('/view_profile/')
    else:
        form = EditProfileForm(instance=request.user)
        name = request.user.email
        first = request.user.first_name
        last = request.user.last_name

    return render(request, 'edit_profile.html', {'name': name, 'last': last, 'first': first})


def change_password(request):
    if request.method == "POST":
        form = PasswordChangeFormm(data=request.POST, user=request.user)

        if form.is_valid():
            form.save()
            return redirect('/login_view/')
    else:
        form = PasswordChangeFormm(user=request.user)
    return render(request, 'change_password.html', {'form': form})


@login_required(login_url='/login_view/')
def enq(request):
    return render(request, 'enq.html')


def submit_query(request):
    user_name = request.POST["user_name"]
    query = request.POST["query"]
    doc_name = request.POST["doctor"]
    print(doc_name)
    if doc_name == "madhavi":
        tag = 'heart'
    if doc_name == "samir":
        tag = 'heart'
    if doc_name == "dilip":
        tag = 'physic'
    if doc_name == "mandar":
        tag = 'physic'
    if doc_name == "mahesh":
        tag = 'skin'
    if doc_name == "anand":
        tag = 'skin'
    if doc_name == "manasi":
        tag = 'gyn'
    if doc_name == "riya":
        tag = 'gyn'

    print(tag)
    q = Question(user_name=user_name, doc_name=doc_name, query=query, tag=tag)
    q.save()
    print("saved")
    us = User.objects.get(username=doc_name)
    print(us.email)
    import smtplib
    server = smtplib.SMTP('smtp.gmail.com', 587)
    server.ehlo()
    server.starttls()
    # Next, log in to the server
    server.login("amlu9421@gmail.com", "")

    # Send the mail
    # The /n separates the message from the headers
    msg = "Hello" + request.user.username + "  have asked you a question."
    server.sendmail("amlu9421@gmail.com", us.email, msg)
    return render(request, 'querysubmit.html')


def blog(request, tag):
    #user = user_name
    tag = tag
    q = Question.objects.filter(
        user_name=request.user.username).order_by('-id')[:10]
    d_q = Question.objects.filter(
        doc_name=request.user.username).order_by('-id')[:10]
    return render(request, 'blog2.html', {'question': q, 'myquestion': d_q})


def answer(request):
    answer = request.POST["d_answer"]
    query = request.POST["query"]
    user_name = request.POST["user_name"]
    doc_name = request.POST["doc_name"]
    posted = True
    tag = request.POST["tag"]
    Question.objects.filter(query=query).update(
        posted=posted, answer=answer, doc_name=doc_name)
    q = Question.objects.filter(
        doc_name=request.user.username).order_by('-id')[:10]
    us = User.objects.get(username=user_name)
    print(us.email)
    import smtplib
    server = smtplib.SMTP('smtp.gmail.com', 587)
    server.ehlo()
    server.starttls()
    # Next, log in to the server
    server.login("amlu9421@gmail.com", "")

    # Send the mail
    # The /n separates the message from the headers
    msg = user_name + " ,\n" + doc_name + " has replied to your question."
    server.sendmail("amlu9421@gmail.com", us.email, msg)
    # = Answer.objects.filter(user_name='rajesh')
    return render(request, 'blog2.html', {'myquestion': q})


def subscr(request):
    return render(request, 'feedback.html')


def querysubmit(request):
    return render(request, 'querysubmit.html')

def feedback(request):
    return render(request,"feedbakform.html")

def feedbacksave(request):
    name=request.POST["username"]
    feed=request.POST["feedback"]
    f=Feedback(name=name,feed=feed)
    f.save()
    return render(request,"feedback2.html")

def asch(request):
    return render(request,"asch.html")
