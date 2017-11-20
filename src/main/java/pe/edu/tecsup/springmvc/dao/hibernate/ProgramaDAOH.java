package pe.edu.tecsup.springmvc.dao.hibernate;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pe.edu.tecsup.springmvc.dao.ProgramaDAO;
import pe.edu.tecsup.springmvc.model.Programa;

@Repository
public class ProgramaDAOH extends BaseHibernateDAO implements ProgramaDAO {

    @Override
    public List<Programa> list() {

        Criteria criteria = this.getSession().createCriteria(Programa.class);
        return criteria.list();
    }

    @Override
    public Programa get(Long t) {
        Criteria criteria = this.getSession().createCriteria(Programa.class);
        criteria.add(Restrictions.eq("id", t));
        return (Programa) criteria.uniqueResult();
    }

    @Override
    public void save(Programa t) {
        this.getSession().save(t);
    }

    @Override
    public void update(Programa t) {
        this.getSession().merge(t);
    }

    @Override
    public void delete(Programa t) {
        this.getSession().delete(t);
    }

    @Override
    public Programa getByCodigo(String codigo) {
        Criteria criteria = this.getSession().createCriteria(Programa.class);
        criteria.add(Restrictions.eq("codigo", codigo));
        return (Programa) criteria.uniqueResult();
    }

    @Override
    public List<Programa> getByDescripcion(String descripcion) {
        String sql = "from " + Programa.class.getName()+" c "
                + " left join fetch c.programa p "
                + " where c.nombre like :NOMBRE ";

        Query query = this.getSession().createQuery(sql);
        query.setString("DESCRIPCION", "%" + descripcion + "%");
        return query.list();
    }

}
