# is436groupD

The Smart Health Tracker System is an application designed for health-conscious users who want to monitor and manage their fitness and health data. The system integrates wearable devices (like smartwatches) to track heart rate, steps, sleep patterns, and calorie intake metrics. The system allows users to set fitness goals, receive personalized health insights, and share data with healthcare professionals. It also integrates with third-party nutrition and fitness data APIs to provide comprehensive reports.




# **Smart Health Tracker System**  
Your comprehensive health tracking solution that integrates wearable devices to provide personalized health insights and secure data sharing with healthcare providers.

---

## **System Design Phases**
This documentation aligns with all the phases of system design, ensuring a complete and user-centric development process:

1. **System Planning**
   - Identified the need for a real-time health monitoring solution that integrates wearable devices and provides actionable insights for users.
   - Agile methodology was chosen for iterative development and flexibility.

2. **System Analysis**
   - Conducted interviews and use case studies to define user requirements:
     - Synchronizing wearable devices.
     - Setting and tracking fitness goals.
     - Sharing health data securely with healthcare providers.
   - Created data flow diagrams (DFDs) and use case diagrams to visualize workflows.

3. **System Design**
   - Designed the architecture to include:
     - A responsive and user-friendly interface.
     - A secure backend for data storage and processing.
     - Integration with wearable devices and third-party APIs.
   - Entity-Relationship Diagrams (ERDs) were used to structure database schemas.

4. **System Implementation**
   - Developed functional prototypes for key features, including:
     - Device synchronization.
     - Goal setting.
     - Health insights and data sharing.
   - Deployment via Docker and GitHub Actions ensures scalability and efficiency.

5. **System Maintenance**
   - Ensures HIPAA compliance and regular updates for compatibility with new wearable devices and APIs.
   - Implements user feedback to refine features and address bugs.

---

## **Features**
- **Real-Time Health Monitoring:** Track metrics like heart rate, steps, calories burned, and sleep patterns.  
- **Personalized Health Insights:** Receive customized feedback and recommendations based on your health data.  
- **Fitness Goal Management:** Set, monitor, and adjust your fitness goals with ease.  
- **Data Sharing:** Securely share selected health data with authorized healthcare providers.  
- **Seamless Integration:** Works with popular wearable devices and third-party APIs.

---

## **Getting Started**
### **System Requirements**
- **Operating System:** Android 10 or later / iOS 13 or later  
- **Wearable Devices Supported:** Fitbit, Garmin, Apple Watch, and others  
- **Browser:** Chrome, Safari, or Firefox (latest versions)  
- **Additional Tools:** Internet connection and Bluetooth functionality

---

### **Installation**
1. Download the **Smart Health Tracker App** from your device's app store.  
2. Install the application and launch it.  
3. Create a new account or log in if you’re an existing user.  

---

## **Usage Instructions**
### **1. Synchronize Your Wearable Device**
- Navigate to the **Device Settings** in the app.
- Select **Add Device** and follow the prompts to pair your wearable device.
- Confirm successful synchronization when the app displays real-time metrics like steps and heart rate.

### **2. Set Fitness Goals**
- Go to the **Goals** section in the app.
- Enter desired fitness metrics (e.g., steps, calorie targets, exercise duration).
- Save your goals to start tracking progress. Notifications will keep you updated on goal completion.

### **3. View Health Insights**
- Access the **Insights** section to analyze your fitness data through visual graphs and summaries.
- Receive personalized recommendations to enhance your health journey.

### **4. Share Data with Healthcare Providers**
- Navigate to **Data Sharing Settings** in the app.  
- Select your healthcare provider and choose which data to share (e.g., heart rate, steps).  
- Confirm your selection to securely transmit data.

---

## **Security and Privacy**
- Data is encrypted and complies with HIPAA standards.  
- Users can manage or revoke data-sharing permissions anytime.  

---

## **Troubleshooting**
- **Device Not Syncing:** Ensure Bluetooth is enabled and the wearable device is within range.  
- **Goals Not Saving:** Verify all fields are filled correctly. Restart the app if the issue persists.  
- **Data Sharing Issues:** Ensure your healthcare provider is registered in the system.

---

## **Support**
- For assistance, contact the project team:  
  - **Project Manager:** Gbemisola Akinjo ([a366@umbc.edu](mailto:a366@umbc.edu))  
  - **Backend Developer:** Umair Khan ([ukhan5@umbc.edu](mailto:ukhan5@umbc.edu))  
  - **Frontend Developer:** Syed Shah ([sshah13@umbc.edu](mailto:sshah13@umbc.edu))  
  - **Database Administrator:** Mahider Negash ([mnegash1@umbc.edu](mailto:mnegash1@umbc.edu))  
  - **Systems Analyst and Tester:** Kebron Zeleke ([kzeleke2@umbc.edu](mailto:kzeleke2@umbc.edu))  

---

## **Deployment Information**
- **GitHub Repository:** [Smart Health Tracker GitHub](https://github.com/mahidernegash/is436groupD.git)  
- **Docker Hub Image URL:** [Smart Health Tracker on Docker](https://hub.docker.com/r/smarthealthtracker/system)  
- **Pull Command:**  
  ```bash
  docker pull smarthealthtracker/system:latest

