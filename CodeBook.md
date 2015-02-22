#CodeBook
##Tidy Data Set 1
This Data Set contains the variables/features of signal recorded by each participant for each of the Subject/Activity


Label                          Type        Description
------------------------------------------------------------------------------------------------
subject                        integer     this represents participant id in the experiment.
activity                       factor      this represents activity on which the experiments was performed by subject/participant.
tbodyacc.mean.x                numeric     
tbodyacc.mean.y                numeric     
tbodyacc.mean.z                numeric     
tbodyacc.std.x                 numeric     
tbodyacc.std.y                 numeric     
tbodyacc.std.z                 numeric     
tgravityacc.mean.x             numeric     
tgravityacc.mean.y             numeric     
tgravityacc.mean.z             numeric     
tgravityacc.std.x              numeric     
tgravityacc.std.y              numeric     
tgravityacc.std.z              numeric     
tbodyaccjerk.mean.x            numeric     
tbodyaccjerk.mean.y            numeric     
tbodyaccjerk.mean.z            numeric     
tbodyaccjerk.std.x             numeric     
tbodyaccjerk.std.y             numeric     
tbodyaccjerk.std.z             numeric     
tbodygyro.mean.x               numeric     
tbodygyro.mean.y               numeric     
tbodygyro.mean.z               numeric     
tbodygyro.std.x                numeric     
tbodygyro.std.y                numeric     
tbodygyro.std.z                numeric     
tbodygyrojerk.mean.x           numeric     
tbodygyrojerk.mean.y           numeric     
tbodygyrojerk.mean.z           numeric     
tbodygyrojerk.std.x            numeric     
tbodygyrojerk.std.y            numeric     
tbodygyrojerk.std.z            numeric     
tbodyaccmag.mean               numeric     
tbodyaccmag.std                numeric     
tgravityaccmag.mean            numeric     
tgravityaccmag.std             numeric     
tbodyaccjerkmag.mean           numeric     
tbodyaccjerkmag.std            numeric     
tbodygyromag.mean              numeric     
tbodygyromag.std               numeric     
tbodygyrojerkmag.mean          numeric     
tbodygyrojerkmag.std           numeric     
fbodyacc.mean.x                numeric     
fbodyacc.mean.y                numeric     
fbodyacc.mean.z                numeric     
fbodyacc.std.x                 numeric     
fbodyacc.std.y                 numeric     
fbodyacc.std.z                 numeric     
fbodyaccjerk.mean.x            numeric     
fbodyaccjerk.mean.y            numeric     
fbodyaccjerk.mean.z            numeric     
fbodyaccjerk.std.x             numeric     
fbodyaccjerk.std.y             numeric     
fbodyaccjerk.std.z             numeric     
fbodygyro.mean.x               numeric     
fbodygyro.mean.y               numeric     
fbodygyro.mean.z               numeric     
fbodygyro.std.x                numeric     
fbodygyro.std.y                numeric     
fbodygyro.std.z                numeric     
fbodyaccmag.mean               numeric     
fbodyaccmag.std                numeric     
fbodybodyaccjerkmag.mean       numeric     
fbodybodyaccjerkmag.std        numeric     
fbodybodygyromag.mean          numeric     
fbodybodygyromag.std           numeric     
fbodybodygyrojerkmag.mean      numeric     
fbodybodygyrojerkmag.std       numeric

### Tidy Data Set 2

The second data set is to calculate the average of each mean and standard deviation  of the each of the variables for each activity and each subject.

Label                          Type      Description
------------------------------------------------------------------------------------------------
subject                        integer   this represents participant id in the experiment 
activity                       factor    this represents activity on which the experiments was performed by subject/participant. 
avg.tbodyacc.mean.x            numeric     
avg.tbodyacc.mean.y            numeric     
avg.tbodyacc.mean.z            numeric     
avg.tbodyacc.std.x             numeric     
avg.tbodyacc.std.y             numeric     
avg.tbodyacc.std.z             numeric     
avg.tgravityacc.mean.x         numeric     
avg.tgravityacc.mean.y         numeric     
avg.tgravityacc.mean.z         numeric     
avg.tgravityacc.std.x          numeric     
avg.tgravityacc.std.y          numeric     
avg.tgravityacc.std.z          numeric     
avg.tbodyaccjerk.mean.x        numeric     
avg.tbodyaccjerk.mean.y        numeric     
avg.tbodyaccjerk.mean.z        numeric     
avg.tbodyaccjerk.std.x         numeric     
avg.tbodyaccjerk.std.y         numeric     
avg.tbodyaccjerk.std.z         numeric     
avg.tbodygyro.mean.x           numeric     
avg.tbodygyro.mean.y           numeric     
avg.tbodygyro.mean.z           numeric     
avg.tbodygyro.std.x            numeric     
avg.tbodygyro.std.y            numeric     
avg.tbodygyro.std.z            numeric     
avg.tbodygyrojerk.mean.x       numeric     
avg.tbodygyrojerk.mean.y       numeric     
avg.tbodygyrojerk.mean.z       numeric     
avg.tbodygyrojerk.std.x        numeric     
avg.tbodygyrojerk.std.y        numeric     
avg.tbodygyrojerk.std.z        numeric     
avg.tbodyaccmag.mean           numeric     
avg.tbodyaccmag.std            numeric     
avg.tgravityaccmag.mean        numeric     
avg.tgravityaccmag.std         numeric     
avg.tbodyaccjerkmag.mean       numeric     
avg.tbodyaccjerkmag.std        numeric     
avg.tbodygyromag.mean          numeric     
avg.tbodygyromag.std           numeric     
avg.tbodygyrojerkmag.mean      numeric     
avg.tbodygyrojerkmag.std       numeric     
avg.fbodyacc.mean.x            numeric     
avg.fbodyacc.mean.y            numeric     
avg.fbodyacc.mean.z            numeric     
avg.fbodyacc.std.x             numeric     
avg.fbodyacc.std.y             numeric     
avg.fbodyacc.std.z             numeric     
avg.fbodyaccjerk.mean.x        numeric     
avg.fbodyaccjerk.mean.y        numeric     
avg.fbodyaccjerk.mean.z        numeric     
avg.fbodyaccjerk.std.x         numeric     
avg.fbodyaccjerk.std.y         numeric     
avg.fbodyaccjerk.std.z         numeric     
avg.fbodygyro.mean.x           numeric     
avg.fbodygyro.mean.y           numeric     
avg.fbodygyro.mean.z           numeric     
avg.fbodygyro.std.x            numeric     
avg.fbodygyro.std.y            numeric     
avg.fbodygyro.std.z            numeric     
avg.fbodyaccmag.mean           numeric     
avg.fbodyaccmag.std            numeric     
avg.fbodybodyaccjerkmag.mean   numeric     
avg.fbodybodyaccjerkmag.std    numeric     
avg.fbodybodygyromag.mean      numeric     
avg.fbodybodygyromag.std       numeric     
avg.fbodybodygyrojerkmag.mean  numeric     
avg.fbodybodygyrojerkmag.std   numeric 
