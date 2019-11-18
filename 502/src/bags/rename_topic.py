from rosbag import Bag
import sys


with Bag('./Statue_of_Mao.bag', 'w') as Y , Bag('./mao1115.bag', 'r') as X :
    start_time = X.get_start_time()
    end_time = X.get_end_time()
    time_period = end_time - start_time
    for topic, msg, t in X:	
		time_for_now = float(t.secs)
		# print(time_for_now)
		# print(start_time)
		if topic == '/AreoCameraFront/infra1/image_rect_raw':
			Y.write('/AeroCameraFront/infra1/image_rect_raw', msg ,t)
		elif topic == '/AreoCameraFront/infra2/image_rect_raw':
			Y.write('/AeroCameraFront/infra2/image_rect_raw', msg ,t)
		elif topic == '/AreoCameraFront/depth/image_rect_raw':
			Y.write('/AeroCameraFront/depth/image_rect_raw', msg ,t)
		elif topic == '/AreoCameraFront/color/image_raw':
			Y.write('/AeroCameraFront/color/image_raw', msg ,t)
		else :
			Y.write(topic, msg ,t)
		time = time_for_now-start_time
		# print(time)
		print(time/time_period)
		sys.stdout.write("\033[F") #back to previous line
		sys.stdout.write("\033[K") #clear line

