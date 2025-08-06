#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/logging/log.h>

LOG_MODULE_REGISTER(main);

#define LED_NODE DT_ALIAS(led0)
const struct gpio_dt_spec led = GPIO_DT_SPEC_GET(LED_NODE, gpios);

int main(void)
{
    if (!device_is_ready(led.port)) {
        LOG_ERR("LED GPIO port not ready");
        return 1;
    }

    if (gpio_pin_configure_dt(&led, GPIO_OUTPUT_ACTIVE) < 0) {
        LOG_ERR("Failed to configure LED pin");
        return 1;
    }

    while (1) {
        gpio_pin_toggle_dt(&led);
		LOG_INF("Hello World");
        k_msleep(1000);
    }

    return 0;
}
