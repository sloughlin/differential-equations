import time
import subprocess

#def main():
while True:
	bashCommand = "sudo ./utils/led-image-viewer img/rainFull.gif --led-no-hardware-pulse --led-gpio-mapping=adafruit-hat -t10"
	time.sleep(10)
	process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
	output, error = process.communicate()

	bashCommand = "sudo ./utils/led-image-viewer img/snowFull.gif --led-no-hardware-pulse --led-gpio-mapping=adafruit-hat -t10"
	time.sleep(10)
	process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
	output, error = process.communicate()

	bashCommand = "sudo ./utils/led-image-viewer img/windFull.gif --led-no-hardware-pulse --led-gpio-mapping=adafruit-hat -t10"
	time.sleep(10)
	process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
	output, error = process.communicate()

	bashCommand = "sudo ./utils/led-image-viewer img/cloudsFull.gif --led-no-hardware-pulse --led-gpio-mapping=adafruit-hat -t10"
	time.sleep(10)
	process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
	output, error = process.communicate()

	bashCommand = "sudo ./utils/led-image-viewer img/sunFull.gif --led-no-hardware-pulse --led-gpio-mapping=adafruit-hat -t10"
	time.sleep(10)
	process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
	output, error = process.communicate()

	time.sleep(4)
#if __name__ == "__main__":
#	main()
