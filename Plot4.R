png(filename = './Project1/plot4.png', width = 480, height = 480, units='px')

par(mfcol = c(2, 2))
plot(data$Time, data$Global_active_power, type = 'l', xlab = '', ylab = 'Global Active Power (kilowatt)')

plot(data$Time, data$Sub_metering_1, type = 'l', xlab = '', ylab = 'Energy sub metering')
lines(data$Time, data$Sub_metering_2, col = 'red')
lines(data$Time, data$Sub_metering_3, col = 'blue')
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'))

plot(data$Time, data$Voltage, type = 'l', xlab = 'datetime', ylab = 'Voltage')

plot(data$Time, data$Global_reactive_power, type = 'l', xlab = 'datetime', ylab = 'Global_reactive_power')

dev.off()