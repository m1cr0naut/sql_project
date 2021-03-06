USE [s16guest34]
GO
/****** Object:  StoredProcedure [dbo].[get_features]    Script Date: 5/5/2016 1:54:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Benjamin Plotkin
-- Create date: 2016-05-04
-- Description:	New features counter
-- =============================================
CREATE PROCEDURE [dbo].[get_features] 
	-- Takes release number string as search parameter
	@release_num varchar(20) = NULL

AS
BEGIN
	DECLARE @feature_count INT = 0;
	DECLARE @version_id INT = NULL;

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- try to get a count of version features related to release number
	BEGIN TRY
		-- if release doesn't exist, alert user
		IF NOT EXISTS(SELECT release_num FROM Release WHERE release_num = @release_num)
		BEGIN
			SELECT('Please enter a valid Release Number!') AS 'Message'
		END
		ELSE
		BEGIN
			SET @version_id = (SELECT TOP 1 version_id
				FROM [dbo].[Release]
				WHERE [dbo].[Release].release_num = @release_num)
			
			-- get count of features in release version, if any
			SET @feature_count = (SELECT COUNT(v1.feature_id)
				FROM [dbo].[Version_Feature] v1
				WHERE v1.version_id = @version_id)

			-- if we find any features, show their count	
			IF @feature_count > 0
			BEGIN
				SELECT(CONVERT(VARCHAR(10), @feature_count) + ' features are in the '
				+ @release_num + ' release.') AS 'Message'
			END
			ELSE -- otherwise, it's a bug-fix release
			BEGIN
				SELECT('It is a bug-fix release. There are no new features.') AS 'Message'
			END
		END
	END TRY

	-- catch any errors
	BEGIN CATCH
		DECLARE @err_num INT = ERROR_NUMBER();
		DECLARE @err_msg NVARCHAR(4000) = ERROR_MESSAGE();
		DECLARE @err_sev INT = ERROR_SEVERITY();
		DECLARE @err_state INT = ERROR_STATE();
		PRINT 'Error number: ' + CAST(@err_num AS VARCHAR(10));
		RAISERROR(@err_msg, @err_sev, @err_state);
	END CATCH
END
GO
