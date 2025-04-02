import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/addtional_info_item.dart';
import 'package:weather_app/hourly_forecast_item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '300.67 K',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          Icon(Icons.cloud, size: 64),
                          SizedBox(height: 16),
                          Text('Rain', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Weather forecast cards
            const Text(
              'Weather Forcast',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem(
                    time: '03:00',
                    temperature: '930.05',
                    icon: Icons.cloud,
                  ),
                  HourlyForecastItem(
                    time: '06:00',
                    temperature: '930.05',
                    icon: Icons.sunny,
                  ),
                  HourlyForecastItem(
                    time: '09:00',
                    temperature: '930.05',
                    icon: Icons.wind_power,
                  ),
                  HourlyForecastItem(
                    time: '12:00',
                    temperature: '930.05',
                    icon: Icons.foggy,
                  ),
                  HourlyForecastItem(
                    time: '15:00',
                    temperature: '930.05',
                    icon: Icons.cloud,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Additional information
            const Text(
              'Additional Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfoItem(Icons.water_drop, 'Humidity', '91'),
                AdditionalInfoItem(Icons.air, 'Wind Speed', '7.5'),
                AdditionalInfoItem(Icons.beach_access, 'Pressure', '1000'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
