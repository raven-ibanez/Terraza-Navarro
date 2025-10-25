import React from 'react';

const Hero: React.FC = () => {
  return (
    <section className="relative bg-gradient-to-br from-terraza-warm via-terraza-beige to-terraza-light py-16 px-4">
      <div className="max-w-4xl mx-auto text-center">
        <div className="mb-6 animate-fade-in">
          <span className="text-6xl">🍴</span>
        </div>
        <h1 className="text-4xl md:text-5xl font-bold text-terraza-dark mb-4 animate-fade-in" style={{ fontFamily: 'system-ui, -apple-system' }}>
          Welcome to <span className="text-terraza-accent">Terraza Navarro</span>
        </h1>
        <p className="text-lg md:text-xl text-terraza-brown mb-8 max-w-2xl mx-auto animate-slide-up font-medium">
          Your favorite snackbar experience is just a tap away! 🎉
        </p>
        <p className="text-base text-terraza-taupe mb-8 max-w-xl mx-auto">
          Fresh, fast, and friendly – exactly how you like it.
        </p>
        <div className="flex justify-center gap-4">
          <a 
            href="#menu"
            className="bg-terraza-accent text-white px-8 py-4 rounded-2xl hover:bg-terraza-brown transition-all duration-300 transform hover:scale-105 font-bold shadow-xl hover:shadow-2xl text-lg flex items-center gap-2"
          >
            <span>View Menu</span>
            <span>👉</span>
          </a>
        </div>
      </div>
    </section>
  );
};

export default Hero;