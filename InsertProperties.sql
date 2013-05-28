INSERT INTO [RNARentalApplication].[dbo].[Property]
           ([CompleteAddress]
           ,[StreetAddress]
           ,[AptNum]
           ,[City]
           ,[State]
           ,[Zip]
           ,[HousingType]
           ,[NumBedrooms]
           ,[NumBaths]
           ,[Size]
           ,[Garage]
           ,[FloorLocation]
           ,[BaseRent]
           ,[AccessCredit]
           ,[BaseUtilities]
           ,[WashDryCost]
           ,[GasInclude]
           ,[WaterInclude]
           ,[ElectricInclude]
           ,[DatePurchase]
           ,[WeeklyIncomeMultiplier]
           ,[SchoolDistrict]
           ,[OtherFeatures]
           ,[EligibleForEmpDiscount]
           ,[YardiPropertyCode]
           ,[LLCName]
           ,[WasherDryerHookups]
           ,[Occupied]
           ,[LastMoveIn]
           ,[LastMoveOut]
           ,[LastRent]
           ,[userInput]
           ,[inputDate])
     VALUES
           (<CompleteAddress, nvarchar(255),>
           ,<StreetAddress, nvarchar(255),>
           ,<AptNum, nvarchar(255),>
           ,<City, nvarchar(255),>
           ,<State, nvarchar(255),>
           ,<Zip, float,>
           ,<HousingType, float,>
           ,<NumBedrooms, float,>
           ,<NumBaths, float,>
           ,<Size, nvarchar(255),>
           ,<Garage, bit,>
           ,<FloorLocation, nvarchar(255),>
           ,<BaseRent, money,>
           ,<AccessCredit, float,>
           ,<BaseUtilities, money,>
           ,<WashDryCost, money,>
           ,<GasInclude, bit,>
           ,<WaterInclude, bit,>
           ,<ElectricInclude, bit,>
           ,<DatePurchase, date,>
           ,<WeeklyIncomeMultiplier, nvarchar(255),>
           ,<SchoolDistrict, nvarchar(255),>
           ,<OtherFeatures, nvarchar(255),>
           ,<EligibleForEmpDiscount, bit,>
           ,<YardiPropertyCode, nvarchar(255),>
           ,<LLCName, nvarchar(255),>
           ,<WasherDryerHookups, bit,>
           ,<Occupied, bit,>
           ,<LastMoveIn, date,>
           ,<LastMoveOut, date,>
           ,<LastRent, money,>
           ,<userInput, varchar(255),>
           ,<inputDate, date,>)
GO

