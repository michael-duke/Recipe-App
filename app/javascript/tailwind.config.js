tailwind.config = {
  theme: {
    extend: {
      colors: {
        clifford: '#da373d',
      },
      keyframes: {
        wiggle: {
          '0%, 100%': { transform: 'rotate(-3deg)' },
          '50%': { transform: 'rotate(3deg)' },
        }
      }
    }
  }
}