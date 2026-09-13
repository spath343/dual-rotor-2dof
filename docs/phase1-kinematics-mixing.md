I selected a fixed frame instead of a full NED because NED applies only to moving objects in space relative to Earth. A fixed frame's pivot doesn't move, but only its orientation changes (θ and ψ). 

I chose Option B because of manufacturing concerns, control authority, and the gyroscopic argument. Option A needed a hollow or concentric dual-shaft bearing stack, and wiring has to route through one motor to reach the other; this presents a fabrication challenge. Option A's yaw axis depends on matching small RPM differences between both motors to get an unstable differential, which depends on k_Q -- the harder propeller coefficient to calibrate accurately. In addition, Option A produces a net momentum while yawing, which couples into pitch via gyroscopic precession every time yaw is commanded

<img width="2068" height="532" alt="IMG_0112" src="https://github.com/user-attachments/assets/da70eac3-6100-4b21-9fc4-6b3f97696c82" />
