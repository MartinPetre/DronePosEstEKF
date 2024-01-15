# About
Simulation of a quadcopter controlled using LQR based on position error, pose is esimated using the Extended Kalman Filter.

# File Structure
Classes - Defining necessary classes such as Drone, Filter, GPS, IMU, ...

Functions - Functions ranging from visualization to the steps in the EKF algorithm

Offline Tools - Expressing jacobian matricies using symbolic, and design of an FIR filter

Simulink - Simulation environment

System Parameters - Q and R for both LQR, Q_noise and R_noise for EKF

main - This is the file where everyting is run from. Run it -> Choose trajectory to follow and how long it should take -> view results in animation and evaluate them using evaluate_results. The results can thereafter be saved in Result folder.

init_drone - Ability to change the sensors' frequency and variance

# Example run
(With the parameters from this reposity)

Run main:

Choose course: Hover - (1), Straight - (2), Box - (3), Ellipse - (4) 3

Provide duration of simulation [sec]: 200

Interested in sequential yaw control? (1=YES): 1

Satisfied with the trajectory? (1=YES): 1

Flight animation? (1= YES): 1

TPV (1) or From distance (2): 2

Save animation? (1= YES): 

IMPORTANT
If one would like to change which state is used in the control law go into the Simulink model found in the Simulink folder.
Look for a manual switch under the EKF block and change it accordingly: (Up - Use EKF estimate, Down - Use ground truth).
