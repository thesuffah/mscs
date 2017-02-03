package mum.cs545.service;

import mum.cs545.dataaccess.orm.User;

public interface UserService extends GenericService<User> {
	public User getByName(String name);
	public User getById(int id);
}
