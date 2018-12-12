import forecastio
import time
import subprocess

#def main():
"""
Run load_forecast() with the given lat, lng, and time arguments.
"""


lat = 40.014984
lng = -105.270546
startTime=time.time()
while True:

    currentTime=time.time()
    if abs((currentTime-startTime)%3599-0) >=0.1:
        forecast = forecastio.load_forecast(api_key, lat, lng)

    #print "===========Currently Data========="
    #print forecast.currently()

    print "===========Hourly Data========="
    by_hour = forecast.hourly()
    print "Hourly Summary: %s" % (by_hour.summary)

    for hourly_data_point in by_hour.data:
        print hourly_data_point


    if temperature >= 35 and precipProbability >= 50:
        bashCommand = "sudo ./utils/led-image-viewer img/rainFull.gif --led-no-hardware-pulse --led-gpio-mapping=adafruit-hat -t10"
        time.sleep(10)
        process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
        output, error = process.communicate()
    elif temperature < 35 and precipProbability >= 50:
        bashCommand = "sudo ./utils/led-image-viewer img/snowFull.gif --led-no-hardware-pulse --led-gpio-mapping=adafruit-hat -t10"
        time.sleep(10)
        process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
        output, error = process.communicate()
    elif windSpeed >= 15:
        bashCommand = "sudo ./utils/led-image-viewer img/windFull.gif --led-no-hardware-pulse --led-gpio-mapping=adafruit-hat -t10"
        time.sleep(10)
        process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
        output, error = process.communicate()
    elif cloudCover >= 30:
        bashCommand = "sudo ./utils/led-image-viewer img/cloudsFull.gif --led-no-hardware-pulse --led-gpio-mapping=adafruit-hat -t10"
        time.sleep(10)
        process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
        output, error = process.communicate()
    else:
        bashCommand = "sudo ./utils/led-image-viewer img/sunFull.gif --led-no-hardware-pulse --led-gpio-mapping=adafruit-hat -t10"
        time.sleep(10)
        process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
        output, error = process.communicate()
    time.sleep(4)



    #print "===========Daily Data========="
    #by_day = forecast.daily()
    #print "Daily Summary: %s" % (by_day.summary)

    #for daily_data_point in by_day.data:
       #print daily_data_point


        #if __name__ == "__main__":
         #   main()
