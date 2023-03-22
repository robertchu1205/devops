out_path = '/tf/aqumon/qe/test-scp.out'
f = open(out_path, 'r')
f_content = f.read()

line_array = list(f_content.split('\n'))
info_dict = {'1 M': [], '5 M': [], '10 M': [], '50 M': [], '100 M': [], '200 M': [], '500 M': [], '1000 M': []}
for i,x in enumerate(line_array):
  if (i%5) == 0:
    start_time = x.split(': ')[1].split(',')[0] # time string
    upload_speed = 0 # MBps
    download_speed = 0 # MBps
    key_dict = x.split(': ')[-1]
  elif (i%5) == 2:
    upload_speed = int(x.split('Upload speed:')[1].split('MBps')[0]) # MBps
  elif (i%5) == 3:
    download_speed = int(x.split('Download speed:')[1].split('MBps')[0]) # MBps
  elif (i%5) == 4:
    try:
      info_dict[key_dict].append({'start_time':start_time, 'upload_speed':upload_speed, 'download_speed':download_speed})
    except:
      continue