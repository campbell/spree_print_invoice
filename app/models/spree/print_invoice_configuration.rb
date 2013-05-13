module Spree
  class PrintInvoiceConfiguration < Preferences::Configuration
    preference :print_invoice_logo_path, :string, :default => Spree::Config[:admin_interface_logo]
    preference :print_invoice_logo_scale, :fixnum, :default => 0.35
    preference :print_buttons, :string, :default => 'invoice'
    preference :include_invoice_footer, :boolean, :default => false
		preference :autoprint, :boolean, :default => false
		preference :open_in_window, :string, :default => ''
  end
end
