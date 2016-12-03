# WickedPdf.config = {
#   exe_path: '/Users/p.mahidharreddy/.rbenv/shims/wkhtmltopdf'
# }

if Rails.env.production?
    wkhtmltopdf_path = '/home/deploy/production/echoworks/shared/bundle/ruby/2.3.0/gems/wkhtmltopdf-binary-0.12.3.1/bin/wkhtmltopdf_linux_amd64'
    # wkhtmltopdf_path = Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s
else
    wkhtmltopdf_path = '/usr/local/bin/wkhtmltopdf'
    # wkhtmltopdf_path = "/usr/local/bin/wkhtmltopdf"
end

WickedPdf.config = { exe_path: wkhtmltopdf_path, javascript_delay: 2000 }
