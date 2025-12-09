using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.ChessMoveValidator
{
    /// <summary>
    /// Query options for the Chess Move Validator API
    /// </summary>
    public class ChessMoveValidatorQueryOptions
    {
        /// <summary>
        /// Chess move in algebraic notation
        /// Example: Nf3
        /// </summary>
        [JsonProperty("move")]
        public string Move { get; set; }
    }
}
