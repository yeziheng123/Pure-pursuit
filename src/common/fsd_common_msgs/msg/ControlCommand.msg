std_msgs/Header header                                                 #这个是控制命令

std_msgs/Float32 throttle        # Throttle value between [-1, 1]                           油门  越多油门越大  范围在【-1，1】
std_msgs/Float32 steering_angle  # Steering angle value between [-1, 1], where left < 0, right > 0                 转角值 左小于0 右大于0
uint8 racing_status   #车辆最终状态 告诉车辆我是否完赛