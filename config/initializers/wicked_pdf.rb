if Rails.env.production?
    @wkhtmltopdf_path = "#{ENV['GEM_HOME']}/gems/wkhtmltopdf-binary-edge-0.12.3.0/bin/wkhtmltopdf"
else
    @wkhtmltopdf_path = `which wkhtmltopdf`.strip
end

WickedPdf.config = {
    exe_path: @wkhtmltopdf_path,
    javascript_delay: 2000
}
