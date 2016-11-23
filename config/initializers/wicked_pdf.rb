# WickedPdf.config = {
#   exe_path: '/Users/p.mahidharreddy/.rbenv/shims/wkhtmltopdf'
# }

if Rails.env.production?
  wkhtmltopdf_path = "#{Rails.root}/.rbenv/shims/wkhtmltopdf-amd64"
else
  wkhtmltopdf_path = "/Users/p.mahidharreddy/.rbenv/shims/wkhtmltopdf"
end

WickedPdf.config = { exe_path: wkhtmltopdf_path, wkhtmltopdf: wkhtmltopdf_path }
