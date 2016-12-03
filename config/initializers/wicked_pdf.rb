if Rails.env.production?
    @wkhtmltopdf_path = "#{ENV['GEM_HOME']}/gems/wkhtmltopdf-binary-#{Gem.loaded_specs['wkhtmltopdf-binary'].version}/bin/wkhtmltopdf_linux_x64"
else
    @wkhtmltopdf_path = `which wkhtmltopdf`.strip
end

WickedPdf.config = {
    exe_path: @wkhtmltopdf_path,
    javascript_delay: 2000
}
