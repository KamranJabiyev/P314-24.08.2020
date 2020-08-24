create table GroupTypes(
	Id int identity primary key,
	Name nvarchar(100) not null
)

create table Groups(
	Id int identity primary key,
	Name nvarchar(10) not null,
	MaxCount int check(MaxCount<=18),
	GroupTypesId int references GroupTypes(Id)
)

select * from Groups

select * from GroupTypes

--inner join
select g.Name 'Group',MaxCount,gt.Name 'Type' from Groups as g
join GroupTypes as gt
on g.GroupTypesId=gt.Id

--left outer join
select g.Name 'Group',MaxCount,gt.Name 'Type' from Groups as g
left join GroupTypes as gt
on g.GroupTypesId=gt.Id

--right outer join
select g.Name 'Group',MaxCount,gt.Name 'Type' from Groups as g
right join GroupTypes as gt
on g.GroupTypesId=gt.Id

--full outer join
select g.Name 'Group',MaxCount,gt.Name 'Type' from Groups as g
full join GroupTypes as gt
on g.GroupTypesId=gt.Id