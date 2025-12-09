# Cybersecurity Portfolio - Ghost Theme

Modern, dark-themed Ghost CMS theme designed for cybersecurity professionals and students. Features glassmorphism effects, dark/light mode toggle, and gradient accents.

## ✨ Features

- 🌙 **Dark/Light Mode** - Smooth theme switching with SVG icon toggle
- 🎨 **Modern Design** - Glassmorphism header with backdrop blur
- 🔒 **Cybersecurity Focus** - Dedicated sections for skills, certifications, and projects
- 📱 **Fully Responsive** - Mobile-optimized layouts
- ⚡ **Performance** - Lightweight with no external dependencies


## 📁 File Structure
```
ghost-theme/
├── assets/
│ ├── css/
│ │ └── screen.css # Main stylesheet
│ └── icons/ # SVG/image assets
├── default.hbs # Main layout template
├── home.hbs # Homepage template
├── post.hbs # Blog post template
├── page.hbs # Page template
├── author.hbs # Author archive
├── tag.hbs # Tag archive
└── package.json # Theme metadata
```

## 🎨 Customization

### Colors
Edit CSS variables in `assets/css/screen.css`:

```:root {
--bg-primary: #0a0e1a;
--accent-primary: #10b981; /* Green accent /
--accent-secondary: #3b82f6; / Blue accent */
}
```


### Homepage Sections
Edit `home.hbs` to modify:
- **Hero section**
- **Skills grid**
- **Certifications**
- **Projects showcase**
- **Contact section**

### Skills Section
Update skill categories in the skills grid - supports 4x2 or 4x3 layouts.

## 🔧 Tech Stack

- **Ghost CMS** (v5.0+)
- **Vanilla CSS** - No frameworks, pure CSS with modern features
- **SVG Icons** - Lightweight, scalable icons
- **CSS Variables** - Easy theming
- **Flexbox/Grid** - Modern layouts
