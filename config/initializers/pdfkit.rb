PDFKit.configure do |config|
  config.wkhtmltopdf = "/usr/local/bin/wkhtmltopdf"
  config.default_options = {
    print_media_type: true,
    page_size: "A4"
  }
end