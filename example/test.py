import subprocess
import time

cmd = "./query_leaf.exe"

# returns output as byte string
proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

while proc.poll() is None:
    time.sleep(1);
    print(".")

print(">>>>>>>")
loop = True
for i in range(8):
    print(proc.stdout.readline().decode('utf-8'))
print(">>>>>>>")
