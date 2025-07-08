# Territory Management System

A web application for managing sales territories, accounts, and revenue tracking.

## Features

- User authentication and role-based access control
- Territory-specific data access
- Account management and tracking
- Revenue reporting and analytics
- Real-time data synchronization
- Mobile-responsive interface

## Tech Stack

- **Frontend**: Loveable (AI-powered UI generation)
- **Backend**: Supabase (PostgreSQL database, authentication, real-time)
- **Version Control**: GitHub with CI/CD
- **Deployment**: Loveable + Supabase hosting

## Getting Started

### Prerequisites

- Node.js (v16 or higher)
- npm or yarn
- Supabase account
- GitHub account

### Installation

1. Clone the repository
2. Install dependencies: `npm install`
3. Set up environment variables (see `.env.example`)
4. Run the development server: `npm run dev`

## Development

This project uses:
- Supabase CLI for database management
- GitHub Actions for CI/CD
- Loveable for frontend development
- Row Level Security (RLS) for data access control

## Project Structure

```
/
├── supabase/          # Database schema and migrations
├── .github/           # GitHub Actions workflows
├── docs/              # Documentation
└── README.md          # This file
```

## Contributing

1. Create a feature branch
2. Make your changes
3. Run tests and linting
4. Submit a pull request

## License

[Your License Here]