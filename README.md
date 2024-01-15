# Instructions
Ex)
Run main:
Choose course: Hover - (1), Straight - (2), Box - (3), Ellipse - (4) 
3
Provide duration of simulation [sec]: 200
Interested in sequential yaw control? (1=YES): 1
Satisfied with the trajectory? (1=YES): 1
Flight animation? (1= YES): 1
TPV (1) or From distance (2): 2
Save animation? (1= YES): 

If one would like to change which state is used in the control law go into the Simulink model found in the Simulink folder.
Look for a manual switch under the EKF block and change it accordingly: (Up - Use EKF estimate, Down - Use ground truth)
