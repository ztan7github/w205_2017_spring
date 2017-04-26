import tweepy

consumer_key = "FlFwUQDiqYbYI4sr2mELtULda";
#eg: consumer_key = "YisfFjiodKtojtUvW4MSEcPm";


consumer_secret = "PnvXizeW1We01StUc8r3snBAJxvitVc6OXDgdLC6ZV2agWR6V9";
#eg: consumer_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token = "857318200475889665-akL33JbYJ1b0E0Vv5CZB9LRg20TYnSh";
#eg: access_token = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token_secret = "dvSorxyCgGsaz5g7U2bkOr4rOU9vmMdrT4JXnOdfo1Xjy";
#eg: access_token_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)



