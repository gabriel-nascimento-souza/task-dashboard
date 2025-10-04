# Task Dashboard

A modern task management application with real-time database sync and email notifications.

## Features

- Add tasks with user email
- Mark tasks as complete/incomplete  
- Delete tasks with smooth animations
- Real-time Supabase database sync
- Automated email notifications via n8n
- Responsive notebook-style design

## Tech Stack

- **Frontend**: HTML5, CSS3, JavaScript (ES6+)
- **Backend**: Supabase (PostgreSQL)
- **Automation**: n8n workflow
- **Email**: Gmail API / Resend
- **Deployment**: Static hosting (Netlify/Vercel)

## Quick Start

1. Clone the repository
2. Open `index.html` in your browser
3. Start adding tasks!

## Screenshots

![Dashboard](screenshots/html.png)
![Email Notification](screenshots/email.png)
![n8n Workflow](screenshots/ne8on.png)

## Configuration

### Supabase Setup
- Create a Supabase project
- Run the SQL schema in `database/schema.sql`
- Update Supabase credentials in `index.html`

### n8n Automation
- Import the workflow from `automation/n8n-workflow.json`
- Configure email service (Gmail/Resend)
- Set up scheduled triggers

## License

MIT License - feel free to use this project for learning and development!
