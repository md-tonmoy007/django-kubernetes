from django.http import HttpResponse

def simple_view(request):
    return HttpResponse("Hello, this is a simple view!")