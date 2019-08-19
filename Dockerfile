FROM rundeck/rundeck:3.1.0
ADD --chown=rundeck:root https://github.com/rundeck-plugins/rundeck-ec2-nodes-plugin/releases/download/v1.5.11/rundeck-ec2-nodes-plugin-1.5.11.jar ./libext/
