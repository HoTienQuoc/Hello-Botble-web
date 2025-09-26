<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        if (! Schema::hasTable('samples')) {
            Schema::create('samples', function (Blueprint $table) {
                $table->id();
                $table->string('name', 255);
                $table->string('status', 60)->default('published');
                $table->timestamps();
            });
        }

        if (! Schema::hasTable('samples_translations')) {
            Schema::create('samples_translations', function (Blueprint $table) {
                $table->string('lang_code');
                $table->foreignId('samples_id');
                $table->string('name', 255)->nullable();

                $table->primary(['lang_code', 'samples_id'], 'samples_translations_primary');
            });
        }
    }

    public function down(): void
    {
        Schema::dropIfExists('samples');
        Schema::dropIfExists('samples_translations');
    }
};
