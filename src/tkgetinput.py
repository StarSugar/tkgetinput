from tkinter import *
from typing import List

def getinput(requirements: List[str], title: str ="tkgetinput") -> list:
    """
    Throw a window, get the requirements and return them.
    """
    win = Tk()
    win.title(title)
    win.resizable(True,True)
    def create_requirement(idx, req):
        label = Label(win,text=f"{req}: ")
        strvar = StringVar()
        entry = Entry(win,textvariable=strvar)
        label.grid(row=idx)
        entry.grid(row=idx,column=1)
        return strvar
    def make_counter():
        i = 0
        while True:
            yield i
            i += 1
    requirements = list(map(create_requirement, make_counter(), requirements))
    def finish():
        win.quit()
    ok = Button(win,text="ok",command=finish)
    ok.grid(row=len(requirements))
    win.mainloop()
    return list(map(lambda x: x.get(), requirements))
