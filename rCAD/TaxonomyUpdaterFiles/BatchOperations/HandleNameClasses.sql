/* 
* Copyright (c) 2009, The University of Texas at Austin
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without modification, 
* are permitted provided that the following conditions are met:
*
* 1. Redistributions of source code must retain the above copyright notice, 
* this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright notice, 
* this list of conditions and the following disclaimer in the documentation and/or other materials 
* provided with the distribution.
*
* Neither the name of The University of Texas at Austin nor the names of its contributors may be 
* used to endorse or promote products derived from this software without specific prior written 
* permission.
* 
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR 
* IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND 
* FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS 
* BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES 
* (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
* PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
* CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF 
* THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
DECLARE @NextNameClassID tinyint;

SELECT @NextNameClassID = MAX(NameClassID) FROM NameClasses;
SET @NextNameClassID = @NextNameClassID + 1;

IF OBJECT_ID('tempdb.dbo.#TempRNAJOINNameClasses') IS NOT NULL DROP TABLE #TempRNAJOINNameClasses;
CREATE TABLE #TempRNAJOINNameClasses (
	NameClassID [tinyint] IDENTITY(0, 1) NOT NULL,
	NameClass [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
);

DBCC CHECKIDENT ('#TempRNAJOINNameClasses', RESEED, @NextNameClassID)

INSERT INTO #TempRNAJOINNameClasses(NameClass)
SELECT DISTINCT TN.NameClass FROM NCBITempNames AS TN
LEFT OUTER JOIN NameClasses AS NC
ON TN.NameClass=NC.NameClass
WHERE NC.NameClass IS NULL AND NC.NameClassID IS NULL;

IF (SELECT COUNT(*) FROM #TempRNAJOINNameClasses) > 0
BEGIN
INSERT INTO RNAJOINNameClasses(NameClassID, NameClass)
SELECT #TempRNAJOINNameClasses.* FROM #TempRNAJOINNameClasses;
END

DROP TABLE #TempRNAJOINNameClasses;

INSERT INTO RNAJOINNameClasses(NameClassID, NameClass)
SELECT DISTINCT NC.NameClassID, NC.NameClass FROM NameClasses AS NC
INNER JOIN NCBITempNames AS TN
ON NC.NameClass=TN.NameClass;