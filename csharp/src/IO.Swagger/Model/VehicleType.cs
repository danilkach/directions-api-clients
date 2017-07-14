/* 
 * GraphHopper Directions API
 *
 * You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
 *
 * OpenAPI spec version: 1.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;

namespace IO.Swagger.Model
{
    /// <summary>
    /// VehicleType
    /// </summary>
    [DataContract]
    public partial class VehicleType :  IEquatable<VehicleType>, IValidatableObject
    {
        /// <summary>
        /// Profile of vehicle type
        /// </summary>
        /// <value>Profile of vehicle type</value>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum ProfileEnum
        {
            
            /// <summary>
            /// Enum Car for "car"
            /// </summary>
            [EnumMember(Value = "car")]
            Car,
            
            /// <summary>
            /// Enum Bike for "bike"
            /// </summary>
            [EnumMember(Value = "bike")]
            Bike,
            
            /// <summary>
            /// Enum Foot for "foot"
            /// </summary>
            [EnumMember(Value = "foot")]
            Foot,
            
            /// <summary>
            /// Enum Mtb for "mtb"
            /// </summary>
            [EnumMember(Value = "mtb")]
            Mtb,
            
            /// <summary>
            /// Enum Motorcycle for "motorcycle"
            /// </summary>
            [EnumMember(Value = "motorcycle")]
            Motorcycle,
            
            /// <summary>
            /// Enum Racingbike for "racingbike"
            /// </summary>
            [EnumMember(Value = "racingbike")]
            Racingbike,
            
            /// <summary>
            /// Enum Truck for "truck"
            /// </summary>
            [EnumMember(Value = "truck")]
            Truck,
            
            /// <summary>
            /// Enum Smalltruck for "small_truck"
            /// </summary>
            [EnumMember(Value = "small_truck")]
            Smalltruck
        }

        /// <summary>
        /// Profile of vehicle type
        /// </summary>
        /// <value>Profile of vehicle type</value>
        [DataMember(Name="profile", EmitDefaultValue=false)]
        public ProfileEnum? Profile { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="VehicleType" /> class.
        /// </summary>
        /// <param name="TypeId">Unique identifier for the vehicle type.</param>
        /// <param name="Profile">Profile of vehicle type.</param>
        /// <param name="Capacity">array of capacity dimensions.</param>
        /// <param name="SpeedFactor">speed_factor of vehicle type.</param>
        /// <param name="ServiceTimeFactor">service time factor of vehicle type.</param>
        /// <param name="CostPerMeter">cost parameter per distance unit, here meter is used.</param>
        /// <param name="CostPerSecond">cost parameter per time unit, here second is used.</param>
        /// <param name="CostPerActivation">cost parameter vehicle activation, i.e. fixed costs per vehicle.</param>
        public VehicleType(string TypeId = default(string), ProfileEnum? Profile = default(ProfileEnum?), List<int?> Capacity = default(List<int?>), double? SpeedFactor = default(double?), double? ServiceTimeFactor = default(double?), double? CostPerMeter = default(double?), double? CostPerSecond = default(double?), double? CostPerActivation = default(double?))
        {
            this.TypeId = TypeId;
            this.Profile = Profile;
            this.Capacity = Capacity;
            this.SpeedFactor = SpeedFactor;
            this.ServiceTimeFactor = ServiceTimeFactor;
            this.CostPerMeter = CostPerMeter;
            this.CostPerSecond = CostPerSecond;
            this.CostPerActivation = CostPerActivation;
        }
        
        /// <summary>
        /// Unique identifier for the vehicle type
        /// </summary>
        /// <value>Unique identifier for the vehicle type</value>
        [DataMember(Name="type_id", EmitDefaultValue=false)]
        public string TypeId { get; set; }
        /// <summary>
        /// array of capacity dimensions
        /// </summary>
        /// <value>array of capacity dimensions</value>
        [DataMember(Name="capacity", EmitDefaultValue=false)]
        public List<int?> Capacity { get; set; }
        /// <summary>
        /// speed_factor of vehicle type
        /// </summary>
        /// <value>speed_factor of vehicle type</value>
        [DataMember(Name="speed_factor", EmitDefaultValue=false)]
        public double? SpeedFactor { get; set; }
        /// <summary>
        /// service time factor of vehicle type
        /// </summary>
        /// <value>service time factor of vehicle type</value>
        [DataMember(Name="service_time_factor", EmitDefaultValue=false)]
        public double? ServiceTimeFactor { get; set; }
        /// <summary>
        /// cost parameter per distance unit, here meter is used
        /// </summary>
        /// <value>cost parameter per distance unit, here meter is used</value>
        [DataMember(Name="cost_per_meter", EmitDefaultValue=false)]
        public double? CostPerMeter { get; set; }
        /// <summary>
        /// cost parameter per time unit, here second is used
        /// </summary>
        /// <value>cost parameter per time unit, here second is used</value>
        [DataMember(Name="cost_per_second", EmitDefaultValue=false)]
        public double? CostPerSecond { get; set; }
        /// <summary>
        /// cost parameter vehicle activation, i.e. fixed costs per vehicle
        /// </summary>
        /// <value>cost parameter vehicle activation, i.e. fixed costs per vehicle</value>
        [DataMember(Name="cost_per_activation", EmitDefaultValue=false)]
        public double? CostPerActivation { get; set; }
        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class VehicleType {\n");
            sb.Append("  TypeId: ").Append(TypeId).Append("\n");
            sb.Append("  Profile: ").Append(Profile).Append("\n");
            sb.Append("  Capacity: ").Append(Capacity).Append("\n");
            sb.Append("  SpeedFactor: ").Append(SpeedFactor).Append("\n");
            sb.Append("  ServiceTimeFactor: ").Append(ServiceTimeFactor).Append("\n");
            sb.Append("  CostPerMeter: ").Append(CostPerMeter).Append("\n");
            sb.Append("  CostPerSecond: ").Append(CostPerSecond).Append("\n");
            sb.Append("  CostPerActivation: ").Append(CostPerActivation).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="obj">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object obj)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            return this.Equals(obj as VehicleType);
        }

        /// <summary>
        /// Returns true if VehicleType instances are equal
        /// </summary>
        /// <param name="other">Instance of VehicleType to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(VehicleType other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.TypeId == other.TypeId ||
                    this.TypeId != null &&
                    this.TypeId.Equals(other.TypeId)
                ) && 
                (
                    this.Profile == other.Profile ||
                    this.Profile != null &&
                    this.Profile.Equals(other.Profile)
                ) && 
                (
                    this.Capacity == other.Capacity ||
                    this.Capacity != null &&
                    this.Capacity.SequenceEqual(other.Capacity)
                ) && 
                (
                    this.SpeedFactor == other.SpeedFactor ||
                    this.SpeedFactor != null &&
                    this.SpeedFactor.Equals(other.SpeedFactor)
                ) && 
                (
                    this.ServiceTimeFactor == other.ServiceTimeFactor ||
                    this.ServiceTimeFactor != null &&
                    this.ServiceTimeFactor.Equals(other.ServiceTimeFactor)
                ) && 
                (
                    this.CostPerMeter == other.CostPerMeter ||
                    this.CostPerMeter != null &&
                    this.CostPerMeter.Equals(other.CostPerMeter)
                ) && 
                (
                    this.CostPerSecond == other.CostPerSecond ||
                    this.CostPerSecond != null &&
                    this.CostPerSecond.Equals(other.CostPerSecond)
                ) && 
                (
                    this.CostPerActivation == other.CostPerActivation ||
                    this.CostPerActivation != null &&
                    this.CostPerActivation.Equals(other.CostPerActivation)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            // credit: http://stackoverflow.com/a/263416/677735
            unchecked // Overflow is fine, just wrap
            {
                int hash = 41;
                // Suitable nullity checks etc, of course :)
                if (this.TypeId != null)
                    hash = hash * 59 + this.TypeId.GetHashCode();
                if (this.Profile != null)
                    hash = hash * 59 + this.Profile.GetHashCode();
                if (this.Capacity != null)
                    hash = hash * 59 + this.Capacity.GetHashCode();
                if (this.SpeedFactor != null)
                    hash = hash * 59 + this.SpeedFactor.GetHashCode();
                if (this.ServiceTimeFactor != null)
                    hash = hash * 59 + this.ServiceTimeFactor.GetHashCode();
                if (this.CostPerMeter != null)
                    hash = hash * 59 + this.CostPerMeter.GetHashCode();
                if (this.CostPerSecond != null)
                    hash = hash * 59 + this.CostPerSecond.GetHashCode();
                if (this.CostPerActivation != null)
                    hash = hash * 59 + this.CostPerActivation.GetHashCode();
                return hash;
            }
        }

        public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        { 
            yield break;
        }
    }

}
