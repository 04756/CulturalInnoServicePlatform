//import dao.OrderDAO;
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.Transaction;
//import org.hibernate.cfg.Configuration;
//import org.hibernate.query.Query;
//import po.Order;
//
//import java.util.UUID;

public class Test
{
   /* public static void main(String[] args)
    {
//        Configuration cfg=new Configuration().configure();
//        SessionFactory sf=cfg.buildSessionFactory();
//        Session hs=sf.openSession();
//        Transaction ts=hs.beginTransaction();
//
//        String s="from User";
//        Query q=hs.createQuery(s);
//        System.out.println(q.list());
//
//        ts.commit();
//        hs.close();

       *//* UUID uuid=UUID.randomUUID();
        System.out.println(uuid.toString());*//*

       System.out.println("//////OrderDAO测试");
        OrderDAO od = new OrderDAO();
        Order newOrder = new Order("13051205197","pro1");
        newOrder.setCount(2);
       System.out.println(od.addOrder(newOrder));
       System.out.println(od.getOrdersByPage(1));
       System.out.println(od.getUserOrders("13051205197"));
       System.out.println("///////ProductDAO测试");
    }*/
}
