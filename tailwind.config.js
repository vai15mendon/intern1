/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        'purple-gradient': {
          'start': '#8B5CF6',
          'middle': '#A855F7',
          'end': '#EC4899'
        }
      },
      animation: {
        'float': 'float 6s ease-in-out infinite',
        'pulse-glow': 'pulse-glow 2s ease-in-out infinite alternate',
        'spin-slow': 'spin 8s linear infinite',
        'bounce-slow': 'bounce 3s infinite',
        'fade-in': 'fadeIn 0.8s ease-out',
        'slide-up': 'slideUp 0.8s ease-out',
        'orbit': 'orbit 10s linear infinite',
        'glow': 'glow 2s ease-in-out infinite alternate',
        'draw-line': 'drawLine 2s ease-in-out',
        'scale-pulse': 'scalePulse 3s ease-in-out infinite',
      },
      keyframes: {
        float: {
          '0%, 100%': { transform: 'translateY(0px)' },
          '50%': { transform: 'translateY(-20px)' }
        },
        'pulse-glow': {
          '0%': { boxShadow: '0 0 20px rgba(139, 92, 246, 0.5)' },
          '100%': { boxShadow: '0 0 40px rgba(139, 92, 246, 1)' }
        },
        fadeIn: {
          '0%': { opacity: '0', transform: 'translateY(20px)' },
          '100%': { opacity: '1', transform: 'translateY(0)' }
        },
        slideUp: {
          '0%': { opacity: '0', transform: 'translateY(50px)' },
          '100%': { opacity: '1', transform: 'translateY(0)' }
        },
        orbit: {
          '0%': { transform: 'rotate(0deg) translateX(100px) rotate(0deg)' },
          '100%': { transform: 'rotate(360deg) translateX(100px) rotate(-360deg)' }
        },
        glow: {
          '0%': { filter: 'brightness(1) drop-shadow(0 0 10px rgba(139, 92, 246, 0.5))' },
          '100%': { filter: 'brightness(1.2) drop-shadow(0 0 20px rgba(139, 92, 246, 1))' }
        },
        drawLine: {
          '0%': { strokeDashoffset: '1000' },
          '100%': { strokeDashoffset: '0' }
        },
        scalePulse: {
          '0%, 100%': { transform: 'scale(1)' },
          '50%': { transform: 'scale(1.1)' }
        }
      }
    },
  },
  plugins: [],
}