# XenonStack

Task 1 :->

Simple workflow for the internsctl command:

Start
|
V
[Execute internsctl command] --> [Check Command Type]
                              |
                              V
            +-----------------+---------------------+
            |                                       |
            V                                       V
[Display Manual] <-- (If "man" command is used)    [Execute Appropriate Command]
            |                                       |
            V                                       V
[Display Help] <-- (If "--help" flag is used)     [Execute Sub-Command]
                                                      |
                                                      V
                                                  [Perform Action]
                                                      |
                                                      V
                                                   End


Application Architecture Diagram:

+-----------------------------+
|                             |
|  User                     Terminal
|  +--+                       |
|  |  |                       |
|  V  |                       V
| +------------+              +----------------+
| |            |              |                |
| | internsctl | <--(Executes)--| Bash Script    |
| |            |              |                |
| +------------+              +----------------+
|                             |
+-----------------------------+

![image](https://github.com/Ajdbst/XenonStack/assets/97408801/d4d4f9ff-573c-4740-8bd1-77aa994c119b)


Task 2 :->

![image](https://github.com/Ajdbst/XenonStack/assets/97408801/3a589575-6f1a-4257-b52e-6caf1e5ec572)

![image](https://github.com/Ajdbst/XenonStack/assets/97408801/b5f4de1d-5fe5-48e7-8812-0f6520ade67e)

![image](https://github.com/Ajdbst/XenonStack/assets/97408801/84418284-8ebf-4fa0-b583-00d071648fa7)

![image](https://github.com/Ajdbst/XenonStack/assets/97408801/9065265b-d1dd-4545-853e-c14d0bc1df8a)

![image](https://github.com/Ajdbst/XenonStack/assets/97408801/d9243d79-a2f0-4588-a784-a471dacc4525)

![image](https://github.com/Ajdbst/XenonStack/assets/97408801/36d05c94-1807-4e3d-9fc2-0a7f52411244)

![image](https://github.com/Ajdbst/XenonStack/assets/97408801/c8bf1cfa-0513-451d-b920-19b77998f1a6)

![image](https://github.com/Ajdbst/XenonStack/assets/97408801/4d3212e6-27c9-4cdb-93dc-09b020ae6353)

![image](https://github.com/Ajdbst/XenonStack/assets/97408801/a556ff1c-43e5-43d0-9b7b-09cf8ec7217f)

![image](https://github.com/Ajdbst/XenonStack/assets/97408801/d81a296b-7370-4ad2-8fba-d769dcbe9dfe)

![image](https://github.com/Ajdbst/XenonStack/assets/97408801/5f61c589-504f-458f-aca9-d2e63e4ccc8d)

![image](https://github.com/Ajdbst/XenonStack/assets/97408801/e9cb105c-0a76-4692-a56e-8d70563b9dd4)

![image](https://github.com/Ajdbst/XenonStack/assets/97408801/a421e200-f11a-46ef-a58e-980797285267)


