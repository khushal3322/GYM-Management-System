package controller;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import component.Member;

public class MemberController {

	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("psql");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();

	public boolean addmember(Member member) {

		if (member != null) {
			entityTransaction.begin();
			entityManager.persist(member);

			entityTransaction.commit();
			return true;
		}
		return false;
	}

	public Member Featch_member(int member_id) {

		return entityManager.find(Member.class, member_id);

	}

	public boolean Delete_member(int member_id) {

		Member member = Featch_member(member_id);

		if (member != null) {
			entityTransaction.begin();
			entityManager.remove(member);

			entityTransaction.commit();
			return true;
		}
		return false;
	}

	public List<Member> featch_member_all() {
		String jpql = "SELECT s FROM Member s";
		TypedQuery<Member> query = entityManager.createQuery(jpql, Member.class);
		return query.getResultList();

	}

	public boolean Update_Paid(int member_id, double new_Paid) {

		Member featch_member = Featch_member(member_id);

		if (featch_member != null) {
			entityTransaction.begin();
			double final_paid = featch_member.getPaid() + new_Paid;

			featch_member.setPaid(final_paid);

			double panding = featch_member.getPendiningAmount() - new_Paid;

			featch_member.setPendiningAmount(panding);

			entityManager.merge(featch_member);

			entityTransaction.commit();
			return true;
		}

		return false;
	}

	public boolean update_membership(int member_id, int months) {

		Member featch_member = Featch_member(member_id);

		if (featch_member != null) {
			entityTransaction.begin();

			int new_month = featch_member.getPeriod() + months;
			
			double new_total =featch_member.getTotal_Amount()+new_month*500;
			featch_member.setTotal_Amount(new_total);
			
			LocalDate expied_date = featch_member.getJoinOn().plusMonths(months);

			featch_member.setExpired(expied_date);
			featch_member.setPeriod(new_month);
			entityManager.merge(featch_member);

			entityTransaction.commit();
			return true;
		}

		return false;

	}
}
