FROM rundeck/rundeck:3.1.0
ADD --chown=rundeck:root https://github.com/rundeck-plugins/rundeck-ec2-nodes-plugin/releases/download/v1.5.11/rundeck-ec2-nodes-plugin-1.5.11.jar ./libext/
ADD --chown=rundeck:root ./ui-job-graph.zip ./libext/
ADD --chown=rundeck:root https://github.com/rundeck-plugins/slack-incoming-webhook-plugin/releases/download/v1.2.5/slack-incoming-webhook-plugin-1.2.5.jar ./libext/

# This allows ssh execution to receive all RD_ variables
USER root
RUN echo "SendEnv RD_*" >> /etc/ssh/ssh_config
USER rundeck
