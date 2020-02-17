﻿using System;

namespace nex.types
{
    public class EventArgs<T>: EventArgs
    {
        public T Value { get; }
        public EventArgs(T value)
        {
            Value = value;
        }
    }
}