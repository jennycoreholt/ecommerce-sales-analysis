
![elist logo](./elist_logo.svg)

# Driving Growth: E-Commerce Analysis Identifying & Improving Sales Peformance and Customer Retention
 
An exploratory data analysis of E-List, a digital e-commerce business, examining four years of sales performance, customer behaviour, product  and program trends, in order to find and communicate key insights and recommendations to the operations and sales stakeholders.

## About the Company

E-List is an American e-commerce company dedicated to the digital marketplace, selling popular elecotronic products. Operating across a diverse product catalogue, E-List serves thousands of customers nationwide, from first-time buyers to loyal repeat customers who return for the quality and convenience the brand is known for. With a focus on growth, customer retention, and delivering measurable value, E-List continues to evolve its offering in an increasingly competitive digital landscape.

## Executive Summary

![growth metrics header image](./image:growth_img_6.png)

This project analyses transactional data from 2019 to 2022 to answer key business questions across five areas:  

1. **Sales Trends**  
  Monthly and yearly sales volume and revenue, tracking the rise and peak in 2020 and the subsequent decline through 2022.
  
2. **Average Order Value (AOV)**  
  How AOV evolved over time and how it differs between loyalty and non-loyalty program members.
  
3. **Customer Retention**    
  Identifying returning customers, their spend behaviour, and relationship with the loyalty program.
  
4. **Product & Geography Performance**   
  Which products and regions drove growth, and where refund rates were highest. An additionnal focus on Apple products was carried out.
  
5. **Seasonality**   
  Best and worst performing months across the four-year period.

<table>
 <tbody>
  <tr>
   <td>
    List key findings and observations here
   </td>
   <td>
     List key findings here following by key takeaways and recommendations 
   </td>
  </tr>
 </tbody>
</table>

## Table of Contents
1. [Data and Scope](#data-and-scope)
2. [Key Findings and Insights](#key-findings-and-insights)   
    2.1. [Monthly and Yearly Trends](#monthly-and-yearly-trends)         
    2.2. [Seasonal Trends](#seasonal-trends)      
    2.3. [Product Trends](#product-trends)     
    2.4. [Geographical Trends](#geographical-trends)     
    2.5. [Refund Rates](#refund-rates)    
    2.6. [Refund Rates: Apple Products Focus](#refund-rates-apple-products-focus)         
    2.7. [Loyalty Program](#loyalty-program)               
4. [Recommendations for Stakeholders](#recommendations-for-stakeholders)
5. [Limitations and Next Steps](#limitations-and-next-steps)

## Data and Scope

This project uses E-List's order dataset, presented as an excel file. A structured dataset of over 10,800 entries, containing the following segments:

- Customer Information
- Orders
- Order Status
- Geography

![Entity Relationship Digram](./image:erd.png)

## Key Findings and Insights

### Monthly and Yearly Trends

![growth metrics header image](./image:growth_img_7.png)

<table>
   <tbody>
    <tr>
      <td>
       <br>
       <b>Key Findings</b><br>     
       <ul>
        <li>
         <b>AOV consistently increases</b> every year during Q3 (July–October), with an average uplift of approximately $20. 
        </li>
        <li>
         This <b>pattern repeats across all four years</b>, suggesting a structural seasonal trend rather than a one-off event.
        </li>
       </ul>
        <br>
      </td>
      <td>
        <br>
       <b>Recommendations</b></br>
       <ul>
        <li>
          Invest in targeted marketing campaigns ahead of July to <b>capitalise on the natural uplift</b> already present in the data
        </li>
        <li>
         <b>Introduce Q3 specific bundles</b></br>
         Since customers are already spending more, bundling products at a slight premium could push AOV even higher.
        </li>
       </ul>
       <br>
      </td>
    </tr>
   </tbody>
</table>

![growth metrics header image](./image:growth_img_8.png)

<table>
   <tbody>
    <tr>
      <td>
       <br>
       <b>Key Findings</b><br>
       <ul>
        <li>
         <b>AOV peaked in 2020</b> at $300.20, coinciding with the height of the Covid-19 pandemic.
        </li>
        <li>
         Following the peak, AOV declined steadily, returning close to pre-pandemic 2019 levels by 2022.
        </li>
        <li>
         The pattern suggests the <b>AOV spike was driven by external pandemic conditions</b>, increased digital dependency, remote work and learning adoption; rather than any internal shift in sales or marketing strategy
        </li>
       </ul>
        <br>
      </td>
      <td>
       <b>Recommendations</b><br>
       <ul>
        <li>
         <b>Don't benchmark against 2020</b>. Using peak pandemic figures as a performance target would be misleading; 2019 figures are a more realistic baseline for future planning.
        </li>
        <li>
         <b>Develop a retention strategy for pandemic-era customers</b>. Many customers acquired in 2020 may have lapsed; a re-engagement campaign targeting this cohort could recover some of that lost AOV.
        </li>
       </ul>
       <br>
        <br>
      </td>
    </tr> 
   </tbody>
</table>

<br>
<hr>
<br>

### Seasonal Trends
#### Monthly Growth Over 4 Years

<table>
    <tbody>
    <tr>
      <td>
       <p><b>2019</b></p>
       <img src="./image:growth_img_2.png">
      </td>
      <td>
        <p><b>2020</b></p>
       <img src="./image:growth_img_3.png">
      </td>
    </tr>
    <tr style="background-color:none">
      <td>
       <p><b>2021</b></p>
       <img src="./image:growth_img_4.png">
      </td>
      <td>
       <p><b>2022</b></p>
       <img src="./image:growth_img_5.png">
      </td>
    </tr>
  </tbody>
</table>

<br>

#### Top Performing Months

<table>
 <tbody>
   <tr>
     <td width="50%">
      <br>
      <p><b>Key Findings </b></p>
      <ul>
       <li>
        A strong and consistent <b>Fall/Autumn seasonal trend</b> is evident across all four years. Gross Revenue, Number of Sales, and AOV all peak during this period, <b>spanning the end of Q3 through early Q4 (September– November).</b>
       </li>
       <li>
        <b>November and December</b> are the most consistently high-performing months across all metrics and all years, driven by end-of-year consumer spending behaviour.
       </li>
       <li>
July appears repeatedly as a strong performer for both revenue and sales volume, reinforcing the Q3 uplift identified in the AOV trend analysis.
        </li>
       <li>
<b>The March 2020 spike</b> (Gross Revenue +50%, Sales +46%) is a clear outlier driven by Covid-19 pandemic conditions — panic buying and accelerated digital adoption — and should be <b>excluded from seasonal benchmarking</b> to avoid distorting performance patterns
       </li>
      </ul>
      <br>
     </td>
    <td>
      <br>
      <p><b>Year by Year Highlights </b></p>
     <ul>
      <li>
      <b>2019</b> — Growth was driven by a strong Q4 with November delivering the highest single-month revenue growth at <b>+35%</b>, consistent with pre-pandemic consumer behaviour.
      </li>
      <li>
       <b>2020</b> — March dominates due to pandemic conditions. Excluding March, December (+34%) emerges as the true seasonal peak, consistent with other years.
      </li>
      <li>
       <b>2021</b> — November and December reassert themselves as the top performers, suggesting a <b>return to normalcy</b> in seasonal buying patterns post-pandemic peak
      </li>
      <li>
       <b>2022</b> — The seasonal pattern holds with December (+26%) and November (+17%) leading, though overall growth rates are lower reflecting the broader declining revenue trend
      </li>
     </ul>
     <br>
     <br>
     <br>
    </td>
   </tr>
  </tbody>
 </tr>
 <table>
       
<br>
<hr>
<br>

### Product Trends

![Entity Relationship Digram](./image:growth_img_9.png)

<table>
   <tbody>
    <tr>
     <td width="50%">example</td>
     <td width="50%">example</td>
    </tr>
   </tbody>
</table>

![Entity Relationship Digram](./image:growth_img_10.png)

<table width="100%">
   <tbody>
    <tr>
     <td width="50%">example</td>
     <td width="50%">example</td>
    </tr>
   </tbody>
</table>

<br>
<hr>
<br>

### Geographical Trends

![Entity Relationship Digram](./image:growth_img_13.png)

![Entity Relationship Digram](./image:growth_img_11.png)

![Entity Relationship Digram](./image:growth_img_12.png)

<br>
<hr>
<br>

### Refund Rates

<table>
    <tbody>
    <tr>
      <td><img src="./image:refund_img_3.png"></td>
      <td><img src="./image:refund_img_4.png"></td>
    </tr>
    <tr>
      <td><img src="./image:refund_img_5.png"></td>
      <td><img src="./image:refund_img_6.png"></td>
    </tr>
  </tbody>
</table>

![Entity Relationship Digram](./image:refund_img_1.png)

<br>
<hr>
<br>


### Refund Rates: Apple Products Focus

![Entity Relationship Digram](./image:refund_img_2.png)

<br>
<hr>
<br>

### Loyalty Program

![Entity Relationship Digram](./image:loyalty_img_1.png)
![Entity Relationship Digram](./image:loyalty_img_4.png)

![Entity Relationship Digram](./image:loyalty_img_3.png)

![Entity Relationship Digram](./image:loyalty_img_5.png)

![Entity Relationship Digram](./image:loyalty_img_6.png)

![Entity Relationship Digram](./image:loyalty_img_7.png)

## Recommendations for Stakeholders

## Limitations and Next Steps

### Limitations

### Next Steps
