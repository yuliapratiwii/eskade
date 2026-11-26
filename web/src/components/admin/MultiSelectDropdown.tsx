'use client';

import React, { useState, useRef, useEffect, useMemo } from 'react';
import { ChevronDown, Check, X, Search } from 'lucide-react';

export interface MultiSelectOption {
  value: string;
  label: string;
}

interface MultiSelectDropdownProps {
  label: string;
  options: (string | MultiSelectOption)[];
  selected: string[];
  onChange: (selected: string[]) => void;
  placeholder?: string;
  searchable?: boolean;
}

export const MultiSelectDropdown: React.FC<MultiSelectDropdownProps> = ({
  label,
  options,
  selected,
  onChange,
  placeholder = 'Pilih...',
  searchable = true,
}) => {
  const [isOpen, setIsOpen] = useState(false);
  const [searchTerm, setSearchTerm] = useState('');
  const dropdownRef = useRef<HTMLDivElement>(null);
  const searchInputRef = useRef<HTMLInputElement>(null);

  // Normalize options into { value, label }
  const normalizedOptions: MultiSelectOption[] = useMemo(() => {
    return options.map((opt) => {
      if (typeof opt === 'string') {
        return { value: opt, label: opt };
      }
      return opt;
    });
  }, [options]);

  // Click outside listener
  useEffect(() => {
    const handleClickOutside = (event: MouseEvent) => {
      if (dropdownRef.current && !dropdownRef.current.contains(event.target as Node)) {
        setIsOpen(false);
      }
    };

    if (isOpen) {
      document.addEventListener('mousedown', handleClickOutside);
    }
    return () => {
      document.removeEventListener('mousedown', handleClickOutside);
    };
  }, [isOpen]);

  // Focus search input when opened
  useEffect(() => {
    if (isOpen && searchable) {
      setTimeout(() => {
        searchInputRef.current?.focus();
      }, 50);
    } else {
      setSearchTerm('');
    }
  }, [isOpen, searchable]);

  // Filtered options based on internal search
  const filteredOptions = useMemo(() => {
    if (!searchTerm.trim()) return normalizedOptions;
    const term = searchTerm.toLowerCase();
    return normalizedOptions.filter((opt) => opt.label.toLowerCase().includes(term));
  }, [normalizedOptions, searchTerm]);

  // Toggle single item
  const handleToggleItem = (value: string) => {
    if (selected.includes(value)) {
      onChange(selected.filter((item) => item !== value));
    } else {
      onChange([...selected, value]);
    }
  };

  // Select all visible
  const handleSelectAll = () => {
    const allVisibleValues = filteredOptions.map((o) => o.value);
    const merged = Array.from(new Set([...selected, ...allVisibleValues]));
    onChange(merged);
  };

  // Clear all
  const handleClear = () => {
    onChange([]);
  };

  // Compute trigger label
  const triggerLabel = useMemo(() => {
    if (selected.length === 0) {
      return placeholder || `Semua ${label}`;
    }
    if (selected.length === 1) {
      const match = normalizedOptions.find((o) => o.value === selected[0]);
      return match ? match.label : selected[0];
    }
    return `${selected.length} ${label} Dipilih`;
  }, [selected, normalizedOptions, label, placeholder]);

  return (
    <div className="relative text-xs" ref={dropdownRef}>
      <label className="block text-[10px] font-bold text-slate-400 uppercase tracking-wider mb-1">
        {label}
      </label>

      {/* Trigger Button */}
      <button
        type="button"
        onClick={() => setIsOpen((prev) => !prev)}
        className={`w-full p-2.5 rounded-xl border text-left flex items-center justify-between gap-1.5 transition font-medium ${
          selected.length > 0
            ? 'border-indigo-300 bg-indigo-50/40 text-indigo-900 ring-2 ring-indigo-500/10'
            : 'border-slate-200 bg-white text-slate-700 hover:border-slate-300'
        }`}
      >
        <span className="truncate flex-1">
          {triggerLabel}
        </span>

        <div className="flex items-center gap-1 shrink-0">
          {selected.length > 0 && (
            <span className="w-5 h-5 rounded-full bg-indigo-600 text-white text-[10px] font-bold flex items-center justify-center shrink-0">
              {selected.length}
            </span>
          )}
          <ChevronDown
            className={`w-3.5 h-3.5 text-slate-400 transition-transform duration-200 ${
              isOpen ? 'rotate-180 text-indigo-600' : ''
            }`}
          />
        </div>
      </button>

      {/* Dropdown Menu */}
      {isOpen && (
        <div className="absolute left-0 top-full mt-1.5 w-64 sm:w-72 bg-white rounded-2xl shadow-xl border border-slate-200/90 p-2.5 z-40 animate-in fade-in zoom-in-95 duration-150 space-y-2">
          {/* Internal Search */}
          {searchable && normalizedOptions.length > 4 && (
            <div className="relative">
              <Search className="w-3.5 h-3.5 text-slate-400 absolute left-2.5 top-2.5" />
              <input
                ref={searchInputRef}
                type="text"
                value={searchTerm}
                onChange={(e) => setSearchTerm(e.target.value)}
                placeholder={`Cari ${label.toLowerCase()}...`}
                className="w-full pl-8 pr-3 py-1.5 rounded-lg border border-slate-200 text-xs focus:outline-none focus:border-indigo-600 bg-slate-50/50"
              />
            </div>
          )}

          {/* Quick Action Shortcuts */}
          <div className="flex items-center justify-between px-1 text-[11px] font-semibold text-slate-500 border-b border-slate-100 pb-1.5">
            <button
              type="button"
              onClick={handleSelectAll}
              className="text-indigo-600 hover:text-indigo-700 transition"
            >
              Pilih Semua
            </button>
            {selected.length > 0 && (
              <button
                type="button"
                onClick={handleClear}
                className="text-rose-500 hover:text-rose-600 transition"
              >
                Reset ({selected.length})
              </button>
            )}
          </div>

          {/* Options List */}
          <div className="max-h-52 overflow-y-auto space-y-0.5 divide-y divide-slate-50 pr-0.5">
            {filteredOptions.length === 0 ? (
              <div className="py-4 text-center text-slate-400 text-xs">
                Tidak ada opsi yang sesuai
              </div>
            ) : (
              filteredOptions.map((opt) => {
                const isSelected = selected.includes(opt.value);
                return (
                  <label
                    key={opt.value}
                    className={`flex items-center gap-2.5 px-2.5 py-1.5 rounded-lg cursor-pointer transition select-none ${
                      isSelected
                        ? 'bg-indigo-50/80 text-indigo-900 font-semibold'
                        : 'hover:bg-slate-50 text-slate-700'
                    }`}
                  >
                    <input
                      type="checkbox"
                      checked={isSelected}
                      onChange={() => handleToggleItem(opt.value)}
                      className="sr-only"
                    />
                    <div
                      className={`w-4 h-4 rounded-md border flex items-center justify-center shrink-0 transition ${
                        isSelected
                          ? 'bg-indigo-600 border-indigo-600 text-white'
                          : 'border-slate-300 bg-white'
                      }`}
                    >
                      {isSelected && <Check className="w-3 h-3 stroke-[3]" />}
                    </div>
                    <span className="text-xs truncate">{opt.label}</span>
                  </label>
                );
              })
            )}
          </div>
        </div>
      )}
    </div>
  );
};
