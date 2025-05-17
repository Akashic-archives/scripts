import pyautogui
import time
import keyboard

time.sleep(15)


def click():
    pyautogui.click()


for i in range(2000000):
    click()
    if keyboard.is_pressed("Space"):
        time.sleep(5)
    if keyboard.is_pressed("esc"):
        break
    if keyboard.is_pressed("q"):
        break

