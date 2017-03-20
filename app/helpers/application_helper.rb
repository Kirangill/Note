module ApplicationHelper
<<<<<<< HEAD
=======

	def link_to_add_fields(name, f, type)
		new_object = f.object.send "build_#{type}"
		id = "new_#{type}"
		fields = f.send("#{type}_fields", new_object, child_index: id) do |builder|
			render(type.to_s + "_fields", f: builder)
		end
		link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
    end
>>>>>>> b465acf78cf81e0fd56d2dcf73347ec3ba39c22b
end
