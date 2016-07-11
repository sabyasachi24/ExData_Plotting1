png(filename = './Project1/plot2.png', width = 480, height = 480, units='px')

plot(data$Time, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
dev.off()