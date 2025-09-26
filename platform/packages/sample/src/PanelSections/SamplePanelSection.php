<?php

namespace Botble\Sample\PanelSections;

use Botble\Base\PanelSections\PanelSection;

class SamplePanelSection extends PanelSection
{
    public function setup(): void
    {
        $this
            ->setId('settings.{id}')
            ->setTitle('{title}')
            ->withItems([
                //
            ]);
    }
}
