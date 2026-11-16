import sys
import platform

print("Python version : ", sys.version.split()[0])
print("Python path : ", sys.executable)
print("OS : ", platform.system(), platform.release())
