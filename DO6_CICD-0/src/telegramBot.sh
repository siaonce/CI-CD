#!/bin/bash

TELEGRAM_BOT_TOKEN="6045549199:AAEp_0ofP03dF_iP7RwbMLOdTzu4WkwqJtI"
TELEGRAM_USER_ID="Ваш юзер"
URL="https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage"
TEXT="Deploy status: $1%0A%0AProject:+$CI_PROJECT_NAME%0AJOB_STAGE:$CI_JOB_STAGE
%0AURL:+$CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0ABranch:+$CI_COMMIT_REF_SLUG%0ASTATUS:$CI_JOB_STATUS"
curl -s -d "chat_id=$TELEGRAM_USER_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null