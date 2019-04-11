import subprocess
import os
import time
import random

example = '/root/China-rnode-test-session/examples'
files = os.listdir(example)

contracts = [os.path.join(example, i) for i in files if i.endswith('.rho')]

for i in contracts:
    cmd = 'rnode eval {}'.format(i, os.path.basename(i)).split()
    output = subprocess.check_output(cmd)
    with open(os.path.basename(i) +'.cost' , 'wb') as f:
        f.write(output)
# while 1:
#     print("deploy")
#     deploy_cmd = 'rnode deploy --phlo-limit 10000000000 --phlo-price 1 {}'.format(random.choice(contracts)).split(' ')
#     subprocess.run(deploy_cmd)
#
#     print('propose')
#     subprocess.run(['rnode','propose'])
#
#     time.sleep(60)

