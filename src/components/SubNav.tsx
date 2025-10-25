import React from 'react';
import { useCategories } from '../hooks/useCategories';

interface SubNavProps {
  selectedCategory: string;
  onCategoryClick: (categoryId: string) => void;
}

const SubNav: React.FC<SubNavProps> = ({ selectedCategory, onCategoryClick }) => {
  const { categories, loading } = useCategories();

  return (
    <div className="sticky top-16 z-40 bg-white/90 backdrop-blur-md border-b border-terraza-subtle">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center space-x-4 overflow-x-auto py-3 scrollbar-hide">
          {loading ? (
            <div className="flex space-x-4">
              {[1,2,3,4,5].map(i => (
                <div key={i} className="h-8 w-20 bg-terraza-subtle rounded animate-pulse" />
              ))}
            </div>
          ) : (
            <>
              <button
                onClick={() => onCategoryClick('all')}
                className={`px-3 py-1.5 rounded-full text-sm transition-colors duration-200 border ${
                  selectedCategory === 'all'
                    ? 'bg-terraza-accent text-white border-terraza-accent'
                    : 'bg-white text-terraza-taupe border-terraza-subtle hover:border-terraza-accent hover:text-terraza-dark'
                }`}
              >
                All
              </button>
              {categories.map((c) => (
                <button
                  key={c.id}
                  onClick={() => onCategoryClick(c.id)}
                  className={`px-3 py-1.5 rounded-full text-sm transition-colors duration-200 border flex items-center space-x-1 ${
                    selectedCategory === c.id
                      ? 'bg-terraza-accent text-white border-terraza-accent'
                      : 'bg-white text-terraza-taupe border-terraza-subtle hover:border-terraza-accent hover:text-terraza-dark'
                  }`}
                >
                  <span>{c.icon}</span>
                  <span>{c.name}</span>
                </button>
              ))}
            </>
          )}
        </div>
      </div>
    </div>
  );
};

export default SubNav;


