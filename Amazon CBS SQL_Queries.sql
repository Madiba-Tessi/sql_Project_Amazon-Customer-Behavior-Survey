#1 Which age group is most active on Amazon in terms of shopping and browsing frequency?
 SELECT COUNT(*) AS Users,
    generation,
CONCAT(ROUND((SUM(CASE WHEN Purchase_Frequency = "Few times a month" THEN 1 ELSE 0 END)/COUNT(*))*100,1),'%') AS Purchase_Few_Times,
CONCAT(ROUND((SUM(CASE WHEN Browsing_Frequency = "Few times a month" THEN 1 ELSE 0 END)/COUNT(*))*100,1),'%') AS Browsing_Few_Times
FROM custom_behavior
GROUP BY generation;


#2 Which product categories are most popular among Amazon users?
SELECT COUNT(*) AS Users,
    generation,
CONCAT(ROUND((SUM(CASE WHEN Purchase_Categories = "Beauty and Personal Care" THEN 1 ELSE 0 END)/COUNT(*))*100,1),'%') AS BPC,
CONCAT(ROUND((SUM(CASE WHEN Purchase_Categories = "Clothing and Fashion" THEN 1 ELSE 0 END)/COUNT(*))*100,1),'%') AS CF,
CONCAT(ROUND((SUM(CASE WHEN Purchase_Categories = "Groceries and Gourmet Food" THEN 1 ELSE 0 END)/COUNT(*))*100,1),'%') AS GCF,
CONCAT(ROUND((SUM(CASE WHEN Purchase_Categories = "Home and Kitchen" THEN 1 ELSE 0 END)/COUNT(*))*100,1),'%') AS HK,
CONCAT(ROUND((SUM(CASE WHEN Purchase_Categories = "Others" THEN 1 ELSE 0 END)/COUNT(*))*100,1),'%') AS OTHERS
FROM custom_behavior
GROUP BY generation;

#3 How often do users explore search results beyond the first page?
SELECT COUNT(*) AS Users,
	CONCAT(ROUND((SUM(CASE WHEN Search_Result_Exploration = "First Page" THEN 1 ELSE 0 END)/COUNT(*))*100,1),'%') AS Stop_at_FirstPage,
    CONCAT(ROUND((SUM(CASE WHEN Search_Result_Exploration = "Multiple pages" THEN 1 ELSE 0 END)/COUNT(*))*100,1),'%') AS Beyond_FirstPage
FROM custom_behavior;
## Note: This percentage must be nuanced, as almost half the sample (304) did not answer the question.

#4 How important are customer opinions in the purchase process?
SELECT count(*) AS Users,
    CONCAT(ROUND((SUM(CASE WHEN Customer_Reviews_Importance = "1" THEN 1 ELSE 0 END)/count(*))*100,1),'%') AS 1Star,
    CONCAT(ROUND((SUM(CASE WHEN Customer_Reviews_Importance = "2" THEN 1 ELSE 0 END)/count(*))*100,1),'%') AS 2Star,
    CONCAT(ROUND((SUM(CASE WHEN Customer_Reviews_Importance = "3" THEN 1 ELSE 0 END)/count(*))*100,1),'%') AS 3Star,
    CONCAT(ROUND((SUM(CASE WHEN Customer_Reviews_Importance = "4" THEN 1 ELSE 0 END)/count(*))*100,1),'%') AS 4Star,
    CONCAT(ROUND((SUM(CASE WHEN Customer_Reviews_Importance = "5" THEN 1 ELSE 0 END)/count(*))*100,1),'%') AS 5Star
FROM custom_behavior;

#5 How often do customers add products to their shopping cart during browsing?
SELECT count(*) AS Users,
    CONCAT(ROUND((SUM(CASE WHEN Add_to_Cart_Browsing = "Yes" THEN 1 ELSE 0 END)/count(*))*100,1),'%') AS Add_to_cart,
    CONCAT(ROUND((SUM(CASE WHEN Add_to_Cart_Browsing = "No" THEN 1 ELSE 0 END)/count(*))*100,1),'%') AS Notadd
FROM custom_behavior;

#6 What are the main factors influencing cart abandonment?
SELECT count(*) AS Users,
    CONCAT(ROUND((SUM(CASE WHEN Cart_Abandonment_Factors = "Changed my mind or no longer need the item" THEN 1 ELSE 0 END)/count(*))*100,1),'%') AS No_longer_need,
    CONCAT(ROUND((SUM(CASE WHEN Cart_Abandonment_Factors = "Found a better price elsewhere" THEN 1 ELSE 0 END)/count(*))*100,1),'%') AS Better_deal,
    CONCAT(ROUND((SUM(CASE WHEN Cart_Abandonment_Factors = "High shipping costs" THEN 1 ELSE 0 END)/count(*))*100,1),'%') AS Shipping_Costs_Issues,
    CONCAT(ROUND((SUM(CASE WHEN Cart_Abandonment_Factors = "others" THEN 1 ELSE 0 END)/count(*))*100,1),'%') AS Others
FROM custom_behavior;

#7 What proportion of users leave reviews of products they've bought?
SELECT count(*) AS Users,
    CONCAT(ROUND((SUM(CASE WHEN Review_Left = "Yes" THEN 1 ELSE 0 END)/count(*))*100,1),'%') AS ReviewLeft,
    CONCAT(ROUND((SUM(CASE WHEN Review_Left = "No" THEN 1 ELSE 0 END)/count(*))*100,1),'%') AS NOtleft
FROM custom_behavior;

#8 How satisfied are users with their overall shopping experience on Amazon?
SELECT count(*) AS Users,
    CONCAT(ROUND((SUM(CASE WHEN Shopping_Satisfaction = "1" THEN 1 ELSE 0 END)/count(*)) * 100, 1),'%') AS 1Star,
    CONCAT(ROUND((SUM(CASE WHEN Shopping_Satisfaction = "2" THEN 1 ELSE 0 END)/count(*)) * 100, 1),'%') AS 2Star,
    CONCAT(ROUND((SUM(CASE WHEN Shopping_Satisfaction = "3" THEN 1 ELSE 0 END)/count(*)) * 100, 1),'%') AS 3Star,
    CONCAT(ROUND((SUM(CASE WHEN Shopping_Satisfaction = "4" THEN 1 ELSE 0 END)/count(*)) * 100, 1),'%') AS 4Star,
    CONCAT(ROUND((SUM(CASE WHEN Shopping_Satisfaction = "5" THEN 1 ELSE 0 END)/count(*)) * 100, 1),'%') AS 5Star
FROM custom_behavior;

#9 What aspects of Amazon's services are most appreciated by users?
SELECT count(*) AS Users,
    CONCAT(ROUND((SUM(CASE WHEN Service_Appreciation = "All the above" THEN 1 ELSE 0 END)/count(*)) * 100, 1),'%') AS All_the_above,
    CONCAT(ROUND((SUM(CASE WHEN Service_Appreciation = "Competitive prices" THEN 1 ELSE 0 END)/count(*)) * 100, 1),'%') AS Competitive_prices,
    CONCAT(ROUND((SUM(CASE WHEN Service_Appreciation = "Customer services" THEN 1 ELSE 0 END)/count(*)) * 100, 1),'%') AS Customer_services,
    CONCAT(ROUND((SUM(CASE WHEN Service_Appreciation = "Product Recommendations" THEN 1 ELSE 0 END)/count(*)) * 100, 1),'%') AS Product_Recommendations,
    CONCAT(ROUND((SUM(CASE WHEN Service_Appreciation = "User-friendly website/app interface" THEN 1 ELSE 0 END)/count(*)) * 100, 1),'%') AS Userfriendly_interface,
    CONCAT(ROUND((SUM(CASE WHEN Service_Appreciation = "Wide product selection" THEN 1 ELSE 0 END)/count(*)) * 100, 1),'%') AS Wide_product_selection
FROM custom_behavior;

#10 What areas for improvement have users identified for Amazon?
SELECT count(*) AS Users,
    CONCAT(ROUND((SUM(CASE WHEN Improvement_Areas = "Customer service responsiveness" THEN 1 ELSE 0 END)/count(*)) * 100, 1),'%') AS Customer_service_responsiveness,
    CONCAT(ROUND((SUM(CASE WHEN Improvement_Areas = "Product quality and accuracy" THEN 1 ELSE 0 END)/count(*)) * 100, 1),'%') AS Product_quality_and_accuracy,
    CONCAT(ROUND((SUM(CASE WHEN Improvement_Areas = "Reducing packaging waste" THEN 1 ELSE 0 END)/count(*)) * 100, 1),'%') AS Reducing_packaging_waste,
    CONCAT(ROUND((SUM(CASE WHEN Improvement_Areas = "Shipping speed and reliability" THEN 1 ELSE 0 END)/count(*)) * 100, 1),'%') AS Shipping_speed_and_reliability
FROM custom_behavior;

