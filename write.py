from datetime import datetime
import schedule
import time

# write data in a file.
def write():
    file1 = open("data.txt","a")
    now = datetime.now() # current date and time
    # \n is placed to indicate EOL (End of Line)
    file1.write("Started at "+now.strftime("%m/%d/%Y %H:%M %p")+"\n")
    file1.close()


#Task scheduling
# After every 30mins geeks() is called. 
schedule.every(1).minutes.do(write)

# Loop so that the scheduling task
# keeps on running all time.
while True:
  
    # Checks whether a scheduled task 
    # is pending to run or not
    schedule.run_pending()
    time.sleep(1)