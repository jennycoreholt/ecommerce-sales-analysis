
![elist logo](./elist_logo.svg)

# Driving Growth: E-Commerce Analysis Identifying & Improving Sales Peformance and Customer Retention
 
An exploratory data analysis of E-List, a digital e-commerce business, examining four years of sales performance, customer behaviour, product  and program trends, in order to find and communicate key insights and reocmmendations to the operations and sales stakeholders.

## About the Company

E-List is an American e-commerce company dedicated to the digital marketplace, selling popular elecotronic products. Operating across a diverse product catalogue, E-List serves thousands of customers nationwide, from first-time buyers to loyal repeat customers who return for the quality and convenience the brand is known for. With a focus on growth, customer retention, and delivering measurable value, E-List continues to evolve its offering in an increasingly competitive digital landscape.

![growth metrics header image](./image:growth_img_6.png)

## Executive Summary

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
       <b>Findings</b><br>     
       <ul>
        <li>
         AOV consistently increases every year during Q3 (July–October), with an average uplift of approximately $20. 
        </li>
        <li>
         This pattern repeats across all four years, suggesting a structural seasonal trend rather than a one-off event.
        </li>
        <br>
        <br>
        <br>
        <br>
        <br>
       </ul>
      </td>
      <td>
       <b>Recommendations</b></br>
       <ul>
        <li>
          Double down on Q3</br>
          invest in targeted marketing campaigns ahead of July to capitalise on the natural uplift already present in the data
        </li>
        <li>
         Introduce Q3 specific bundles</br>
         Since customers are already spending more, bundling products at a slight premium could push AOV even higher
        </li>
        <li>
         Test a loyalty reward event in Q3 to retain the customers acquired during the peak and convert them into returning customers
        </li>
       </ul>
      </td>
    </tr>
   </tbody>
</table>

![growth metrics header image](./image:growth_img_8.png)

<table>
   <tbody>
    <tr>
      <td>
       <b>Findings</b><br>
       <ul>
        <li>
         AOV peaked in 2020 at $300.20, coinciding with the height of the Covid-19 pandemic.
        </li>
        <li>
         Following the peak, AOV declined steadily, returning close to pre-pandemic 2019 levels by 2022.
        </li>
        <li>
         The pattern suggests the AOV spike was driven by external pandemic conditions — increased digital dependency, remote work and learning adoption — rather than any internal shift in sales or marketing strategy
        </li>
       </ul>
      </td>
      <td>
       <b>Recommendations</b><br>
       <ul>
        <li>
         Don't benchmark against 2020. Using peak pandemic figures as a performance target would be misleading; 2019 figures are a more realistic baseline for future planning.
        </li>
        <li>
         Develop a retention strategy for pandemic-era customers — many customers acquired in 2020 may have lapsed; a re-engagement campaign targeting this cohort could recover some of that lost AOV.
        </li>
        <br>
       </ul>
      </td>
    </tr> 
   </tbody>
</table>

<br>
<hr>
<br>

### Seasonal Trends

<table>
    <tbody>
    <tr>
      <td><img src="./image:growth_img_2.png"></td>
      <td><img src="./image:growth_img_3.png"></td>
    </tr>
    <tr>
      <td><img src="./image:growth_img_4.png"></td>
      <td><img src="./image:growth_img_5.png"></td>
    </tr>
  </tbody>
</table>

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
