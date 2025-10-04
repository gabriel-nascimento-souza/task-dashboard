-- Task Dashboard Database Schema
-- Creates the necessary tables and security policies for the task management system

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- Drop existing tables if they exist
DROP TABLE IF EXISTS public.users CASCADE;
DROP TABLE IF EXISTS public.tasks CASCADE;

-- Users table to store user information
CREATE TABLE public.users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT,
  email TEXT NOT NULL UNIQUE,
  created_at TIMESTAMP DEFAULT NOW()
);

-- Tasks table to store user tasks
CREATE TABLE public.tasks (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title TEXT NOT NULL,
  done BOOLEAN DEFAULT FALSE,
  email TEXT,
  user_id UUID REFERENCES public.users(id) ON DELETE CASCADE,
  created_at TIMESTAMP DEFAULT NOW()
);

-- Enable Row Level Security
ALTER TABLE public.users ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.tasks ENABLE ROW LEVEL SECURITY;

-- Security policies for users table
CREATE POLICY "allow_select_all_users" ON public.users
  FOR SELECT USING (true);
CREATE POLICY "allow_insert_all_users" ON public.users
  FOR INSERT WITH CHECK (true);

-- Security policies for tasks table  
CREATE POLICY "allow_select_all_tasks" ON public.tasks
  FOR SELECT USING (true);
CREATE POLICY "allow_insert_all_tasks" ON public.tasks
  FOR INSERT WITH CHECK (true);
CREATE POLICY "allow_update_all_tasks" ON public.tasks
  FOR UPDATE USING (true);

-- Verification query
SELECT 'Database structure created successfully' AS status;
