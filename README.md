SUMMARY
=======

This extension provides a "Print Invoice" button on the Admin Orders view screen which generates a PDF of the order details.

 
INSTALLATION
============

1. The gem relies on the prawn and prawn-js gems. To install you need to add the following lines to your Gemfile

    gem 'spree_print_invoice' , :git => 'git://github.com/spree/spree_print_invoice.git'

2. run bundler

    bundle install
  
3. Enjoy! now displays the items variant options 

Configuration
==============

Configuration should be set within an initializer, eg initializers/spree-print-invoice.rb

1. Set the logo path preference to include your store / company logo.

    Spree::PrintInvoice::Config.set(:print_invoice_logo_path => "/path/to/public/images/company-logo.png")  # eg public/assets/images/company-logo.png

Optional: You can specify the scaling factor for the logo (default is 0.35):

    Spree::PrintInvoice::Config.set(:print_invoice_logo_scale => 0.12)

2. Add your own own footer texts to the locale. The current footer works with :footer_left1 , :footer_left2 and :footer_right1, :footer_right2 where the 1 version is on the left in bold, and the 2 version the "value" on the right.

Footers are disabled by default. To enable them, add

    Spree::PrintInvoice::Config.set(:include_invoice_footer => true)

3. Override any of the partial templates. they are address, footer, totals, header, bye , and the line_items. In bye the text :thanks is printed.  The :extra_note hook has been deprecated as Spree no longer supports hooks.

4. Set :suppress_anonymous_address option to get blank addresses for anonymous email addresses (as created by my spree_last_address extension for empty/unknown user info)

5. Enable packaging slips, by setting 

  Spree::PrintInvoice::Config.set(:print_buttons => "invoice,packaging_slip")  #comma separated list

 Use above feature for your own template if you want. For each button_name, define button_name_print text in your locale.

6. Autoprint Invoices -automatically open the print dialog for the invoices

  Spree::PrintInvoice::Config.set(:open_in_window, '_blank')  # or other window name

Plans
=====
Next receipts and then product related stuff with barcodes.


Contributions welcome

Torsten
