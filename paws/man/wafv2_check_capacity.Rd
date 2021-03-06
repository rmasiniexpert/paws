% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wafv2_operations.R
\name{wafv2_check_capacity}
\alias{wafv2_check_capacity}
\title{This is the latest version of AWS WAF, named AWS WAFV2, released in
November, 2019}
\usage{
wafv2_check_capacity(Scope, Rules)
}
\arguments{
\item{Scope}{[required] Specifies whether this is for an AWS CloudFront distribution or for a
regional application. A regional application can be an Application Load
Balancer (ALB) or an API Gateway stage.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:
\itemize{
\item CLI - Specify the Region when you use the CloudFront scope:
\code{--scope=CLOUDFRONT --region=us-east-1}.
\item API and SDKs - For all calls, use the Region endpoint us-east-1.
}}

\item{Rules}{[required] An array of Rule that you\'re configuring to use in a rule group or web
ACL.}
}
\description{
This is the latest version of \strong{AWS WAF}, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the \href{https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html}{AWS WAF Developer Guide}.
}
\details{
Returns the web ACL capacity unit (WCU) requirements for a specified
scope and set of rules. You can use this to check the capacity
requirements for the rules you want to use in a RuleGroup or WebACL.

AWS WAF uses WCUs to calculate and control the operating resources that
are used to run your rules, rule groups, and web ACLs. AWS WAF
calculates capacity differently for each rule type, to reflect the
relative cost of each rule. Simple rules that cost little to run use
fewer WCUs than more complex rules that use more processing power. Rule
group capacity is fixed at creation, which helps users plan their web
ACL WCU usage when they use a rule group. The WCU limit for web ACLs is
1,500.
}
\section{Request syntax}{
\preformatted{svc$check_capacity(
  Scope = "CLOUDFRONT"|"REGIONAL",
  Rules = list(
    list(
      Name = "string",
      Priority = 123,
      Statement = list(
        ByteMatchStatement = list(
          SearchString = raw,
          FieldToMatch = list(
            SingleHeader = list(
              Name = "string"
            ),
            SingleQueryArgument = list(
              Name = "string"
            ),
            AllQueryArguments = list(),
            UriPath = list(),
            QueryString = list(),
            Body = list(),
            Method = list()
          ),
          TextTransformations = list(
            list(
              Priority = 123,
              Type = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"
            )
          ),
          PositionalConstraint = "EXACTLY"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CONTAINS_WORD"
        ),
        SqliMatchStatement = list(
          FieldToMatch = list(
            SingleHeader = list(
              Name = "string"
            ),
            SingleQueryArgument = list(
              Name = "string"
            ),
            AllQueryArguments = list(),
            UriPath = list(),
            QueryString = list(),
            Body = list(),
            Method = list()
          ),
          TextTransformations = list(
            list(
              Priority = 123,
              Type = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"
            )
          )
        ),
        XssMatchStatement = list(
          FieldToMatch = list(
            SingleHeader = list(
              Name = "string"
            ),
            SingleQueryArgument = list(
              Name = "string"
            ),
            AllQueryArguments = list(),
            UriPath = list(),
            QueryString = list(),
            Body = list(),
            Method = list()
          ),
          TextTransformations = list(
            list(
              Priority = 123,
              Type = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"
            )
          )
        ),
        SizeConstraintStatement = list(
          FieldToMatch = list(
            SingleHeader = list(
              Name = "string"
            ),
            SingleQueryArgument = list(
              Name = "string"
            ),
            AllQueryArguments = list(),
            UriPath = list(),
            QueryString = list(),
            Body = list(),
            Method = list()
          ),
          ComparisonOperator = "EQ"|"NE"|"LE"|"LT"|"GE"|"GT",
          Size = 123,
          TextTransformations = list(
            list(
              Priority = 123,
              Type = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"
            )
          )
        ),
        GeoMatchStatement = list(
          CountryCodes = list(
            "AF"|"AX"|"AL"|"DZ"|"AS"|"AD"|"AO"|"AI"|"AQ"|"AG"|"AR"|"AM"|"AW"|"AU"|"AT"|"AZ"|"BS"|"BH"|"BD"|"BB"|"BY"|"BE"|"BZ"|"BJ"|"BM"|"BT"|"BO"|"BQ"|"BA"|"BW"|"BV"|"BR"|"IO"|"BN"|"BG"|"BF"|"BI"|"KH"|"CM"|"CA"|"CV"|"KY"|"CF"|"TD"|"CL"|"CN"|"CX"|"CC"|"CO"|"KM"|"CG"|"CD"|"CK"|"CR"|"CI"|"HR"|"CU"|"CW"|"CY"|"CZ"|"DK"|"DJ"|"DM"|"DO"|"EC"|"EG"|"SV"|"GQ"|"ER"|"EE"|"ET"|"FK"|"FO"|"FJ"|"FI"|"FR"|"GF"|"PF"|"TF"|"GA"|"GM"|"GE"|"DE"|"GH"|"GI"|"GR"|"GL"|"GD"|"GP"|"GU"|"GT"|"GG"|"GN"|"GW"|"GY"|"HT"|"HM"|"VA"|"HN"|"HK"|"HU"|"IS"|"IN"|"ID"|"IR"|"IQ"|"IE"|"IM"|"IL"|"IT"|"JM"|"JP"|"JE"|"JO"|"KZ"|"KE"|"KI"|"KP"|"KR"|"KW"|"KG"|"LA"|"LV"|"LB"|"LS"|"LR"|"LY"|"LI"|"LT"|"LU"|"MO"|"MK"|"MG"|"MW"|"MY"|"MV"|"ML"|"MT"|"MH"|"MQ"|"MR"|"MU"|"YT"|"MX"|"FM"|"MD"|"MC"|"MN"|"ME"|"MS"|"MA"|"MZ"|"MM"|"NA"|"NR"|"NP"|"NL"|"NC"|"NZ"|"NI"|"NE"|"NG"|"NU"|"NF"|"MP"|"NO"|"OM"|"PK"|"PW"|"PS"|"PA"|"PG"|"PY"|"PE"|"PH"|"PN"|"PL"|"PT"|"PR"|"QA"|"RE"|"RO"|"RU"|"RW"|"BL"|"SH"|"KN"|"LC"|"MF"|"PM"|"VC"|"WS"|"SM"|"ST"|"SA"|"SN"|"RS"|"SC"|"SL"|"SG"|"SX"|"SK"|"SI"|"SB"|"SO"|"ZA"|"GS"|"SS"|"ES"|"LK"|"SD"|"SR"|"SJ"|"SZ"|"SE"|"CH"|"SY"|"TW"|"TJ"|"TZ"|"TH"|"TL"|"TG"|"TK"|"TO"|"TT"|"TN"|"TR"|"TM"|"TC"|"TV"|"UG"|"UA"|"AE"|"GB"|"US"|"UM"|"UY"|"UZ"|"VU"|"VE"|"VN"|"VG"|"VI"|"WF"|"EH"|"YE"|"ZM"|"ZW"
          ),
          ForwardedIPConfig = list(
            HeaderName = "string",
            FallbackBehavior = "MATCH"|"NO_MATCH"
          )
        ),
        RuleGroupReferenceStatement = list(
          ARN = "string",
          ExcludedRules = list(
            list(
              Name = "string"
            )
          )
        ),
        IPSetReferenceStatement = list(
          ARN = "string",
          IPSetForwardedIPConfig = list(
            HeaderName = "string",
            FallbackBehavior = "MATCH"|"NO_MATCH",
            Position = "FIRST"|"LAST"|"ANY"
          )
        ),
        RegexPatternSetReferenceStatement = list(
          ARN = "string",
          FieldToMatch = list(
            SingleHeader = list(
              Name = "string"
            ),
            SingleQueryArgument = list(
              Name = "string"
            ),
            AllQueryArguments = list(),
            UriPath = list(),
            QueryString = list(),
            Body = list(),
            Method = list()
          ),
          TextTransformations = list(
            list(
              Priority = 123,
              Type = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"
            )
          )
        ),
        RateBasedStatement = list(
          Limit = 123,
          AggregateKeyType = "IP"|"FORWARDED_IP",
          ScopeDownStatement = list(),
          ForwardedIPConfig = list(
            HeaderName = "string",
            FallbackBehavior = "MATCH"|"NO_MATCH"
          )
        ),
        AndStatement = list(
          Statements = list(
            list()
          )
        ),
        OrStatement = list(
          Statements = list(
            list()
          )
        ),
        NotStatement = list(
          Statement = list()
        ),
        ManagedRuleGroupStatement = list(
          VendorName = "string",
          Name = "string",
          ExcludedRules = list(
            list(
              Name = "string"
            )
          )
        )
      ),
      Action = list(
        Block = list(),
        Allow = list(),
        Count = list()
      ),
      OverrideAction = list(
        Count = list(),
        None = list()
      ),
      VisibilityConfig = list(
        SampledRequestsEnabled = TRUE|FALSE,
        CloudWatchMetricsEnabled = TRUE|FALSE,
        MetricName = "string"
      )
    )
  )
)
}
}

\keyword{internal}
