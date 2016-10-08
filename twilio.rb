require 'rubygems'
require 'twilio-ruby'

account_sid = "ACe57045a69efd21a37ca5bd3e68bc09e5"
auth_token = "c1173e85f6276587a7f6d263e2fa0392"

puts "Please ask a Yes/No question about something you would like to know"
gets
num= Random.new
num = num.rand(1..20)
answer=""
case num

	when 1
		answer="It is certain"
	when 2
		answer="It is decidedly so"
	when 3
		answer="Without a doubt"
	when 4
		answer="Yes, definitely"
	when 5
		answer="You may rely on it"
	when 6
		answer="As I see it, yes"
	when 7
		answer="Most likely"
	when 8
		answer="Outlook good"
	when 9
		answer="Yes"
	when 10
		answer="Signs point to yes"
	when 11
		answer="Reply hazy try again"
	when 12
		answer="Ask again later"
	when 13
		answer="Better not tell you now"
	when 14
		answer="Cannot predict now"
	when 15
		answer="Concentrate and ask again"
	when 16
		answer="Don't count on it"
	when 17
		answer="My reply is no"
	when 18
		answer="My sources say no"
	when 19
		answer="Outlook not so good"
	when 20
		answer="Very doubtful"
end

@client = Twilio::REST::Client.new(account_sid, auth_token)
message=@client.account.messages.create(
 :from => "+12012855118",
 :to =>"+64211143863",
 :body => answer
)
puts message.to
