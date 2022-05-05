// To parse this JSON data, do
//
//     final moni = moniFromJson(jsonString);

import 'dart:convert';

Moni moniFromJson(String str) => Moni.fromJson(json.decode(str));

class Moni {
  Moni({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  Data? data;

  factory Moni.fromJson(Map<String, dynamic> json) => Moni(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );
}

class Data {
  Data({
    this.clusterPurseBalance,
    this.totalInterestEarned,
    this.totalOwedByMembers,
    this.overdueAgents,
    this.clusterName,
    this.clusterRepaymentRate,
    this.clusterRepaymentDay,
    this.dueAgents,
    this.activeAgents,
    this.inactiveAgents,
  });

  int? clusterPurseBalance;
  int? totalInterestEarned;
  int? totalOwedByMembers;
  List<dynamic>? overdueAgents;
  String? clusterName;
  double? clusterRepaymentRate;
  String? clusterRepaymentDay;
  List<dynamic>? dueAgents;
  List<ActiveAgent>? activeAgents;
  List<ActiveAgent>? inactiveAgents;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        clusterPurseBalance: json["cluster_purse_balance"],
        totalInterestEarned: json["total_interest_earned"],
        totalOwedByMembers: json["total_owed_by_members"],
        overdueAgents: List<dynamic>.from(json["overdue_agents"].map((x) => x)),
        clusterName: json["cluster_name"],
        clusterRepaymentRate: json["cluster_repayment_rate"].toDouble(),
        clusterRepaymentDay: json["cluster_repayment_day"],
        dueAgents: List<dynamic>.from(json["due_agents"].map((x) => x)),
        activeAgents: List<ActiveAgent>.from(
            json["active_agents"].map((x) => ActiveAgent.fromJson(x))),
        inactiveAgents: List<ActiveAgent>.from(
            json["inactive_agents"].map((x) => ActiveAgent.fromJson(x))),
      );
}

class ActiveAgent {
  ActiveAgent({
    this.acceptedAt,
    this.createdAt,
    this.agent,
  });

  DateTime? acceptedAt;
  DateTime? createdAt;
  Agent? agent;

  factory ActiveAgent.fromJson(Map<String, dynamic> json) => ActiveAgent(
        acceptedAt: DateTime.parse(json["accepted_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        agent: Agent.fromJson(json["agent"]),
      );
}

class Agent {
  Agent({
    this.firstName,
    this.middleName,
    this.lastName,
    this.nickname,
    this.eligibleLoanModifiedAt,
    this.createdAt,
    this.modifiedAt,
    this.capAgentLoan,
    this.loanCount,
    // this.recentLoan,
  });

  String? firstName;
  String? middleName;
  String? lastName;
  String? nickname;

  DateTime? eligibleLoanModifiedAt;
  DateTime? createdAt;
  DateTime? modifiedAt;
  int? capAgentLoan;
  int? loanCount;
  // RecentLoan? recentLoan;

  factory Agent.fromJson(Map<String, dynamic> json) => Agent(
        firstName: json["first_name"],
        middleName: json["middle_name"] == null ? null : json["middle_name"],
        lastName: json["last_name"],
        nickname: json["nickname"],
        eligibleLoanModifiedAt: json["eligible_loan_modified_at"] == null
            ? null
            : DateTime.parse(json["eligible_loan_modified_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        modifiedAt: DateTime.parse(json["modified_at"]),
        capAgentLoan: json["cap_agent_loan"],
        loanCount: json["loan_count"],
        // recentLoan: json["recent_loan"] == null
        //     ? null
        //     : RecentLoan.fromJson(json["recent_loan"]),
      );
}

// class RecentLoan {
//   RecentLoan({
//     this.id,
//     this.agentId,
//     this.clusterId,
//     this.agentLoanId,
//     this.loanAmount,
//     this.createdAt,
//     this.agentLoan,
//   });

//   String id;
//   String agentId;
//   String clusterId;
//   String agentLoanId;
//   int loanAmount;
//   DateTime createdAt;
//   AgentLoan agentLoan;

//   factory RecentLoan.fromJson(Map<String, dynamic> json) => RecentLoan(
//         id: json["id"],
//         agentId: json["agent_id"],
//         clusterId: json["cluster_id"],
//         agentLoanId: json["agent_loan_id"],
//         loanAmount: json["loan_amount"],
//         createdAt: DateTime.parse(json["created_at"]),
//         agentLoan: AgentLoan.fromJson(json["agent_loan"]),
//       );
// }

// class AgentLoan {
//   AgentLoan({
//     this.id,
//     this.agentId,
//     this.agentCreditScoreId,
//     this.loanId,
//     this.agentCardId,
//     this.interestType,
//     this.interestValue,
//     this.loanDurationType,
//     this.loanDuration,
//     this.loanDueDate,
//     this.daysPastDue,
//     this.loanAmount,
//     this.loanAmountDue,
//     this.loanInterestDue,
//     this.loanPaymentDate,
//     this.loanPaymentRate,
//     this.loanAmountPaid,
//     this.penaltyOutstanding,
//     this.penaltyPaid,
//     this.principalPaid,
//     this.principalOutstanding,
//     this.interestPaid,
//     this.interestOutstanding,
//     this.penaltyAmount,
//     this.loanStatus,
//     this.isMax,
//     this.statusId,
//     this.acceptTerms,
//     this.createdAt,
//     this.modifiedAt,
//     this.status,
//   });

//   String id;
//   String agentId;
//   String agentCreditScoreId;
//   String loanId;
//   String agentCardId;
//   String interestType;
//   double interestValue;
//   String loanDurationType;
//   int loanDuration;
//   DateTime loanDueDate;
//   int daysPastDue;
//   int loanAmount;
//   int loanAmountDue;
//   int loanInterestDue;
//   DateTime loanPaymentDate;
//   int loanPaymentRate;
//   int loanAmountPaid;
//   int penaltyOutstanding;
//   int penaltyPaid;
//   int principalPaid;
//   int principalOutstanding;
//   int interestPaid;
//   int interestOutstanding;
//   int penaltyAmount;
//   Status loanStatus;
//   int isMax;
//   int statusId;
//   int acceptTerms;
//   DateTime createdAt;
//   DateTime modifiedAt;
//   Status status;

//   factory AgentLoan.fromJson(Map<String, dynamic> json) => AgentLoan(
//         id: json["id"],
//         agentId: json["agent_id"],
//         agentCreditScoreId: json["agent_credit_score_id"],
//         loanId: json["loan_id"],
//         agentCardId: json["agent_card_id"],
//         interestType: json["interest_type"],
//         interestValue: json["interest_value"].toDouble(),
//         loanDurationType: json["loan_duration_type"],
//         loanDuration: json["loan_duration"],
//         loanDueDate: DateTime.parse(json["loan_due_date"]),
//         daysPastDue:
//             json["days_past_due"] == null ? null : json["days_past_due"],
//         loanAmount: json["loan_amount"],
//         loanAmountDue: json["loan_amount_due"],
//         loanInterestDue: json["loan_interest_due"],
//         loanPaymentDate: json["loan_payment_date"] == null
//             ? null
//             : DateTime.parse(json["loan_payment_date"]),
//         loanPaymentRate: json["loan_payment_rate"] == null
//             ? null
//             : json["loan_payment_rate"],
//         loanAmountPaid: json["loan_amount_paid"],
//         penaltyOutstanding: json["penalty_outstanding"],
//         penaltyPaid: json["penalty_paid"],
//         principalPaid: json["principal_paid"],
//         principalOutstanding: json["principal_outstanding"],
//         interestPaid: json["interest_paid"],
//         interestOutstanding: json["interest_outstanding"],
//         penaltyAmount: json["penalty_amount"],
//         loanStatus: Status.fromJson(json["loan_status"]),
//         isMax: json["is_max"],
//         statusId: json["status_id"],
//         acceptTerms: json["accept_terms"],
//         createdAt: DateTime.parse(json["created_at"]),
//         modifiedAt: DateTime.parse(json["modified_at"]),
//         status: Status.fromJson(json["status"]),
//       );
// }

// class Status {
//   Status({
//     this.id,
//     this.name,
//     this.label,
//     this.description,
//     this.createdAt,
//     this.modifiedAt,
//   });

//   int id;
//   String name;
//   String label;
//   String description;
//   DateTime createdAt;
//   DateTime modifiedAt;

//   factory Status.fromJson(Map<String, dynamic> json) => Status(
//         id: json["id"],
//         name: json["name"],
//         label: json["label"],
//         description: json["description"],
//         createdAt: DateTime.parse(json["created_at"]),
//         modifiedAt: DateTime.parse(json["modified_at"]),
//       );
// }
