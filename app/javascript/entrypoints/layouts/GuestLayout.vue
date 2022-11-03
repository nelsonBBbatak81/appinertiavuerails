<script setup>
import { Link } from '@inertiajs/inertia-vue3';
</script>
<template>
  <div>
    <Link href="/">Home</Link> | <Link to="/about">About</Link> |
    <Link href="/login">Login</Link> |
    <Link href="/register">Register</Link>
  </div>
  <div>
    <slot />
  </div>
</template>
