﻿CREATE PROCEDURE [dbo].[ProcWithRetValExtended]
  @baseRetVal INT
AS

-- Use an extended sproc to force sp_describe_first_result_set to fail
-- and parser to fallback to SET FMTONLY ON
EXEC sp_getapplock 'TestLock', 'Update'

RETURN @baseRetVal + 1
