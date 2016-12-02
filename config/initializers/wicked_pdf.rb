 WickedPdf.config = {
#   exe_path: '/Users/p.mahidharreddy/.rbenv/shims/wkhtmltopdf'
    wkhtmltopdf_path = Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s
 }

# if Rails.env.production?
#     # wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-amd64"
#     wkhtmltopdf_path = Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s
# else
#     wkhtmltopdf_path = '/Users/p.mahidharreddy/.rbenv/shims/wkhtmltopdf'
#     # wkhtmltopdf_path = "/usr/local/bin/wkhtmltopdf"
# end

WickedPdf.config = { exe_path: wkhtmltopdf_path, javascript_delay: 2000, wkhtmltopdf: wkhtmltopdf_path }
