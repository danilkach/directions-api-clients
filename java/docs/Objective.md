# Objective

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**TypeEnum**](#TypeEnum) | Type of objective function, i.e. &#x60;min&#x60; or &#x60;min-max&#x60;.   * &#x60;min&#x60;: Minimizes the objective value.  * &#x60;min-max&#x60;: Minimizes the maximum objective value.  For instance, &#x60;min&#x60; -&gt; &#x60;vehicles&#x60; minimizes the number of employed vehicles. &#x60;min&#x60; -&gt; &#x60;completion_time&#x60; minimizes the sum of your vehicle routes&#x27; completion time.  If you use, for example, &#x60;min-max&#x60; -&gt; &#x60;completion_time&#x60;, it minimizes the maximum of your vehicle routes&#x27; completion time, i.e. it minimizes the overall makespan. This only makes sense if you have more than one vehicle. In case of one vehicle, switching from &#x60;min&#x60; to &#x60;min-max&#x60; should not have any impact. If you have more than one vehicle, then the algorithm tries to constantly move stops from one vehicle to another such that the completion time of longest vehicle route can be further reduced. For example, if you have one vehicle that takes 8 hours to serve all customers, adding another vehicle (and using &#x60;min-max&#x60;) might halve the time to serve all customers to 4 hours. However, this usually comes with higher transport costs.  If you want to minimize &#x60;vehicles&#x60; first and, second, &#x60;completion_time&#x60;, you can also combine different objectives like this:  &#x60;&#x60;&#x60;json \&quot;objectives\&quot; : [    {       \&quot;type\&quot;: \&quot;min\&quot;,       \&quot;value\&quot;: \&quot;vehicles\&quot;    },    {       \&quot;type\&quot;: \&quot;min\&quot;,       \&quot;value\&quot;: \&quot;completion_time\&quot;    } ] &#x60;&#x60;&#x60;  If you want to balance activities or the number of stops among all employed drivers, you need to specify it as follows:  &#x60;&#x60;&#x60;json \&quot;objectives\&quot; : [    {       \&quot;type\&quot;: \&quot;min-max\&quot;,       \&quot;value\&quot;: \&quot;completion_time\&quot;    },    {       \&quot;type\&quot;: \&quot;min-max\&quot;,       \&quot;value\&quot;: \&quot;activities\&quot;    } ] &#x60;&#x60;&#x60;  | 
**value** | [**ValueEnum**](#ValueEnum) | The value of the objective function. The objective value &#x60;transport_time&#x60; solely considers the time your drivers spend on the road, i.e. transport time. In contrary to &#x60;transport_time&#x60;, &#x60;completion_time&#x60; also takes waiting times at customer sites into account. The &#x60;completion_time&#x60; of a route is defined as the time from starting to ending the route, i.e. the route&#x27;s transport time, the sum of waiting times plus the sum of activity durations. Note that choosing &#x60;transport_time&#x60; or &#x60;completion_time&#x60; only makes a difference if you specified time windows for your services/shipments since only in scenarios with time windows waiting times can occur. The objective value &#x60;vehicles&#x60; can only be used along with &#x60;min&#x60; and minimizes vehicles.  | 

<a name="TypeEnum"></a>
## Enum: TypeEnum
Name | Value
---- | -----
MIN | &quot;min&quot;
MIN_MAX | &quot;min-max&quot;

<a name="ValueEnum"></a>
## Enum: ValueEnum
Name | Value
---- | -----
COMPLETION_TIME | &quot;completion_time&quot;
TRANSPORT_TIME | &quot;transport_time&quot;
VEHICLES | &quot;vehicles&quot;
ACTIVITIES | &quot;activities&quot;
