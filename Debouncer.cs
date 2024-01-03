using System;
using System.Threading;

class Debouncer
{
    private Timer timer;
    private int delay;
    private Action action;

    public Debouncer(int delay)
    {
        this.delay = delay;
        timer = new Timer(Execute, null, Timeout.Infinite, Timeout.Infinite);
    }

    public void Debounce(Action action)
    {
        this.action = action;
        timer.Change(delay, Timeout.Infinite);
    }

    private void Execute(object state)
    {
        action();
    }
}