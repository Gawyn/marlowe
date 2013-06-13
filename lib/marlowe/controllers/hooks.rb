module Marlowe
  module Controllers
    module Hooks
      extend ActiveSupport::Concern

      def self.included(base)
        base.send(:before_filter, :set_first_referer)
        base.send(:before_filter, :set_referer)
      end

      private

      def set_first_referer
        referer = request.env['HTTP_REFERER']
        session['marlowe.first_referer'] = referer
      end
      
      def set_referer
        referer = request.env['HTTP_REFERER']
        session['marlowe.referer'] = referer
      end
    end
  end
end

ActiveSupport.on_load(:action_controller) do
  ApplicationController.send(:include, Marlowe::Controllers::Hooks)
end

