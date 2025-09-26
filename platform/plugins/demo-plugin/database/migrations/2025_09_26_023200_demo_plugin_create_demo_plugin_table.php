<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        if (! Schema::hasTable('demo_plugins')) {
            Schema::create('demo_plugins', function (Blueprint $table) {
                $table->id();
                $table->string('name', 255);
                $table->string('status', 60)->default('published');
                $table->timestamps();
            });
        }

        if (! Schema::hasTable('demo_plugins_translations')) {
            Schema::create('demo_plugins_translations', function (Blueprint $table) {
                $table->string('lang_code');
                $table->foreignId('demo_plugins_id');
                $table->string('name', 255)->nullable();

                $table->primary(['lang_code', 'demo_plugins_id'], 'demo_plugins_translations_primary');
            });
        }
    }

    public function down(): void
    {
        Schema::dropIfExists('demo_plugins');
        Schema::dropIfExists('demo_plugins_translations');
    }
};
