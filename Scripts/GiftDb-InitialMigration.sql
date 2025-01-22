

  INSERT INTO [dbo].[WishListSubmissionStatus]
           ([StatusId]
           ,[StatusName]
           ,[StatusDescription]
           ,[DisplayOrder]
           ,[CreatedDate]
           ,[LastModifiedDate])
     VALUES
           (1
           ,'PendingApproval'
           ,'Waiting for parent approval'
           ,10
           ,GetDate()
           ,GetDate())

INSERT INTO [dbo].[WishListSubmissionStatus]
           ([StatusId]
           ,[StatusName]
           ,[StatusDescription]
           ,[DisplayOrder]
           ,[CreatedDate]
           ,[LastModifiedDate])
     VALUES
           (2
           ,'Completed'
           ,'Wish list has been fully approved'
           ,20
           ,GetDate()
           ,GetDate())

INSERT INTO [dbo].[WishListSubmissionStatus]
           ([StatusId]
           ,[StatusName]
           ,[StatusDescription]
           ,[DisplayOrder]
           ,[CreatedDate]
           ,[LastModifiedDate])
     VALUES
           (3
           ,'Rejected'
           ,'Rejected by parent'
           ,30
           ,GetDate()
           ,GetDate())