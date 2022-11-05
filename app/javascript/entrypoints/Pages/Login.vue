<script setup>
import GuestLayout from '../layouts/GuestLayout.vue';
import { reactive } from 'vue';
import { Inertia } from '@inertiajs/inertia';

const form = reactive({
  email: null,
  password: null,
});

const submit = () => {
  Inertia.post('/users', form);
};
</script>
<template>
  <GuestLayout>
    <div class="mx-auto w-full max-w-[550px]">
      <h1 class="text-2xl font-bold text-center mb-10">Please Sign In</h1>
      <form @submit.prevent="submit">
        <div class="mb-5">
          <label
            for="email"
            class="mb-3 block text-base font-medium text-[#07074D]"
          >
            Email Address
          </label>
          <input
            type="email"
            v-model="form.email"
            placeholder="example@domain.com"
            class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-base font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
          />
        </div>
        <div class="mb-5">
          <label
            for="subject"
            class="mb-3 block text-base font-medium text-[#07074D]"
          >
            Password
          </label>
          <input
            type="password"
            v-model="form.password"
            placeholder="Enter your subject"
            class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-base font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
          />
        </div>
        <div>
          <button
            class="hover:shadow-form w-full rounded-md bg-[#6A64F1] py-3 px-8 text-base font-semibold text-white outline-none"
          >
            Submit
          </button>
        </div>
      </form>
    </div>
  </GuestLayout>
</template>
