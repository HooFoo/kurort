class MaterialFormBuilder < OxymoronFormBuilder


  def text_field(label, *args)
    @template.content_tag("md-input-container",
                          @template.content_tag("label",
                                                label.to_s.humanize,
                                                :for => "#{@object_name}_#{label}") +
                                                super(label, *args))

  end

  def password_field(label, *args)
    @template.content_tag("md-input-container",
                          @template.content_tag("label",
                                                label.to_s.humanize,
                                                :for => "#{@object_name}_#{label}") +
                                                super(label, *args))

  end

end