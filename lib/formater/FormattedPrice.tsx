import React from 'react'

interface Props{
    amount:number
}

export const FormattedPrice = ({ amount }: Props) => {
    const formattedAmount = new Number(amount).toLocaleString("fr-FR", {
        style:"currency",
        currency: "EUR",
        minimumFractionDigits:2
    })
  return (
      <span>{formattedAmount}</span>
  )
}
