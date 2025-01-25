
-- After first user is created, add a record to the AspNetUserRoles table to assign the user to the Admin role.

--Then run the following scripts to import the necessary initial records in the db:

--ContentTypes
Insert Into [dbo].[ContentTypes]
Values('Twitter/X','Content Found on Twitter/X',GetDate(),GetDate())

Insert Into [dbo].[ContentTypes]
Values('YouTube','YouTube Major Content.',GetDate(),GetDate())


--Learn More
INSERT INTO [dbo].[LearnMoreDetails]
           ([Introduction]
           ,[Items]
           ,[QuoteDateFetched])
     VALUES
           ('Dr. Andrew Huberman - a renowned neuroscientist and professor of neurobiology at the Stanford University School of Medicine, brings forward the understanding of how excessive use of social media can impact our brain and mental health. He explains that the constant influx of information, overstimulation, and the pressure to constantly engage on these platforms can cause significant levels of stress and anxiety, leading to potential mental health concerns.',
           'Impacts on Dopamine Levels and Reward System||Potential for Increased Anxiety and Stress Levels||Harmful Effects due to Sleep Disruption||High Risk of Developing Cyberchondria - Overthinking Health Concerns||Potential to Develop Social Media Addition

Dr. Huberman explains that constant interaction with social media often leads to an excessive release of dopamine, a feel-good neurotransmitter in the brain. This overstimulation can desensitize our reward system, making day-to-day offline experiences seemingly less fulfilling. 

Frequent use of social media can also increase our levels of anxiety and stress. The constant bombardment of information, the comparison trap, and the pressure to keep up with unrealistic standards can generate chronic stress, which in turn can lead to various mental health disorders.  

Our sleep can be severely disrupted due to excessive screen time and the mental impact of an always-on culture. Sleep deprivation can deteriorate our mental health, leading to exacerbated anxiety, mood disorders, and diminished cognitive performance. 

The accessibility and abundance of health-related content online can lead people to excessively worry about their health, a phenomenon known as Cyberchondria. This can induce a constant state of stress and anxiety, negatively impacting mental well-being. 

Finally, the compelling design of social media platforms and the constant stimulation they offer can lead users to develop addictive tendencies. Social media addiction, like any other form of addiction, can have severe effects on mental health, leading to depression, anxiety, and feelings of isolation.',
           GetDate())
GO


--EmailTemplates
INSERT INTO [dbo].[EmailTemplates]
           ([Name]
           ,[Subject]
           ,[HtmlBodyContent]
           ,[TokenList]
           ,[CreatedOn]
           ,[UpdatedOn])
     VALUES
           ('WeeklyMVPReport',
           'Here is your weekly MVP news article report',
           '<!DOCTYPE html>
   <html>
   <body style="font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto;">
       @header
       <div style="padding: 20px;">
           <h2>Articles</h2>
           @articles
       </div>
      @footer
   </body>
   </html>',
           '@header,@articles,@footer',
           GetDate(),
           GetDate())

INSERT INTO [dbo].[EmailTemplates]
           ([Name]
           ,[Subject]
           ,[HtmlBodyContent]
           ,[TokenList]
           ,[CreatedOn]
           ,[UpdatedOn])
     VALUES
           ('Header',
           '',
           '<header style="background-color: #0078d4; color: white; padding: 20px; text-align: center;">
           <h1>Weekly MVP News Report for @name</h1>
           <p>@date</p>
       </header>',
           '@date,@name',
           GetDate(),
           GetDate())

INSERT INTO [dbo].[EmailTemplates]
           ([Name]
           ,[Subject]
           ,[HtmlBodyContent]
           ,[TokenList]
           ,[CreatedOn]
           ,[UpdatedOn])
     VALUES
           ('Footer',
           '',
           '<footer style="background-color: #f0f0f0; padding: 20px; text-align: center;">
           <p>Thank you for subscribing to our weekly MVP news report!</p>
           <p>To unsubscribe, please click <a href="#">here</a></p>
       </footer>',
           '',
           GetDate(),
           GetDate())

INSERT INTO [dbo].[EmailTemplates]
           ([Name]
           ,[Subject]
           ,[HtmlBodyContent]
           ,[TokenList]
           ,[CreatedOn]
           ,[UpdatedOn])
     VALUES
           ('WeeklySearchResult',
           '',
           '<div style="margin-bottom: 20px; border-bottom: 1px solid #e0e0e0; padding-bottom: 15px;">
        <table style="width: 100%; border-collapse: collapse; margin-bottom: 10px;">
            <tr>
                <td style="width: 80%; padding: 8px 0;">
                    <a href="@url" style="color: #0078d4; text-decoration: none; font-weight: bold; font-size: 16px;">
                        @title
                    </a>
                </td>
            </tr>
        </table>
        @notessection
    </div>',
           '@title,@url,@topresultbadge,@notessection',
           GetDate(),
           GetDate())

INSERT INTO [dbo].[EmailTemplates]
           ([Name]
           ,[Subject]
           ,[HtmlBodyContent]
           ,[TokenList]
           ,[CreatedOn]
           ,[UpdatedOn])
     VALUES
           ('NotesSection',
           '',
           '<div style="background-color: #f5f5f5; padding: 12px; margin-top: 10px; border-radius: 4px;">
        <p style="margin: 0 0 8px 0; font-weight: bold; color: #666;">Notes:</p>
        <ul style="margin: 0; padding-left: 20px;">
            {{@notesitems}}
        </ul>
    </div>',
           '@notesitems',
           GetDate(),
           GetDate())

INSERT INTO [dbo].[EmailTemplates]
           ([Name]
           ,[Subject]
           ,[HtmlBodyContent]
           ,[TokenList]
           ,[CreatedOn]
           ,[UpdatedOn])
     VALUES
           ('NoteItem',
           '',
           '<li style="color: #444; margin-bottom: 5px;">
        {{@notetitle}}
        {{@notemessage}}
    </li>',
           '@notetitle,@notemessage',
           GetDate(),
           GetDate())

INSERT INTO [dbo].[EmailTemplates]
           ([Name]
           ,[Subject]
           ,[HtmlBodyContent]
           ,[TokenList]
           ,[CreatedOn]
           ,[UpdatedOn])
     VALUES
           ('TopResultBadge',
           '',
           '<span style="background-color: #0078d4; color: white; padding: 4px 8px; border-radius: 4px; font-size: 12px;">
        Top Result
    </span>',
           '',
           GetDate(),
           GetDate())

INSERT INTO [dbo].[EmailTemplates]
           ([Name]
           ,[Subject]
           ,[HtmlBodyContent]
           ,[TokenList]
           ,[CreatedOn]
           ,[UpdatedOn])
     VALUES
           ('ResetPassword',
           'Please Reset Your Password',
           '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Reset</title>
</head>
<body>
    <h1>Password Reset</h1>
    <p>Dear {{@firstName}} {{@lastName}},</p>
    <p>Please reset your password by clicking the link below:</p>
    <a href="{{@resetLink}}">Reset Password</a>
</body>
</html>',
           '',
           GetDate(),
           GetDate())
