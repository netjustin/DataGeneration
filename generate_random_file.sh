python3 -c "
# write a random n * [B|KB|MB|GB] binary file to disk
import time, random
B=1
KB=1024*B
MB=1024*KB
GB=1024*MB

# define the file size
n = 1
unit_size = MB
limit = n * unit_size

def generate_data(limit=KB, unit_size=KB):
    assert limit >= unit_size
    data, data_unit = b'', b''
    for i in range(unit_size):
        random_byte_int = int(random.random()*256)
        data_unit += bytes([random_byte_int])
    for i in range(int(limit/unit_size)):
        data += data_unit
    return data

data = generate_data(limit=limit, unit_size=unit_size)
filename = 'random'
with open(filename, 'wb') as f:
    f.write(data)
"