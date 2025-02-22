import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'http://localhost:54321'; // This is the local Supabase instance
const supabaseAnonKey = 'YOUR_ANON_KEY'; // Replace with the actual anon key

const supabase = createClient(supabaseUrl, supabaseAnonKey);

export default supabase;