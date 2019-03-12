class PaymentsController < ApplicationController
  before_action :set_booking

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       1000, #@booking.amount_cents,
      description:  "Payment for teddy #{@booking.therapist_id} for order #{@booking.id}",
      currency:     @booking.amount.currency
    )

    @booking.update(payment: charge.to_json, state: 'Paid')

    redirect_to booking_path(@booking)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_booking_payment_path(@booking)
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end
end
