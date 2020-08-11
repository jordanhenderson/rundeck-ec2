FROM rundeck/rundeck:3.3.0
ADD --chown=rundeck:root https://github.com/rundeck-plugins/rundeck-ec2-nodes-plugin/releases/download/v1.5.14/rundeck-ec2-nodes-plugin-1.5.14.jar ./libext/
ADD --chown=rundeck:root ./ui-job-graph.zip ./libext/ui-job-graph-0.1.3-SNAPSHOT.zip
ADD --chown=rundeck:root https://github.com/rundeck-plugins/slack-incoming-webhook-plugin/releases/download/v1.2.5/slack-incoming-webhook-plugin-1.2.5.jar ./libext/

# This allows ssh execution to receive all RD_ variables
USER root
RUN echo "SendEnv RD_*" >> /etc/ssh/ssh_config
USER rundeck
