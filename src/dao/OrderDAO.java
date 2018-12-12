package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import po.Order;
import java.util.UUID;

public class OrderDAO {

	private Configuration cfg;
	private SessionFactory sf=null;
	private Session hsession=null;
	private Transaction ts=null;
	private int maxEssayNum = 12;

	public void getSession() {
		try {
			this.cfg = new Configuration().configure();
			this.sf = cfg.buildSessionFactory();
			this.hsession = sf.openSession();
			this.ts = hsession.beginTransaction();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public Order addOrder(Order newOrder) {
		this.getSession();
		try {

			//hsession.add(newOrder);
			UUID uuid=UUID.randomUUID();
			System.out.println(uuid.toString());
			newOrder.setOrderId(uuid.toString());
			hsession.save(newOrder);

            SessionMgr.releaseConnect(sf, hsession);

			return newOrder;
		}catch(Exception e) {
			e.printStackTrace();
//			SessionMgr.releaseConnect(sf, hsession);
			return null;
		}
	}
	
	public List getUserOrders(String userId) {
		this.getSession();
		try {

			Query hquery = hsession.createQuery("from Order o where o.userId=?");
			hquery.setString(0,userId);
			List<Order> list = hquery.list();

            SessionMgr.releaseConnect(sf, hsession);

			return list;
		}catch(Exception e) {
			e.printStackTrace();
//			SessionMgr.releaseConnect(sf, hsession);
			return null;
		}
	}
	

	public List getOrdersByPage(int page) {
		this.getSession();
		try {

//			Query hquery = hsession.createQuery("from Order o limit ?,?");
//			hquery.setInteger(0,(page-1)*maxEssayNum-1);
//			hquery.setInteger(1,maxEssayNum);
//          List<Order> list = hquery.list();
//          return list;

			/*Query hQuery=hsession.createQuery("from Order");
			hQuery.setFirstResult((page-1)*maxEssayNum);
			hQuery.setMaxResults(maxEssayNum);
			List<Order> orderList=hQuery.list();

            SessionMgr.releaseConnect(sf, hsession);*/
			org.hibernate.query.Query q = hsession.createQuery("select '*' from Order limit "+(page-1)*maxEssayNum+","+page*maxEssayNum);
			List t = q.list();

			SessionMgr.releaseConnect(sf, hsession);
			return t;
			}catch(Exception e) {
			e.printStackTrace();
//			SessionMgr.releaseConnect(sf, hsession);
			return null;
		}
	}
	
}
