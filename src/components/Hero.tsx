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
        <p className="text-lg md:text-xl text-terraza-brown mb-6 max-w-2xl mx-auto animate-slide-up font-medium">
          🍃🍃 Where flavors meet the open air!
        </p>
        
        {/* Business Information */}
        <div className="bg-white/80 backdrop-blur-sm rounded-2xl p-6 mb-8 max-w-2xl mx-auto shadow-lg">
          <div className="space-y-3 text-terraza-dark">
            <div className="flex items-center justify-center gap-2">
              <span className="text-xl">☀️</span>
              <span className="font-medium">Mon-Sat: 10am to 10pm | Sun: 1pm to 10pm</span>
            </div>
            <div className="flex items-center justify-center gap-2">
              <span className="text-xl">📍</span>
              <span className="font-medium">Puentebella, Taculing, Bacolod City</span>
            </div>
            <div className="flex items-center justify-center gap-2">
              <span className="text-xl">🛵</span>
              <span className="font-medium">Delivery via Maxim</span>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Hero;