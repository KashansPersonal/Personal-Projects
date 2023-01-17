require 'net/smtp'

custom_variable_1 = "Email 1"
custom_variable_2 = "Email 2"
custom_variable_3 = "Email 3"
custom_variable_4 = "Email 4"
custom_variable_5 = "Email 5"

custom_subject_1 = "Hello Customer 1"

## From: View Only
## To: View Only
## Subject: Email Subject
## 2nd line of Subject is the body
message1 = <<MESSAGE_END
From: SMTP Test <sample_from@sendinblue.com>
To: API Test <sample_to@gmail.com>
Subject: #{custom_subject_1}

<b>This is #{custom_variable_1}.</b>
<h1>This is headline.</h1>
MESSAGE_END

message2 = <<MESSAGE_END
From: SMTP Test <sample_from@sendinblue.com>
To: API Test <sample_to@gmail.com>
Subject: How Are You 2?

<b>This is #{custom_variable_2}.</b>
<h1>This is headline.</h1>
MESSAGE_END

message3 = <<MESSAGE_END
From: SMTP Test <sample_from@sendinblue.com>
To: API Test <sample_to@gmail.com>
Subject: How Are You 3?

<b>This is #{custom_variable_3}.</b>
<h1>This is headline.</h1>
MESSAGE_END

message4 = <<MESSAGE_END
From: SMTP Test <sample_from@sendinblue.com>
To: API Test <sample_to@gmail.com>
Subject: How Are You 4?

<b>This is #{custom_variable_4}.</b>
<h1>This is headline.</h1>
MESSAGE_END

message5 = <<MESSAGE_END
From: SMTP Test <sample_from@sendinblue.com>
To: API Test <sample_to@gmail.com>
Subject: How Are You 5?

<b>This is #{custom_variable_5}.</b>
<h1>This is headline.</h1>
MESSAGE_END

Net::SMTP.start('smtp-relay.sendinblue.com', 587, 'mail.from.domain', 'EMAIL1', 'MASTER PASSWORD') do |smtp|
  ## Parameters : 1. Message to be sent, 2. From Email Id, 3. To Email Ids, Use ['first@email.com','second@email.com' ] for multiple
  smtp.send_message message1,'EMAIL1','EMAIL2'
  smtp.send_message message2,'EMAIL1','EMAIL2'
  smtp.send_message message3,'EMAIL1','EMAIL2'
  smtp.send_message message4,'EMAIL1','EMAIL2'
  smtp.send_message message5,'EMAIL1','EMAIL2'
end