# WickedPdf.config = {
#   exe_path: '/Users/p.mahidharreddy/.rbenv/shims/wkhtmltopdf'
# }

if Rails.env.production?
    wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf"
else
    wkhtmltopdf_path = '/Users/p.mahidharreddy/.rbenv/shims/wkhtmltopdf'
    # wkhtmltopdf_path = "/usr/local/bin/wkhtmltopdf"
end

WickedPdf.config = { exe_path: wkhtmltopdf_path, javascript_delay: 3000, wkhtmltopdf: wkhtmltopdf_path }
