import React from 'react'

function Aoutlayout({
    children
}: {
    children: React.ReactNode
}) {
  return (
    <div className='flex items-center justify-center h-full'>
        {children}
    </div>
  )
}

export default Aoutlayout
